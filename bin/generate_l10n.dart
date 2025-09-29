// ignore_for_file: avoid_print

import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

void main() async {
  const key = 'wc4SaiQY5-zGdlEuH6CioBR8CQBMtW0u';

  // Download & extract from loco
  final url = Uri.parse(
    'https://localise.biz/api/export/archive/arb.zip?key=$key&fallback=en',
  );
  const downloadPath = 'translated.zip';
  const outputPath = 'loco';
  final response = await http.get(url);
  await File(downloadPath).writeAsBytes(response.bodyBytes);
  await extractFileToDisk(downloadPath, outputPath);

  const localizationDir = 'lib/src/localization';
  final extractedDir = Directory('$outputPath/aifarma-arb-archive/l10n');

  // List files from extracted archive
  final files = extractedDir.listSync();

  // Move files into app localization
  for (final fileEntity in files) {
    if (fileEntity is File) {
      final filename = p.context
          .basename(fileEntity.path)
          .replaceAll('intl_messages', 'app');
      final destination = File('$localizationDir/$filename');

      print('Moving file ${fileEntity.path} to ${destination.path}');
      fileEntity.renameSync(destination.path);

      var lines = destination.readAsLinesSync();
      lines = lines.where((line) => !line.contains('@@locale')).toList();
      destination.writeAsStringSync('${lines.join('\n')}\n', flush: true);

      var baseFilePath = destination.path.replaceAll(RegExp(r'-\w\w'), '');
      print('Creating base file at $baseFilePath');
      final baseFile = File(baseFilePath);
      baseFile.writeAsStringSync('${lines.join('\n')}\n', flush: true);
    }
  }

  // Generate localizations
  final result = Process.runSync('flutter', ['gen-l10n'], runInShell: true);
  if (result.exitCode != 0) {
    print(
      'Error running flutter gen-l10n. Please run manually for more info',
    );
  }

  // Cleanup
  Directory(outputPath).deleteSync(recursive: true);
  File(downloadPath).deleteSync();
}

// ignore: unused_element
List<String> _patchPlaceholderTypes(List<String> lines) {
  for (var i = 0; i < lines.length; i++) {
    if (lines[i].contains('"type": "string"')) {
      lines[i] = lines[i].replaceAll('string', 'String');
    }
  }
  return lines;
}