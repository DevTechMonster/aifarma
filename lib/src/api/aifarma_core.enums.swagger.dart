// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum ConfigurationChunkingDtoChunkingMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('hierarchy_depth')
  hierarchyDepth('hierarchy_depth'),
  @JsonValue('hierarchy_heading')
  hierarchyHeading('hierarchy_heading'),
  @JsonValue('static_length')
  staticLength('static_length'),
  @JsonValue('page_level')
  pageLevel('page_level');

  final String? value;

  const ConfigurationChunkingDtoChunkingMode(this.value);
}

enum ConfigurationParsingDtoFigureCaptionMode {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('default')
  $default('default'),
  @JsonValue('custom')
  custom('custom'),
  @JsonValue('ignore')
  ignore('ignore');

  final String? value;

  const ConfigurationParsingDtoFigureCaptionMode(this.value);
}

enum DocumentFilterQueryOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('equals')
  equals('equals'),
  @JsonValue('not_equals')
  notEquals('not_equals'),
  @JsonValue('contains')
  contains('contains'),
  @JsonValue('not_contains')
  notContains('not_contains');

  final String? value;

  const DocumentFilterQueryOperator(this.value);
}

enum DocumentMetadataHierarchyBlockDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('heading')
  heading('heading'),
  @JsonValue('text')
  text('text'),
  @JsonValue('table')
  table('table'),
  @JsonValue('figure')
  figure('figure');

  final String? value;

  const DocumentMetadataHierarchyBlockDtoType(this.value);
}

enum DocumentMetadataHierarchyBlockDtoConfidenceLevel {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('low')
  low('low'),
  @JsonValue('medium')
  medium('medium'),
  @JsonValue('high')
  high('high');

  final String? value;

  const DocumentMetadataHierarchyBlockDtoConfidenceLevel(this.value);
}

enum DocumentsFiltersQueryOperator {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('AND')
  and('AND'),
  @JsonValue('OR')
  or('OR');

  final String? value;

  const DocumentsFiltersQueryOperator(this.value);
}

enum JobDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('pending')
  pending('pending'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('retrying')
  retrying('retrying'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled');

  final String? value;

  const JobDtoStatus(this.value);
}

enum MessageDtoRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('user')
  user('user'),
  @JsonValue('system')
  system('system'),
  @JsonValue('assistant')
  assistant('assistant'),
  @JsonValue('knowledge')
  knowledge('knowledge');

  final String? value;

  const MessageDtoRole(this.value);
}

enum MessageQueryRole {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('user')
  user('user'),
  @JsonValue('assistant')
  assistant('assistant');

  final String? value;

  const MessageQueryRole(this.value);
}

enum PageBlockDtoType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('heading')
  heading('heading'),
  @JsonValue('text')
  text('text'),
  @JsonValue('table')
  table('table'),
  @JsonValue('figure')
  figure('figure');

  final String? value;

  const PageBlockDtoType(this.value);
}

enum PageBlockDtoConfidenceLevel {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('low')
  low('low'),
  @JsonValue('medium')
  medium('medium'),
  @JsonValue('high')
  high('high');

  final String? value;

  const PageBlockDtoConfidenceLevel(this.value);
}

enum ParseJobResultsResponseDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('pending')
  pending('pending'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('retrying')
  retrying('retrying'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled');

  final String? value;

  const ParseJobResultsResponseDtoStatus(this.value);
}

enum ParseJobStatusResponseDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('pending')
  pending('pending'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('retrying')
  retrying('retrying'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled');

  final String? value;

  const ParseJobStatusResponseDtoStatus(this.value);
}

enum ResponseStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('success')
  success('success'),
  @JsonValue('error')
  error('error'),
  @JsonValue('warning')
  warning('warning');

  final String? value;

  const ResponseStatus(this.value);
}

enum RetrievalContentDtoFormat {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('pdf')
  pdf('pdf'),
  @JsonValue('html')
  html('html'),
  @JsonValue('htm')
  htm('htm'),
  @JsonValue('mhtml')
  mhtml('mhtml'),
  @JsonValue('doc')
  doc('doc'),
  @JsonValue('docx')
  docx('docx'),
  @JsonValue('ppt')
  ppt('ppt'),
  @JsonValue('pptx')
  pptx('pptx');

  final String? value;

  const RetrievalContentDtoFormat(this.value);
}

enum SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('pending')
  pending('pending'),
  @JsonValue('processing')
  processing('processing'),
  @JsonValue('retrying')
  retrying('retrying'),
  @JsonValue('completed')
  completed('completed'),
  @JsonValue('failed')
  failed('failed'),
  @JsonValue('cancelled')
  cancelled('cancelled');

  final String? value;

  const SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus(
    this.value,
  );
}
