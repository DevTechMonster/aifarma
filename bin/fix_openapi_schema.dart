// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

void main() {
  final swaggerFolder = Directory('lib/src/api/swagger');

  if (!swaggerFolder.existsSync()) {
    print('Swagger folder not found: ${swaggerFolder.path}');
    exit(1);
  }

  // Find all .json files in the swagger folder
  final jsonFiles = swaggerFolder
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.json'))
      .toList();

  if (jsonFiles.isEmpty) {
    print('No JSON files found in ${swaggerFolder.path}');
    exit(1);
  }

  print('Found ${jsonFiles.length} JSON file(s) to process');

  int totalFixCount = 0;
  for (final schemaFile in jsonFiles) {
    print('\nProcessing: ${schemaFile.path}');

    try {
      final content = schemaFile.readAsStringSync();
      final schema = jsonDecode(content) as Map<String, dynamic>;

      final fixCount = _fixAnyOfInMap(schema);
      totalFixCount += fixCount;

      if (fixCount > 0) {
        print('Fixed $fixCount anyOf patterns');
        final encoder = JsonEncoder.withIndent('    ');
        schemaFile.writeAsStringSync(encoder.convert(schema));
        print('Updated: ${schemaFile.path}');
      } else {
        print('No fixes needed');
      }
    } catch (e) {
      print('Error processing ${schemaFile.path}: $e');
      exit(1);
    }
  }

  print('\n✓ Completed! Fixed $totalFixCount anyOf patterns across ${jsonFiles.length} file(s)');
}

int _fixAnyOfInMap(dynamic obj) {
  int count = 0;

  if (obj is Map<String, dynamic>) {
    final keys = obj.keys.toList();
    for (var key in keys) {
      if (key == 'anyOf' && obj[key] is List) {
        final anyOf = obj[key] as List;

        // Check if this is a nullable array pattern
        if (_isNullableArray(anyOf)) {
          final arrayDef = anyOf.firstWhere(
            (item) => item is Map && item['type'] == 'array',
          ) as Map<String, dynamic>;

          // Replace anyOf with direct array type
          obj.remove('anyOf');
          obj['type'] = 'array';
          if (arrayDef.containsKey('items')) {
            obj['items'] = arrayDef['items'];
          }
          count++;
        }
        // Check if this is a nullable string/number/etc pattern
        else if (_isNullableSimpleType(anyOf)) {
          final typeDef = anyOf.firstWhere(
            (item) => item is Map && item['type'] != 'null',
          ) as Map<String, dynamic>;

          // Replace anyOf with direct type
          obj.remove('anyOf');
          obj['type'] = typeDef['type'];
          // Copy over any other properties
          typeDef.forEach((k, v) {
            if (k != 'type') {
              obj[k] = v;
            }
          });
          count++;
        }
      } else {
        count += _fixAnyOfInMap(obj[key]);
      }
    }
  } else if (obj is List) {
    for (var item in obj) {
      count += _fixAnyOfInMap(item);
    }
  }

  return count;
}

bool _isNullableArray(List anyOf) {
  if (anyOf.length != 2) return false;

  final hasArray = anyOf.any((item) =>
    item is Map<String, dynamic> && item['type'] == 'array',
  );
  final hasNull = anyOf.any((item) =>
    item is Map<String, dynamic> && item['type'] == 'null',
  );

  return hasArray && hasNull;
}

bool _isNullableSimpleType(List anyOf) {
  if (anyOf.length != 2) return false;

  final hasType = anyOf.any((item) =>
    item is Map<String, dynamic> &&
    item['type'] != null &&
    item['type'] != 'null' &&
    item['type'] != 'array' &&
    item['type'] != 'object',
  );
  final hasNull = anyOf.any((item) =>
    item is Map<String, dynamic> && item['type'] == 'null',
  );

  return hasType && hasNull;
}
