// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aifarma_core.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentDto _$AgentDtoFromJson(Map<String, dynamic> json) => AgentDto(
      id: json['id'] as String,
      description: json['description'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$AgentDtoToJson(AgentDto instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'name': instance.name,
    };

AgentMetadataDto _$AgentMetadataDtoFromJson(Map<String, dynamic> json) =>
    AgentMetadataDto(
      datastoreIds: (json['datastore_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      name: json['name'] as String,
      templateName: json['template_name'] as String,
      agentConfigs: json['agent_configs'],
      agentUsages: json['agent_usages'] == null
          ? null
          : AgentUsagesDto.fromJson(
              json['agent_usages'] as Map<String, dynamic>),
      description: json['description'] as String?,
      filterPrompt: json['filter_prompt'] as String?,
      llmModelId: json['llm_model_id'] as String?,
      multiturnSystemPrompt: json['multiturn_system_prompt'] as String?,
      noRetrievalSystemPrompt: json['no_retrieval_system_prompt'] as String?,
      suggestedQueries: (json['suggested_queries'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      systemPrompt: json['system_prompt'] as String?,
    );

Map<String, dynamic> _$AgentMetadataDtoToJson(AgentMetadataDto instance) =>
    <String, dynamic>{
      'datastore_ids': instance.datastoreIds,
      'name': instance.name,
      'template_name': instance.templateName,
      'agent_configs': instance.agentConfigs,
      'agent_usages': instance.agentUsages?.toJson(),
      'description': instance.description,
      'filter_prompt': instance.filterPrompt,
      'llm_model_id': instance.llmModelId,
      'multiturn_system_prompt': instance.multiturnSystemPrompt,
      'no_retrieval_system_prompt': instance.noRetrievalSystemPrompt,
      'suggested_queries': instance.suggestedQueries,
      'system_prompt': instance.systemPrompt,
    };

AgentUsagesDto _$AgentUsagesDtoFromJson(Map<String, dynamic> json) =>
    AgentUsagesDto(
      eval: (json['eval'] as num).toInt(),
      query: (json['query'] as num).toInt(),
      tune: (json['tune'] as num).toInt(),
    );

Map<String, dynamic> _$AgentUsagesDtoToJson(AgentUsagesDto instance) =>
    <String, dynamic>{
      'eval': instance.eval,
      'query': instance.query,
      'tune': instance.tune,
    };

AttributionDto _$AttributionDtoFromJson(Map<String, dynamic> json) =>
    AttributionDto(
      contentIds: (json['content_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      endIdx: (json['end_idx'] as num).toInt(),
      startIdx: (json['start_idx'] as num).toInt(),
    );

Map<String, dynamic> _$AttributionDtoToJson(AttributionDto instance) =>
    <String, dynamic>{
      'content_ids': instance.contentIds,
      'end_idx': instance.endIdx,
      'start_idx': instance.startIdx,
    };

AutoTopUpRequest _$AutoTopUpRequestFromJson(Map<String, dynamic> json) =>
    AutoTopUpRequest(
      amount: (json['amount'] as num).toDouble(),
      balanceThreshold: (json['balance_threshold'] as num).toDouble(),
    );

Map<String, dynamic> _$AutoTopUpRequestToJson(AutoTopUpRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'balance_threshold': instance.balanceThreshold,
    };

AutoTopUpResponseDto _$AutoTopUpResponseDtoFromJson(
        Map<String, dynamic> json) =>
    AutoTopUpResponseDto(
      autoTopUp: json['auto_top_up'],
    );

Map<String, dynamic> _$AutoTopUpResponseDtoToJson(
        AutoTopUpResponseDto instance) =>
    <String, dynamic>{
      'auto_top_up': instance.autoTopUp,
    };

AutoTopUpStatusResponseDto _$AutoTopUpStatusResponseDtoFromJson(
        Map<String, dynamic> json) =>
    AutoTopUpStatusResponseDto(
      status: json['status'],
    );

Map<String, dynamic> _$AutoTopUpStatusResponseDtoToJson(
        AutoTopUpStatusResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

BalanceResponseDto _$BalanceResponseDtoFromJson(Map<String, dynamic> json) =>
    BalanceResponseDto(
      balance: json['balance'],
    );

Map<String, dynamic> _$BalanceResponseDtoToJson(BalanceResponseDto instance) =>
    <String, dynamic>{
      'balance': instance.balance,
    };

BillingMetadataResponseDto _$BillingMetadataResponseDtoFromJson(
        Map<String, dynamic> json) =>
    BillingMetadataResponseDto(
      metadata: json['metadata'],
    );

Map<String, dynamic> _$BillingMetadataResponseDtoToJson(
        BillingMetadataResponseDto instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
    };

BillingModeHistoryResponseDto _$BillingModeHistoryResponseDtoFromJson(
        Map<String, dynamic> json) =>
    BillingModeHistoryResponseDto(
      history: json['history'],
    );

Map<String, dynamic> _$BillingModeHistoryResponseDtoToJson(
        BillingModeHistoryResponseDto instance) =>
    <String, dynamic>{
      'history': instance.history,
    };

BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost
    _$BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPostFromJson(
            Map<String, dynamic> json) =>
        BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost(
          rawFile: json['raw_file'] as String,
          docName: json['doc_name'] as String?,
          metadata: json['metadata'] as String?,
        );

Map<String, dynamic>
    _$BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPostToJson(
            BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost
                instance) =>
        <String, dynamic>{
          'raw_file': instance.rawFile,
          'doc_name': instance.docName,
          'metadata': instance.metadata,
        };

BodyParseFileContextualRagV1ParseFilePost
    _$BodyParseFileContextualRagV1ParseFilePostFromJson(
            Map<String, dynamic> json) =>
        BodyParseFileContextualRagV1ParseFilePost(
          rawFile: json['raw_file'] as String,
          parseMode: json['parse_mode'] as String?,
          enableDocumentHierarchy: json['enable_document_hierarchy'] as bool?,
          enableSplitTables: json['enable_split_tables'] as bool?,
          maxSplitTableCells: (json['max_split_table_cells'] as num?)?.toInt(),
          figureCaptionMode: json['figure_caption_mode'] as String?,
          pageRange: json['page_range'] as String?,
        );

Map<String, dynamic> _$BodyParseFileContextualRagV1ParseFilePostToJson(
        BodyParseFileContextualRagV1ParseFilePost instance) =>
    <String, dynamic>{
      'raw_file': instance.rawFile,
      'parse_mode': instance.parseMode,
      'enable_document_hierarchy': instance.enableDocumentHierarchy,
      'enable_split_tables': instance.enableSplitTables,
      'max_split_table_cells': instance.maxSplitTableCells,
      'figure_caption_mode': instance.figureCaptionMode,
      'page_range': instance.pageRange,
    };

ConfigurationChunkingDto _$ConfigurationChunkingDtoFromJson(
        Map<String, dynamic> json) =>
    ConfigurationChunkingDto(
      chunkingMode: configurationChunkingDtoChunkingModeNullableFromJson(
          json['chunking_mode']),
      enableHierarchyBasedContextualization:
          json['enable_hierarchy_based_contextualization'] as bool?,
      maxChunkLengthTokens: (json['max_chunk_length_tokens'] as num?)?.toInt(),
      minChunkLengthTokens: (json['min_chunk_length_tokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConfigurationChunkingDtoToJson(
        ConfigurationChunkingDto instance) =>
    <String, dynamic>{
      'chunking_mode': configurationChunkingDtoChunkingModeNullableToJson(
          instance.chunkingMode),
      'enable_hierarchy_based_contextualization':
          instance.enableHierarchyBasedContextualization,
      'max_chunk_length_tokens': instance.maxChunkLengthTokens,
      'min_chunk_length_tokens': instance.minChunkLengthTokens,
    };

ConfigurationDto _$ConfigurationDtoFromJson(Map<String, dynamic> json) =>
    ConfigurationDto(
      chunking: json['chunking'] == null
          ? null
          : ConfigurationChunkingDto.fromJson(
              json['chunking'] as Map<String, dynamic>),
      htmlConfig: json['html_config'] == null
          ? null
          : ConfigurationHTMLConfigDto.fromJson(
              json['html_config'] as Map<String, dynamic>),
      parsing: json['parsing'] == null
          ? null
          : ConfigurationParsingDto.fromJson(
              json['parsing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConfigurationDtoToJson(ConfigurationDto instance) =>
    <String, dynamic>{
      'chunking': instance.chunking?.toJson(),
      'html_config': instance.htmlConfig?.toJson(),
      'parsing': instance.parsing?.toJson(),
    };

ConfigurationHTMLConfigDto _$ConfigurationHTMLConfigDtoFromJson(
        Map<String, dynamic> json) =>
    ConfigurationHTMLConfigDto(
      maxChunkLengthTokens: (json['max_chunk_length_tokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConfigurationHTMLConfigDtoToJson(
        ConfigurationHTMLConfigDto instance) =>
    <String, dynamic>{
      'max_chunk_length_tokens': instance.maxChunkLengthTokens,
    };

ConfigurationParsingDto _$ConfigurationParsingDtoFromJson(
        Map<String, dynamic> json) =>
    ConfigurationParsingDto(
      enableSplitTables: json['enable_split_tables'] as bool?,
      figureCaptionMode:
          configurationParsingDtoFigureCaptionModeNullableFromJson(
              json['figure_caption_mode']),
      figureCaptioningPrompt: json['figure_captioning_prompt'] as String?,
      maxSplitTableCells: (json['max_split_table_cells'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ConfigurationParsingDtoToJson(
        ConfigurationParsingDto instance) =>
    <String, dynamic>{
      'enable_split_tables': instance.enableSplitTables,
      'figure_caption_mode':
          configurationParsingDtoFigureCaptionModeNullableToJson(
              instance.figureCaptionMode),
      'figure_captioning_prompt': instance.figureCaptioningPrompt,
      'max_split_table_cells': instance.maxSplitTableCells,
    };

ContentMetadataStructuredContentMetadataDto
    _$ContentMetadataStructuredContentMetadataDtoFromJson(
            Map<String, dynamic> json) =>
        ContentMetadataStructuredContentMetadataDto(
          contentId: json['content_id'] as String,
          contentText: json['content_text'],
          contentType: json['content_type'] as String?,
        );

Map<String, dynamic> _$ContentMetadataStructuredContentMetadataDtoToJson(
        ContentMetadataStructuredContentMetadataDto instance) =>
    <String, dynamic>{
      'content_id': instance.contentId,
      'content_text': instance.contentText,
      'content_type': instance.contentType,
    };

ContentMetadataUnstructuredContentMetadataDto
    _$ContentMetadataUnstructuredContentMetadataDtoFromJson(
            Map<String, dynamic> json) =>
        ContentMetadataUnstructuredContentMetadataDto(
          contentId: json['content_id'] as String,
          contentText: json['content_text'] as String,
          documentId: json['document_id'] as String,
          height: (json['height'] as num).toDouble(),
          page: (json['page'] as num).toInt(),
          pageImg: json['page_img'] as String,
          width: (json['width'] as num).toDouble(),
          x0: (json['x0'] as num).toDouble(),
          x1: (json['x1'] as num).toDouble(),
          y0: (json['y0'] as num).toDouble(),
          y1: (json['y1'] as num).toDouble(),
          contentType: json['content_type'] as String?,
        );

Map<String, dynamic> _$ContentMetadataUnstructuredContentMetadataDtoToJson(
        ContentMetadataUnstructuredContentMetadataDto instance) =>
    <String, dynamic>{
      'content_id': instance.contentId,
      'content_text': instance.contentText,
      'document_id': instance.documentId,
      'height': instance.height,
      'page': instance.page,
      'page_img': instance.pageImg,
      'width': instance.width,
      'x0': instance.x0,
      'x1': instance.x1,
      'y0': instance.y0,
      'y1': instance.y1,
      'content_type': instance.contentType,
    };

CreateAgentOutputDto _$CreateAgentOutputDtoFromJson(
        Map<String, dynamic> json) =>
    CreateAgentOutputDto(
      id: json['id'] as String,
      datastoreIds: (json['datastore_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$CreateAgentOutputDtoToJson(
        CreateAgentOutputDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'datastore_ids': instance.datastoreIds,
    };

CreateAgentRequest _$CreateAgentRequestFromJson(Map<String, dynamic> json) =>
    CreateAgentRequest(
      name: json['name'] as String,
      datastoreId: json['datastore_id'] as String,
      systemPrompt: json['system_prompt'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateAgentRequestToJson(CreateAgentRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'datastore_id': instance.datastoreId,
      'system_prompt': instance.systemPrompt,
      'description': instance.description,
    };

CreateDatastoreRequest _$CreateDatastoreRequestFromJson(
        Map<String, dynamic> json) =>
    CreateDatastoreRequest(
      name: json['name'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$CreateDatastoreRequestToJson(
        CreateDatastoreRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

CreateDatastoreResponseDto _$CreateDatastoreResponseDtoFromJson(
        Map<String, dynamic> json) =>
    CreateDatastoreResponseDto(
      id: json['id'] as String,
    );

Map<String, dynamic> _$CreateDatastoreResponseDtoToJson(
        CreateDatastoreResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CustomMetadataConfigDto _$CustomMetadataConfigDtoFromJson(
        Map<String, dynamic> json) =>
    CustomMetadataConfigDto(
      filterable: json['filterable'] as bool?,
      inChunks: json['in_chunks'] as bool?,
      returnedInResponse: json['returned_in_response'] as bool?,
    );

Map<String, dynamic> _$CustomMetadataConfigDtoToJson(
        CustomMetadataConfigDto instance) =>
    <String, dynamic>{
      'filterable': instance.filterable,
      'in_chunks': instance.inChunks,
      'returned_in_response': instance.returnedInResponse,
    };

DataResponseAgentMetadataDto _$DataResponseAgentMetadataDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseAgentMetadataDto(
      status: DataResponseAgentMetadataDto.responseStatusStatusNullableFromJson(
          json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AgentMetadataDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseAgentMetadataDtoToJson(
        DataResponseAgentMetadataDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseAutoTopUpResponseDto _$DataResponseAutoTopUpResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseAutoTopUpResponseDto(
      status:
          DataResponseAutoTopUpResponseDto.responseStatusStatusNullableFromJson(
              json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AutoTopUpResponseDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseAutoTopUpResponseDtoToJson(
        DataResponseAutoTopUpResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseAutoTopUpStatusResponseDto
    _$DataResponseAutoTopUpStatusResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseAutoTopUpStatusResponseDto(
          status: DataResponseAutoTopUpStatusResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : AutoTopUpStatusResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseAutoTopUpStatusResponseDtoToJson(
        DataResponseAutoTopUpStatusResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseBalanceResponseDto _$DataResponseBalanceResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseBalanceResponseDto(
      status:
          DataResponseBalanceResponseDto.responseStatusStatusNullableFromJson(
              json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BalanceResponseDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseBalanceResponseDtoToJson(
        DataResponseBalanceResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseBillingMetadataResponseDto
    _$DataResponseBillingMetadataResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseBillingMetadataResponseDto(
          status: DataResponseBillingMetadataResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : BillingMetadataResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseBillingMetadataResponseDtoToJson(
        DataResponseBillingMetadataResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseBillingModeHistoryResponseDto
    _$DataResponseBillingModeHistoryResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseBillingModeHistoryResponseDto(
          status: DataResponseBillingModeHistoryResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : BillingModeHistoryResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseBillingModeHistoryResponseDtoToJson(
        DataResponseBillingModeHistoryResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseCreateAgentOutputDto _$DataResponseCreateAgentOutputDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseCreateAgentOutputDto(
      status:
          DataResponseCreateAgentOutputDto.responseStatusStatusNullableFromJson(
              json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CreateAgentOutputDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseCreateAgentOutputDtoToJson(
        DataResponseCreateAgentOutputDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseCreateDatastoreResponseDto
    _$DataResponseCreateDatastoreResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseCreateDatastoreResponseDto(
          status: DataResponseCreateDatastoreResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : CreateDatastoreResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseCreateDatastoreResponseDtoToJson(
        DataResponseCreateDatastoreResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseDatastoreMetadataDto _$DataResponseDatastoreMetadataDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseDatastoreMetadataDto(
      status:
          DataResponseDatastoreMetadataDto.responseStatusStatusNullableFromJson(
              json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DatastoreMetadataDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseDatastoreMetadataDtoToJson(
        DataResponseDatastoreMetadataDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseDatastoreUpdateResponseDto
    _$DataResponseDatastoreUpdateResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseDatastoreUpdateResponseDto(
          status: DataResponseDatastoreUpdateResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : DatastoreUpdateResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseDatastoreUpdateResponseDtoToJson(
        DataResponseDatastoreUpdateResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseDocumentMetadataDto _$DataResponseDocumentMetadataDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseDocumentMetadataDto(
      status:
          DataResponseDocumentMetadataDto.responseStatusStatusNullableFromJson(
              json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
              .fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseDocumentMetadataDtoToJson(
        DataResponseDocumentMetadataDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseEarliestUsageDateResponseDto
    _$DataResponseEarliestUsageDateResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseEarliestUsageDateResponseDto(
          status: DataResponseEarliestUsageDateResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : EarliestUsageDateResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseEarliestUsageDateResponseDtoToJson(
        DataResponseEarliestUsageDateResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseGenerateCreateResponseDto
    _$DataResponseGenerateCreateResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseGenerateCreateResponseDto(
          status: DataResponseGenerateCreateResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : GenerateCreateResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseGenerateCreateResponseDtoToJson(
        DataResponseGenerateCreateResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseIngestionResponseDto _$DataResponseIngestionResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseIngestionResponseDto(
      status:
          DataResponseIngestionResponseDto.responseStatusStatusNullableFromJson(
              json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : IngestionResponseDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseIngestionResponseDtoToJson(
        DataResponseIngestionResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseListAgentsResponseDto _$DataResponseListAgentsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseListAgentsResponseDto(
      status: DataResponseListAgentsResponseDto
          .responseStatusStatusNullableFromJson(json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ListAgentsResponseDto.fromJson(
              json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseListAgentsResponseDtoToJson(
        DataResponseListAgentsResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseListDatastoresResponseDto
    _$DataResponseListDatastoresResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseListDatastoresResponseDto(
          status: DataResponseListDatastoresResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : ListDatastoresResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseListDatastoresResponseDtoToJson(
        DataResponseListDatastoresResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseListDocumentsResponseDto
    _$DataResponseListDocumentsResponseDtoFromJson(Map<String, dynamic> json) =>
        DataResponseListDocumentsResponseDto(
          status: DataResponseListDocumentsResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : ListDocumentsResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseListDocumentsResponseDtoToJson(
        DataResponseListDocumentsResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseMonthlyUsageResponseDto
    _$DataResponseMonthlyUsageResponseDtoFromJson(Map<String, dynamic> json) =>
        DataResponseMonthlyUsageResponseDto(
          status: DataResponseMonthlyUsageResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : MonthlyUsageResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseMonthlyUsageResponseDtoToJson(
        DataResponseMonthlyUsageResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseParseCreateResponseDto _$DataResponseParseCreateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseParseCreateResponseDto(
      status: DataResponseParseCreateResponseDto
          .responseStatusStatusNullableFromJson(json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ParseCreateResponseDto.fromJson(
              json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseParseCreateResponseDtoToJson(
        DataResponseParseCreateResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseParseJobResultsResponseDto
    _$DataResponseParseJobResultsResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseParseJobResultsResponseDto(
          status: DataResponseParseJobResultsResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : ParseJobResultsResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseParseJobResultsResponseDtoToJson(
        DataResponseParseJobResultsResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseParseJobStatusResponseDto
    _$DataResponseParseJobStatusResponseDtoFromJson(
            Map<String, dynamic> json) =>
        DataResponseParseJobStatusResponseDto(
          status: DataResponseParseJobStatusResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : ParseJobStatusResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseParseJobStatusResponseDtoToJson(
        DataResponseParseJobStatusResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseParseJobsResponseDto _$DataResponseParseJobsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseParseJobsResponseDto(
      status:
          DataResponseParseJobsResponseDto.responseStatusStatusNullableFromJson(
              json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ParseJobsResponseDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseParseJobsResponseDtoToJson(
        DataResponseParseJobsResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseParseResultResponseDto _$DataResponseParseResultResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseParseResultResponseDto(
      status: DataResponseParseResultResponseDto
          .responseStatusStatusNullableFromJson(json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ParseResultResponseDto.fromJson(
              json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseParseResultResponseDtoToJson(
        DataResponseParseResultResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseQueryMetricsResponseDto
    _$DataResponseQueryMetricsResponseDtoFromJson(Map<String, dynamic> json) =>
        DataResponseQueryMetricsResponseDto(
          status: DataResponseQueryMetricsResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : QueryMetricsResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseQueryMetricsResponseDtoToJson(
        DataResponseQueryMetricsResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseQueryResponseDto _$DataResponseQueryResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DataResponseQueryResponseDto(
      status: DataResponseQueryResponseDto.responseStatusStatusNullableFromJson(
          json['status']),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : QueryResponseDto.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$DataResponseQueryResponseDtoToJson(
        DataResponseQueryResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseRerankCreateResponseDto
    _$DataResponseRerankCreateResponseDtoFromJson(Map<String, dynamic> json) =>
        DataResponseRerankCreateResponseDto(
          status: DataResponseRerankCreateResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : RerankCreateResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseRerankCreateResponseDtoToJson(
        DataResponseRerankCreateResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseRetrievalInfoResponseDto
    _$DataResponseRetrievalInfoResponseDtoFromJson(Map<String, dynamic> json) =>
        DataResponseRetrievalInfoResponseDto(
          status: DataResponseRetrievalInfoResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : RetrievalInfoResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseRetrievalInfoResponseDtoToJson(
        DataResponseRetrievalInfoResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DataResponseTopUpHistoryResponseDto
    _$DataResponseTopUpHistoryResponseDtoFromJson(Map<String, dynamic> json) =>
        DataResponseTopUpHistoryResponseDto(
          status: DataResponseTopUpHistoryResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : TopUpHistoryResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic> _$DataResponseTopUpHistoryResponseDtoToJson(
        DataResponseTopUpHistoryResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
      'message': instance.message,
      'data': instance.data?.toJson(),
      'error': instance.error,
    };

DatastoreDto _$DatastoreDtoFromJson(Map<String, dynamic> json) => DatastoreDto(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      datastoreType: json['datastore_type'] as String,
      name: json['name'] as String,
      configuration: json['configuration'] == null
          ? null
          : ConfigurationDto.fromJson(
              json['configuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatastoreDtoToJson(DatastoreDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'datastore_type': instance.datastoreType,
      'name': instance.name,
      'configuration': instance.configuration?.toJson(),
    };

DatastoreMetadataDto _$DatastoreMetadataDtoFromJson(
        Map<String, dynamic> json) =>
    DatastoreMetadataDto(
      agentIds: (json['agent_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      createdAt: DateTime.parse(json['created_at'] as String),
      name: json['name'] as String,
      configuration: json['configuration'] == null
          ? null
          : ConfigurationDto.fromJson(
              json['configuration'] as Map<String, dynamic>),
      datastoreType: json['datastore_type'] as String?,
      datastoreUsages: json['datastore_usages'] == null
          ? null
          : DatastoreUsagesDto.fromJson(
              json['datastore_usages'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatastoreMetadataDtoToJson(
        DatastoreMetadataDto instance) =>
    <String, dynamic>{
      'agent_ids': instance.agentIds,
      'created_at': instance.createdAt.toIso8601String(),
      'name': instance.name,
      'configuration': instance.configuration?.toJson(),
      'datastore_type': instance.datastoreType,
      'datastore_usages': instance.datastoreUsages?.toJson(),
    };

DatastoreUpdateResponseDto _$DatastoreUpdateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    DatastoreUpdateResponseDto(
      id: json['id'] as String,
    );

Map<String, dynamic> _$DatastoreUpdateResponseDtoToJson(
        DatastoreUpdateResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DatastoreUsagesDto _$DatastoreUsagesDtoFromJson(Map<String, dynamic> json) =>
    DatastoreUsagesDto(
      sizeGb: (json['size_gb'] as num).toDouble(),
    );

Map<String, dynamic> _$DatastoreUsagesDtoToJson(DatastoreUsagesDto instance) =>
    <String, dynamic>{
      'size_gb': instance.sizeGb,
    };

DocumentFilterQuery _$DocumentFilterQueryFromJson(Map<String, dynamic> json) =>
    DocumentFilterQuery(
      field: json['field'] as String,
      $operator: documentFilterQueryOperatorFromJson(json['operator']),
      $value: json['value'],
    );

Map<String, dynamic> _$DocumentFilterQueryToJson(
        DocumentFilterQuery instance) =>
    <String, dynamic>{
      'field': instance.field,
      'operator': documentFilterQueryOperatorToJson(instance.$operator),
      'value': instance.$value,
    };

DocumentMetadataHierarchyBlockBoundingBoxDto
    _$DocumentMetadataHierarchyBlockBoundingBoxDtoFromJson(
            Map<String, dynamic> json) =>
        DocumentMetadataHierarchyBlockBoundingBoxDto(
          x0: (json['x0'] as num).toDouble(),
          x1: (json['x1'] as num).toDouble(),
          y0: (json['y0'] as num).toDouble(),
          y1: (json['y1'] as num).toDouble(),
        );

Map<String, dynamic> _$DocumentMetadataHierarchyBlockBoundingBoxDtoToJson(
        DocumentMetadataHierarchyBlockBoundingBoxDto instance) =>
    <String, dynamic>{
      'x0': instance.x0,
      'x1': instance.x1,
      'y0': instance.y0,
      'y1': instance.y1,
    };

DocumentMetadataHierarchyBlockDto _$DocumentMetadataHierarchyBlockDtoFromJson(
        Map<String, dynamic> json) =>
    DocumentMetadataHierarchyBlockDto(
      id: json['id'] as String,
      boundingBox: DocumentMetadataHierarchyBlockBoundingBoxDto.fromJson(
          json['bounding_box'] as Map<String, dynamic>),
      markdown: json['markdown'] as String,
      type: documentMetadataHierarchyBlockDtoTypeFromJson(json['type']),
      confidenceLevel:
          documentMetadataHierarchyBlockDtoConfidenceLevelNullableFromJson(
              json['confidence_level']),
      hierarchyLevel: (json['hierarchy_level'] as num?)?.toInt(),
      pageIndex: (json['page_index'] as num?)?.toInt(),
      parentIds: (json['parent_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$DocumentMetadataHierarchyBlockDtoToJson(
        DocumentMetadataHierarchyBlockDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bounding_box': instance.boundingBox.toJson(),
      'markdown': instance.markdown,
      'type': documentMetadataHierarchyBlockDtoTypeToJson(instance.type),
      'confidence_level':
          documentMetadataHierarchyBlockDtoConfidenceLevelNullableToJson(
              instance.confidenceLevel),
      'hierarchy_level': instance.hierarchyLevel,
      'page_index': instance.pageIndex,
      'parent_ids': instance.parentIds,
    };

DocumentMetadataHierarchyDto _$DocumentMetadataHierarchyDtoFromJson(
        Map<String, dynamic> json) =>
    DocumentMetadataHierarchyDto(
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => DocumentMetadataHierarchyBlockDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      tableOfContents: json['table_of_contents'] as String?,
    );

Map<String, dynamic> _$DocumentMetadataHierarchyDtoToJson(
        DocumentMetadataHierarchyDto instance) =>
    <String, dynamic>{
      'blocks': instance.blocks?.map((e) => e.toJson()).toList(),
      'table_of_contents': instance.tableOfContents,
    };

DocumentsFiltersQuery _$DocumentsFiltersQueryFromJson(
        Map<String, dynamic> json) =>
    DocumentsFiltersQuery(
      filters: (json['filters'] as List<dynamic>?)
              ?.map((e) =>
                  DocumentFilterQuery.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      $operator: DocumentsFiltersQuery
          .documentsFiltersQueryOperator$operatorNullableFromJson(
              json['operator']),
    );

Map<String, dynamic> _$DocumentsFiltersQueryToJson(
        DocumentsFiltersQuery instance) =>
    <String, dynamic>{
      'filters': instance.filters.map((e) => e.toJson()).toList(),
      'operator':
          documentsFiltersQueryOperatorNullableToJson(instance.$operator),
    };

EarliestUsageDateResponseDto _$EarliestUsageDateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    EarliestUsageDateResponseDto(
      date: json['date'],
    );

Map<String, dynamic> _$EarliestUsageDateResponseDtoToJson(
        EarliestUsageDateResponseDto instance) =>
    <String, dynamic>{
      'date': instance.date,
    };

FeedbackRequest _$FeedbackRequestFromJson(Map<String, dynamic> json) =>
    FeedbackRequest(
      messageId: json['message_id'] as String,
      feedback: json['feedback'] as String,
      explanation: json['explanation'] as String?,
      contentId: json['content_id'] as String?,
    );

Map<String, dynamic> _$FeedbackRequestToJson(FeedbackRequest instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
      'feedback': instance.feedback,
      'explanation': instance.explanation,
      'content_id': instance.contentId,
    };

GenerateCreateResponseDto _$GenerateCreateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    GenerateCreateResponseDto(
      response: json['response'] as String,
    );

Map<String, dynamic> _$GenerateCreateResponseDtoToJson(
        GenerateCreateResponseDto instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

GenerateRequest _$GenerateRequestFromJson(Map<String, dynamic> json) =>
    GenerateRequest(
      model: json['model'] as String,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      knowledge: (json['knowledge'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      systemPrompt: json['system_prompt'] as String?,
      avoidCommentary: json['avoid_commentary'] as bool? ?? false,
      temperature: (json['temperature'] as num?)?.toDouble(),
      topP: (json['top_p'] as num?)?.toDouble(),
      maxNewTokens: (json['max_new_tokens'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GenerateRequestToJson(GenerateRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'knowledge': instance.knowledge,
      'system_prompt': instance.systemPrompt,
      'avoid_commentary': instance.avoidCommentary,
      'temperature': instance.temperature,
      'top_p': instance.topP,
      'max_new_tokens': instance.maxNewTokens,
    };

GroundednessScoreDto _$GroundednessScoreDtoFromJson(
        Map<String, dynamic> json) =>
    GroundednessScoreDto(
      endIdx: (json['end_idx'] as num).toInt(),
      score: (json['score'] as num).toInt(),
      startIdx: (json['start_idx'] as num).toInt(),
    );

Map<String, dynamic> _$GroundednessScoreDtoToJson(
        GroundednessScoreDto instance) =>
    <String, dynamic>{
      'end_idx': instance.endIdx,
      'score': instance.score,
      'start_idx': instance.startIdx,
    };

HTTPValidationError _$HTTPValidationErrorFromJson(Map<String, dynamic> json) =>
    HTTPValidationError(
      detail: (json['detail'] as List<dynamic>?)
              ?.map((e) => ValidationError.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$HTTPValidationErrorToJson(
        HTTPValidationError instance) =>
    <String, dynamic>{
      'detail': instance.detail?.map((e) => e.toJson()).toList(),
    };

IncrementBalanceRequest _$IncrementBalanceRequestFromJson(
        Map<String, dynamic> json) =>
    IncrementBalanceRequest(
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$IncrementBalanceRequestToJson(
        IncrementBalanceRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
    };

IngestionResponseDto _$IngestionResponseDtoFromJson(
        Map<String, dynamic> json) =>
    IngestionResponseDto(
      id: json['id'] as String,
    );

Map<String, dynamic> _$IngestionResponseDtoToJson(
        IngestionResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

JobDto _$JobDtoFromJson(Map<String, dynamic> json) => JobDto(
      id: json['id'] as String,
      fileName: json['file_name'] as String,
      status: jobDtoStatusFromJson(json['status']),
    );

Map<String, dynamic> _$JobDtoToJson(JobDto instance) => <String, dynamic>{
      'id': instance.id,
      'file_name': instance.fileName,
      'status': jobDtoStatusToJson(instance.status),
    };

ListAgentsResponseDto _$ListAgentsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ListAgentsResponseDto(
      agents: (json['agents'] as List<dynamic>?)
              ?.map((e) => AgentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ListAgentsResponseDtoToJson(
        ListAgentsResponseDto instance) =>
    <String, dynamic>{
      'agents': instance.agents.map((e) => e.toJson()).toList(),
    };

ListDatastoresResponseDto _$ListDatastoresResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ListDatastoresResponseDto(
      datastores: (json['datastores'] as List<dynamic>?)
              ?.map((e) => DatastoreDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ListDatastoresResponseDtoToJson(
        ListDatastoresResponseDto instance) =>
    <String, dynamic>{
      'datastores': instance.datastores.map((e) => e.toJson()).toList(),
    };

ListDocumentsResponseDto _$ListDocumentsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ListDocumentsResponseDto(
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) =>
                  SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
                      .fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      nextCursor: json['next_cursor'] as String?,
      totalCount: (json['total_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ListDocumentsResponseDtoToJson(
        ListDocumentsResponseDto instance) =>
    <String, dynamic>{
      'documents': instance.documents.map((e) => e.toJson()).toList(),
      'next_cursor': instance.nextCursor,
      'total_count': instance.totalCount,
    };

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      content: json['content'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'content': instance.content,
      'role': instance.role,
    };

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      content: json['content'] as String,
      role: messageDtoRoleFromJson(json['role']),
    );

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'role': messageDtoRoleToJson(instance.role),
    };

MessageQuery _$MessageQueryFromJson(Map<String, dynamic> json) => MessageQuery(
      role: messageQueryRoleFromJson(json['role']),
      content: json['content'] as String,
    );

Map<String, dynamic> _$MessageQueryToJson(MessageQuery instance) =>
    <String, dynamic>{
      'role': messageQueryRoleToJson(instance.role),
      'content': instance.content,
    };

MonthlyUsageResponseDto _$MonthlyUsageResponseDtoFromJson(
        Map<String, dynamic> json) =>
    MonthlyUsageResponseDto(
      usage: json['usage'],
    );

Map<String, dynamic> _$MonthlyUsageResponseDtoToJson(
        MonthlyUsageResponseDto instance) =>
    <String, dynamic>{
      'usage': instance.usage,
    };

OverrideConfigurationQuery _$OverrideConfigurationQueryFromJson(
        Map<String, dynamic> json) =>
    OverrideConfigurationQuery(
      systemPrompt: json['system_prompt'] as String?,
      filterPrompt: json['filter_prompt'] as String?,
      model: json['model'] as String?,
      maxNewTokens: (json['max_new_tokens'] as num?)?.toInt(),
      topP: (json['top_p'] as num?)?.toDouble(),
      temperature: (json['temperature'] as num?)?.toDouble(),
      topKRetrievedChunks: (json['top_k_retrieved_chunks'] as num?)?.toInt(),
      topKRerankedChunks: (json['top_k_reranked_chunks'] as num?)?.toInt(),
      enableFilter: json['enable_filter'] as bool?,
      filterModel: json['filter_model'] as String?,
      enableRerank: json['enable_rerank'] as bool?,
      reranker: json['reranker'] as String?,
      lexicalAlpha: (json['lexical_alpha'] as num?)?.toDouble(),
      semanticAlpha: (json['semantic_alpha'] as num?)?.toDouble(),
      rerankInstructions: json['rerank_instructions'] as String?,
      rerankerScoreFilterThreshold:
          (json['reranker_score_filter_threshold'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$OverrideConfigurationQueryToJson(
        OverrideConfigurationQuery instance) =>
    <String, dynamic>{
      'system_prompt': instance.systemPrompt,
      'filter_prompt': instance.filterPrompt,
      'model': instance.model,
      'max_new_tokens': instance.maxNewTokens,
      'top_p': instance.topP,
      'temperature': instance.temperature,
      'top_k_retrieved_chunks': instance.topKRetrievedChunks,
      'top_k_reranked_chunks': instance.topKRerankedChunks,
      'enable_filter': instance.enableFilter,
      'filter_model': instance.filterModel,
      'enable_rerank': instance.enableRerank,
      'reranker': instance.reranker,
      'lexical_alpha': instance.lexicalAlpha,
      'semantic_alpha': instance.semanticAlpha,
      'rerank_instructions': instance.rerankInstructions,
      'reranker_score_filter_threshold': instance.rerankerScoreFilterThreshold,
    };

PageBlockBoundingBoxDto _$PageBlockBoundingBoxDtoFromJson(
        Map<String, dynamic> json) =>
    PageBlockBoundingBoxDto(
      x0: (json['x0'] as num).toDouble(),
      x1: (json['x1'] as num).toDouble(),
      y0: (json['y0'] as num).toDouble(),
      y1: (json['y1'] as num).toDouble(),
    );

Map<String, dynamic> _$PageBlockBoundingBoxDtoToJson(
        PageBlockBoundingBoxDto instance) =>
    <String, dynamic>{
      'x0': instance.x0,
      'x1': instance.x1,
      'y0': instance.y0,
      'y1': instance.y1,
    };

PageBlockDto _$PageBlockDtoFromJson(Map<String, dynamic> json) => PageBlockDto(
      id: json['id'] as String,
      boundingBox: PageBlockBoundingBoxDto.fromJson(
          json['bounding_box'] as Map<String, dynamic>),
      markdown: json['markdown'] as String,
      type: pageBlockDtoTypeFromJson(json['type']),
      confidenceLevel:
          pageBlockDtoConfidenceLevelNullableFromJson(json['confidence_level']),
      hierarchyLevel: (json['hierarchy_level'] as num?)?.toInt(),
      pageIndex: (json['page_index'] as num?)?.toInt(),
      parentIds: (json['parent_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$PageBlockDtoToJson(PageBlockDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bounding_box': instance.boundingBox.toJson(),
      'markdown': instance.markdown,
      'type': pageBlockDtoTypeToJson(instance.type),
      'confidence_level':
          pageBlockDtoConfidenceLevelNullableToJson(instance.confidenceLevel),
      'hierarchy_level': instance.hierarchyLevel,
      'page_index': instance.pageIndex,
      'parent_ids': instance.parentIds,
    };

PageDto _$PageDtoFromJson(Map<String, dynamic> json) => PageDto(
      index: (json['index'] as num).toInt(),
      blocks: (json['blocks'] as List<dynamic>?)
              ?.map((e) => PageBlockDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      markdown: json['markdown'] as String?,
    );

Map<String, dynamic> _$PageDtoToJson(PageDto instance) => <String, dynamic>{
      'index': instance.index,
      'blocks': instance.blocks?.map((e) => e.toJson()).toList(),
      'markdown': instance.markdown,
    };

ParseCreateResponseDto _$ParseCreateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ParseCreateResponseDto(
      jobId: json['job_id'] as String,
    );

Map<String, dynamic> _$ParseCreateResponseDtoToJson(
        ParseCreateResponseDto instance) =>
    <String, dynamic>{
      'job_id': instance.jobId,
    };

ParseJobResultsResponseDto _$ParseJobResultsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ParseJobResultsResponseDto(
      fileName: json['file_name'] as String,
      status: parseJobResultsResponseDtoStatusFromJson(json['status']),
      documentMetadata: json['document_metadata'] == null
          ? null
          : SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto
              .fromJson(json['document_metadata'] as Map<String, dynamic>),
      markdownDocument: json['markdown_document'] as String?,
      pages: (json['pages'] as List<dynamic>?)
              ?.map((e) => PageDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$ParseJobResultsResponseDtoToJson(
        ParseJobResultsResponseDto instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'status': parseJobResultsResponseDtoStatusToJson(instance.status),
      'document_metadata': instance.documentMetadata?.toJson(),
      'markdown_document': instance.markdownDocument,
      'pages': instance.pages?.map((e) => e.toJson()).toList(),
    };

ParseJobStatusResponseDto _$ParseJobStatusResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ParseJobStatusResponseDto(
      fileName: json['file_name'] as String,
      status: parseJobStatusResponseDtoStatusFromJson(json['status']),
    );

Map<String, dynamic> _$ParseJobStatusResponseDtoToJson(
        ParseJobStatusResponseDto instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'status': parseJobStatusResponseDtoStatusToJson(instance.status),
    };

ParseJobsResponseDto _$ParseJobsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ParseJobsResponseDto(
      jobs: (json['jobs'] as List<dynamic>?)
              ?.map((e) => JobDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalJobs: (json['total_jobs'] as num).toInt(),
      nextCursor: json['next_cursor'] as String?,
    );

Map<String, dynamic> _$ParseJobsResponseDtoToJson(
        ParseJobsResponseDto instance) =>
    <String, dynamic>{
      'jobs': instance.jobs.map((e) => e.toJson()).toList(),
      'total_jobs': instance.totalJobs,
      'next_cursor': instance.nextCursor,
    };

ParseResultResponseDto _$ParseResultResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ParseResultResponseDto(
      result: json['result'],
    );

Map<String, dynamic> _$ParseResultResponseDtoToJson(
        ParseResultResponseDto instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

QueryMetricsResponseDto _$QueryMetricsResponseDtoFromJson(
        Map<String, dynamic> json) =>
    QueryMetricsResponseDto(
      totalCount: (json['total_count'] as num).toInt(),
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
      nextOffset: (json['next_offset'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QueryMetricsResponseDtoToJson(
        QueryMetricsResponseDto instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'messages': instance.messages,
      'next_offset': instance.nextOffset,
    };

QueryRequest _$QueryRequestFromJson(Map<String, dynamic> json) => QueryRequest(
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => MessageQuery.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      stream: json['stream'] as bool? ?? false,
      conversationId: json['conversation_id'] as String?,
      llmModelId: json['llm_model_id'] as String?,
      structuredOutput: json['structured_output'] == null
          ? null
          : StructuredOutputQuery.fromJson(
              json['structured_output'] as Map<String, dynamic>),
      documentsFilters: json['documents_filters'] == null
          ? null
          : DocumentsFiltersQuery.fromJson(
              json['documents_filters'] as Map<String, dynamic>),
      overrideConfiguration: json['override_configuration'] == null
          ? null
          : OverrideConfigurationQuery.fromJson(
              json['override_configuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryRequestToJson(QueryRequest instance) =>
    <String, dynamic>{
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'stream': instance.stream,
      'conversation_id': instance.conversationId,
      'llm_model_id': instance.llmModelId,
      'structured_output': instance.structuredOutput?.toJson(),
      'documents_filters': instance.documentsFilters?.toJson(),
      'override_configuration': instance.overrideConfiguration?.toJson(),
    };

QueryResponseDto _$QueryResponseDtoFromJson(Map<String, dynamic> json) =>
    QueryResponseDto(
      conversationId: json['conversation_id'] as String,
      retrievalContents: (json['retrieval_contents'] as List<dynamic>?)
              ?.map((e) =>
                  RetrievalContentDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      attributions: (json['attributions'] as List<dynamic>?)
              ?.map((e) => AttributionDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      groundednessScores: (json['groundedness_scores'] as List<dynamic>?)
              ?.map((e) =>
                  GroundednessScoreDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      message: json['message'] == null
          ? null
          : MessageDto.fromJson(json['message'] as Map<String, dynamic>),
      messageId: json['message_id'] as String?,
    );

Map<String, dynamic> _$QueryResponseDtoToJson(QueryResponseDto instance) =>
    <String, dynamic>{
      'conversation_id': instance.conversationId,
      'retrieval_contents':
          instance.retrievalContents.map((e) => e.toJson()).toList(),
      'attributions': instance.attributions?.map((e) => e.toJson()).toList(),
      'groundedness_scores':
          instance.groundednessScores?.map((e) => e.toJson()).toList(),
      'message': instance.message?.toJson(),
      'message_id': instance.messageId,
    };

RerankCreateResponseDto _$RerankCreateResponseDtoFromJson(
        Map<String, dynamic> json) =>
    RerankCreateResponseDto(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => ResultDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$RerankCreateResponseDtoToJson(
        RerankCreateResponseDto instance) =>
    <String, dynamic>{
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

RerankRequest _$RerankRequestFromJson(Map<String, dynamic> json) =>
    RerankRequest(
      query: json['query'] as String,
      documents: (json['documents'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      model: json['model'] as String?,
      topN: (json['top_n'] as num?)?.toInt(),
      instruction: json['instruction'] as String?,
      metadata: (json['metadata'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$RerankRequestToJson(RerankRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'documents': instance.documents,
      'model': instance.model,
      'top_n': instance.topN,
      'instruction': instance.instruction,
      'metadata': instance.metadata,
    };

ResultDto _$ResultDtoFromJson(Map<String, dynamic> json) => ResultDto(
      index: (json['index'] as num).toInt(),
      relevanceScore: (json['relevance_score'] as num).toDouble(),
    );

Map<String, dynamic> _$ResultDtoToJson(ResultDto instance) => <String, dynamic>{
      'index': instance.index,
      'relevance_score': instance.relevanceScore,
    };

RetrievalContentCtxlMetadataDto _$RetrievalContentCtxlMetadataDtoFromJson(
        Map<String, dynamic> json) =>
    RetrievalContentCtxlMetadataDto(
      chunkId: json['chunk_id'] as String?,
      chunkSize: (json['chunk_size'] as num?)?.toInt(),
      dateCreated: json['date_created'] as String?,
      documentTitle: json['document_title'] as String?,
      fileFormat: json['file_format'] as String?,
      fileName: json['file_name'] as String?,
      isFigure: json['is_figure'] as bool?,
      page: (json['page'] as num?)?.toInt(),
      sectionId: json['section_id'] as String?,
      sectionTitle: json['section_title'] as String?,
    );

Map<String, dynamic> _$RetrievalContentCtxlMetadataDtoToJson(
        RetrievalContentCtxlMetadataDto instance) =>
    <String, dynamic>{
      'chunk_id': instance.chunkId,
      'chunk_size': instance.chunkSize,
      'date_created': instance.dateCreated,
      'document_title': instance.documentTitle,
      'file_format': instance.fileFormat,
      'file_name': instance.fileName,
      'is_figure': instance.isFigure,
      'page': instance.page,
      'section_id': instance.sectionId,
      'section_title': instance.sectionTitle,
    };

RetrievalContentCustomMetadataConfigDto
    _$RetrievalContentCustomMetadataConfigDtoFromJson(
            Map<String, dynamic> json) =>
        RetrievalContentCustomMetadataConfigDto(
          filterable: json['filterable'] as bool?,
          inChunks: json['in_chunks'] as bool?,
          returnedInResponse: json['returned_in_response'] as bool?,
        );

Map<String, dynamic> _$RetrievalContentCustomMetadataConfigDtoToJson(
        RetrievalContentCustomMetadataConfigDto instance) =>
    <String, dynamic>{
      'filterable': instance.filterable,
      'in_chunks': instance.inChunks,
      'returned_in_response': instance.returnedInResponse,
    };

RetrievalContentDto _$RetrievalContentDtoFromJson(Map<String, dynamic> json) =>
    RetrievalContentDto(
      contentId: json['content_id'] as String,
      docId: json['doc_id'] as String,
      docName: json['doc_name'] as String,
      format: retrievalContentDtoFormatFromJson(json['format']),
      type: json['type'] as String,
      contentText: json['content_text'] as String?,
      ctxlMetadata: json['ctxl_metadata'] == null
          ? null
          : RetrievalContentCtxlMetadataDto.fromJson(
              json['ctxl_metadata'] as Map<String, dynamic>),
      customMetadata: json['custom_metadata'],
      customMetadataConfig: json['custom_metadata_config'],
      number: (json['number'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      score: (json['score'] as num?)?.toDouble(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$RetrievalContentDtoToJson(
        RetrievalContentDto instance) =>
    <String, dynamic>{
      'content_id': instance.contentId,
      'doc_id': instance.docId,
      'doc_name': instance.docName,
      'format': retrievalContentDtoFormatToJson(instance.format),
      'type': instance.type,
      'content_text': instance.contentText,
      'ctxl_metadata': instance.ctxlMetadata?.toJson(),
      'custom_metadata': instance.customMetadata,
      'custom_metadata_config': instance.customMetadataConfig,
      'number': instance.number,
      'page': instance.page,
      'score': instance.score,
      'url': instance.url,
    };

RetrievalInfoResponseDto _$RetrievalInfoResponseDtoFromJson(
        Map<String, dynamic> json) =>
    RetrievalInfoResponseDto(
      contentMetadatas: (json['content_metadatas'] as List<dynamic>?)
              ?.map((e) => e as Object)
              .toList() ??
          [],
    );

Map<String, dynamic> _$RetrievalInfoResponseDtoToJson(
        RetrievalInfoResponseDto instance) =>
    <String, dynamic>{
      'content_metadatas': instance.contentMetadatas,
    };

SetDocumentMetadataRequest _$SetDocumentMetadataRequestFromJson(
        Map<String, dynamic> json) =>
    SetDocumentMetadataRequest(
      metadata: json['metadata'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SetDocumentMetadataRequestToJson(
        SetDocumentMetadataRequest instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
    };

StructuredOutputQuery _$StructuredOutputQueryFromJson(
        Map<String, dynamic> json) =>
    StructuredOutputQuery(
      type: json['type'] as String,
      jsonSchema: json['json_schema'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$StructuredOutputQueryToJson(
        StructuredOutputQuery instance) =>
    <String, dynamic>{
      'type': instance.type,
      'json_schema': instance.jsonSchema,
    };

TopUpHistoryResponseDto _$TopUpHistoryResponseDtoFromJson(
        Map<String, dynamic> json) =>
    TopUpHistoryResponseDto(
      history: json['history'],
    );

Map<String, dynamic> _$TopUpHistoryResponseDtoToJson(
        TopUpHistoryResponseDto instance) =>
    <String, dynamic>{
      'history': instance.history,
    };

UpdateAgentRequest _$UpdateAgentRequestFromJson(Map<String, dynamic> json) =>
    UpdateAgentRequest(
      name: json['name'] as String?,
      systemPrompt: json['system_prompt'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateAgentRequestToJson(UpdateAgentRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'system_prompt': instance.systemPrompt,
      'description': instance.description,
    };

UpdateDatastoreRequest _$UpdateDatastoreRequestFromJson(
        Map<String, dynamic> json) =>
    UpdateDatastoreRequest(
      name: json['name'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$UpdateDatastoreRequestToJson(
        UpdateDatastoreRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
    };

ValidationError _$ValidationErrorFromJson(Map<String, dynamic> json) =>
    ValidationError(
      loc: (json['loc'] as List<dynamic>?)?.map((e) => e as Object).toList() ??
          [],
      msg: json['msg'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$ValidationErrorToJson(ValidationError instance) =>
    <String, dynamic>{
      'loc': instance.loc,
      'msg': instance.msg,
      'type': instance.type,
    };

SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto
    _$SrcContextualRagModelsComponentsBillingDtoEmptyResponseDtoFromJson(
            Map<String, dynamic> json) =>
        SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto();

Map<String,
    dynamic> _$SrcContextualRagModelsComponentsBillingDtoEmptyResponseDtoToJson(
        SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto instance) =>
    <String, dynamic>{};

SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto
    _$SrcContextualRagModelsComponentsParseDtoDocumentMetadataDtoFromJson(
            Map<String, dynamic> json) =>
        SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto(
          hierarchy: json['hierarchy'] == null
              ? null
              : DocumentMetadataHierarchyDto.fromJson(
                  json['hierarchy'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$SrcContextualRagModelsComponentsParseDtoDocumentMetadataDtoToJson(
            SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto
                instance) =>
        <String, dynamic>{
          'hierarchy': instance.hierarchy?.toJson(),
        };

SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
    _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoFromJson(
            Map<String, dynamic> json) =>
        SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto(
          id: json['id'] as String,
          createdAt: json['created_at'] as String,
          name: json['name'] as String,
          status:
              srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusFromJson(
                  json['status']),
          customMetadata: json['custom_metadata'],
          customMetadataConfig: json['custom_metadata_config'],
          hasAccess: json['has_access'] as bool?,
          ingestionConfig: json['ingestion_config'],
          updatedAt: json['updated_at'] as String?,
        );

Map<String, dynamic>
    _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoToJson(
            SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'created_at': instance.createdAt,
          'name': instance.name,
          'status':
              srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusToJson(
                  instance.status),
          'custom_metadata': instance.customMetadata,
          'custom_metadata_config': instance.customMetadataConfig,
          'has_access': instance.hasAccess,
          'ingestion_config': instance.ingestionConfig,
          'updated_at': instance.updatedAt,
        };

SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto
    _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDtoFromJson(
            Map<String, dynamic> json) =>
        SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto();

Map<String, dynamic>
    _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDtoToJson(
            SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto
                instance) =>
        <String, dynamic>{};

SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto
    _$SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDtoFromJson(
            Map<String, dynamic> json) =>
        SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto();

Map<String, dynamic>
    _$SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDtoToJson(
            SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto
                instance) =>
        <String, dynamic>{};

SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1FromJson(
            Map<String, dynamic> json) =>
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1(
          status: SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SrcCoreSharedConstantsDtoEmptyResponseDto.fromJson(
                  json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic>
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1ToJson(
            SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1 instance) =>
        <String, dynamic>{
          'status': responseStatusNullableToJson(instance.status),
          'message': instance.message,
          'data': instance.data?.toJson(),
          'error': instance.error,
        };

SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2FromJson(
            Map<String, dynamic> json) =>
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2(
          status: SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto
                  .fromJson(json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic>
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2ToJson(
            SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2 instance) =>
        <String, dynamic>{
          'status': responseStatusNullableToJson(instance.status),
          'message': instance.message,
          'data': instance.data?.toJson(),
          'error': instance.error,
        };

SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3FromJson(
            Map<String, dynamic> json) =>
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3(
          status: SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto
                  .fromJson(json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic>
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3ToJson(
            SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3 instance) =>
        <String, dynamic>{
          'status': responseStatusNullableToJson(instance.status),
          'message': instance.message,
          'data': instance.data?.toJson(),
          'error': instance.error,
        };

SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4FromJson(
            Map<String, dynamic> json) =>
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4(
          status: SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4
              .responseStatusStatusNullableFromJson(json['status']),
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto
                  .fromJson(json['data'] as Map<String, dynamic>),
          error: json['error'] as String?,
        );

Map<String, dynamic>
    _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4ToJson(
            SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4 instance) =>
        <String, dynamic>{
          'status': responseStatusNullableToJson(instance.status),
          'message': instance.message,
          'data': instance.data?.toJson(),
          'error': instance.error,
        };

SrcCoreSharedConstantsDtoEmptyResponseDto
    _$SrcCoreSharedConstantsDtoEmptyResponseDtoFromJson(
            Map<String, dynamic> json) =>
        SrcCoreSharedConstantsDtoEmptyResponseDto(
          status: SrcCoreSharedConstantsDtoEmptyResponseDto
              .responseStatusStatusNullableFromJson(json['status']),
        );

Map<String, dynamic> _$SrcCoreSharedConstantsDtoEmptyResponseDtoToJson(
        SrcCoreSharedConstantsDtoEmptyResponseDto instance) =>
    <String, dynamic>{
      'status': responseStatusNullableToJson(instance.status),
    };
