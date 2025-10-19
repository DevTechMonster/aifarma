// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

void main() {
  final schemaFile = File('lib/src/api/swagger/aifarma_core.json');

  if (!schemaFile.existsSync()) {
    print('Schema file not found: ${schemaFile.path}');
    exit(1);
  }

  print('Reading OpenAPI schema...');
  final content = schemaFile.readAsStringSync();
  final schema = jsonDecode(content) as Map<String, dynamic>;

  print('Fixing anyOf patterns...');
  int fixCount = 0;
  fixCount += _fixAnyOfInMap(schema);

  print('Fixed $fixCount anyOf patterns');

  print('Writing updated schema...');
  final encoder = JsonEncoder.withIndent('    ');
  schemaFile.writeAsStringSync(encoder.convert(schema));

  print('Schema fixed successfully!');
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
