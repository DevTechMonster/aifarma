// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreamMetadata _$StreamMetadataFromJson(Map<String, dynamic> json) =>
    _StreamMetadata(
      conversationId: json['conversation_id'] as String,
      requestId: json['request_id'] as String,
      messageId: json['message_id'] as String,
    );

Map<String, dynamic> _$StreamMetadataToJson(_StreamMetadata instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversationId,
      'request_id': instance.requestId,
      'message_id': instance.messageId,
    };

_RetrievalContent _$RetrievalContentFromJson(Map<String, dynamic> json) =>
    _RetrievalContent(
      customMetadata: json['custom_metadata'],
      customMetadataConfig: json['custom_metadata_config'],
      number: (json['number'] as num).toInt(),
      type: json['type'] as String,
      format: json['format'] as String,
      contentId: json['content_id'] as String,
      datastoreId: json['datastore_id'] as String,
      docId: json['doc_id'] as String,
      docName: json['doc_name'] as String,
      page: (json['page'] as num).toInt(),
      contentText: json['content_text'] as String?,
      url: json['url'] as String?,
      ctxlMetadata: CtxlMetadata.fromJson(
        json['ctxl_metadata'] as Map<String, dynamic>,
      ),
      score: (json['score'] as num).toDouble(),
    );

Map<String, dynamic> _$RetrievalContentToJson(_RetrievalContent instance) =>
    <String, dynamic>{
      'custom_metadata': instance.customMetadata,
      'custom_metadata_config': instance.customMetadataConfig,
      'number': instance.number,
      'type': instance.type,
      'format': instance.format,
      'content_id': instance.contentId,
      'datastore_id': instance.datastoreId,
      'doc_id': instance.docId,
      'doc_name': instance.docName,
      'page': instance.page,
      'content_text': instance.contentText,
      'url': instance.url,
      'ctxl_metadata': instance.ctxlMetadata,
      'score': instance.score,
    };

_CtxlMetadata _$CtxlMetadataFromJson(Map<String, dynamic> json) =>
    _CtxlMetadata(
      documentTitle: json['document_title'] as String,
      sectionTitle: json['section_title'] as String,
      isFigure: json['is_figure'] as bool,
      fileName: json['file_name'] as String,
      chunkSize: (json['chunk_size'] as num).toInt(),
      fileFormat: json['file_format'] as String,
      page: (json['page'] as num).toInt(),
      chunkId: json['chunk_id'] as String,
      dateCreated: json['date_created'] as String,
      sectionId: json['section_id'] as String?,
    );

Map<String, dynamic> _$CtxlMetadataToJson(_CtxlMetadata instance) =>
    <String, dynamic>{
      'document_title': instance.documentTitle,
      'section_title': instance.sectionTitle,
      'is_figure': instance.isFigure,
      'file_name': instance.fileName,
      'chunk_size': instance.chunkSize,
      'file_format': instance.fileFormat,
      'page': instance.page,
      'chunk_id': instance.chunkId,
      'date_created': instance.dateCreated,
      'section_id': instance.sectionId,
    };

_StreamRetrievals _$StreamRetrievalsFromJson(Map<String, dynamic> json) =>
    _StreamRetrievals(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => RetrievalContent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StreamRetrievalsToJson(_StreamRetrievals instance) =>
    <String, dynamic>{'contents': instance.contents};

_Attribution _$AttributionFromJson(Map<String, dynamic> json) => _Attribution(
  startIdx: (json['start_idx'] as num).toInt(),
  endIdx: (json['end_idx'] as num).toInt(),
  contentIds: (json['content_ids'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$AttributionToJson(_Attribution instance) =>
    <String, dynamic>{
      'start_idx': instance.startIdx,
      'end_idx': instance.endIdx,
      'content_ids': instance.contentIds,
    };

_StreamAttributions _$StreamAttributionsFromJson(Map<String, dynamic> json) =>
    _StreamAttributions(
      attributions: (json['attributions'] as List<dynamic>)
          .map((e) => Attribution.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StreamAttributionsToJson(_StreamAttributions instance) =>
    <String, dynamic>{'attributions': instance.attributions};

_StreamMessageComplete _$StreamMessageCompleteFromJson(
  Map<String, dynamic> json,
) => _StreamMessageComplete(finalMessage: json['final_message'] as String);

Map<String, dynamic> _$StreamMessageCompleteToJson(
  _StreamMessageComplete instance,
) => <String, dynamic>{'final_message': instance.finalMessage};

_StreamMessageDelta _$StreamMessageDeltaFromJson(Map<String, dynamic> json) =>
    _StreamMessageDelta(delta: json['delta'] as String);

Map<String, dynamic> _$StreamMessageDeltaToJson(_StreamMessageDelta instance) =>
    <String, dynamic>{'delta': instance.delta};

_SseEvent _$SseEventFromJson(Map<String, dynamic> json) => _SseEvent(
  event: json['event'] as String,
  data: json['data'] as Map<String, dynamic>,
);

Map<String, dynamic> _$SseEventToJson(_SseEvent instance) => <String, dynamic>{
  'event': instance.event,
  'data': instance.data,
};
