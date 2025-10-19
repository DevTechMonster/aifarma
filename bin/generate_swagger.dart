// ignore_for_file: avoid_print

import 'dart:io';

void main() {
  // Step 1: Fix OpenAPI schema
  print('Fixing OpenAPI schema...');
  final fixResult = Process.runSync(
    'dart',
    ['run', 'bin/fix_openapi_schema.dart'],
    runInShell: true,
  );

  print(fixResult.stdout);
  if (fixResult.stderr.toString().isNotEmpty) {
    print(fixResult.stderr);
  }

  if (fixResult.exitCode != 0) {
    print('Failed to fix OpenAPI schema');
    exit(fixResult.exitCode);
  }

  // Step 2: Clean old generated files
  final apiFolder = Directory('lib/src/api');

  final files = apiFolder.listSync()..sort((a, b) => a.path.compareTo(b.path));

  for (var file in files) {
    if (file.path.contains(RegExp(r'\.swagger\.?[a-zA-Z]*\.dart$'))) {
      print('Deleting ${file.path}');
      file.deleteSync();
    }
  }

  // Step 3: Run build_runner
  print('Running build_runner...');
  final result = Process.runSync(
    'dart',
    [
      'run',
      'build_runner',
      'build',
      '--delete-conflicting-outputs',
    ],
    runInShell: true,
  );

  print(result.stdout);
  if (result.stderr.toString().isNotEmpty) {
    print(result.stderr);
  }

  exit(result.exitCode);
}
