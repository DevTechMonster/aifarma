// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

part of 'aifarma_core.swagger.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AifarmaCore extends AifarmaCore {
  _$AifarmaCore([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AifarmaCore;

  @override
  Future<Response<dynamic>> _contextualRagV1AgentsGet(
      {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
          description: '''List all available Contextual AI agents

Returns:
    List of agent metadata''',
          summary: 'List Agents',
          operationId: 'list_agents_contextual_rag_v1_agents_get',
          consumes: [],
          produces: [],
          security: [],
          tags: ["Contextual Agent Query"],
          deprecated: false)}) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<DataResponseCreateAgentOutputDto>>
      _contextualRagV1AgentsPost({
    required CreateAgentRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Create a new agent

Args:
    request: Agent creation request with name, datastore_id, system_prompt, description

Returns:
    DataResponse containing CreateAgentOutputDto with agent_id''',
        summary: 'Create Agent',
        operationId: 'create_agent_contextual_rag_v1_agents_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseCreateAgentOutputDto,
        DataResponseCreateAgentOutputDto>($request);
  }

  @override
  Future<Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>>
      _contextualRagV1AgentsAgentIdPut({
    required String? agentId,
    required UpdateAgentRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Update an existing agent

Args:
    agent_id: The agent ID
    request: Agent update request with optional name, system_prompt, description

Returns:
    DataResponse with success confirmation''',
        summary: 'Update Agent',
        operationId: 'update_agent_contextual_rag_v1_agents__agent_id__put',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1,
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>($request);
  }

  @override
  Future<Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>>
      _contextualRagV1AgentsAgentIdDelete({
    required String? agentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Delete an agent

Args:
    agent_id: The agent ID

Returns:
    DataResponse with success confirmation''',
        summary: 'Delete Agent',
        operationId: 'delete_agent_contextual_rag_v1_agents__agent_id__delete',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1,
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>($request);
  }

  @override
  Future<Response<DataResponseCreateAgentOutputDto>>
      _contextualRagV1AgentsAgentIdCopyPost({
    required String? agentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Copy an existing agent

Args:
    agent_id: The agent ID to copy

Returns:
    DataResponse containing CreateAgentOutputDto with new agent_id''',
        summary: 'Copy Agent',
        operationId: 'copy_agent_contextual_rag_v1_agents__agent_id__copy_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}/copy');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseCreateAgentOutputDto,
        DataResponseCreateAgentOutputDto>($request);
  }

  @override
  Future<Response<DataResponseAgentMetadataDto>>
      _contextualRagV1AgentsAgentIdMetadataGet({
    required String? agentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get agent metadata

Args:
    agent_id: The agent ID

Returns:
    DataResponse containing AgentMetadataDto with agent details''',
        summary: 'Get Agent Metadata',
        operationId:
            'get_agent_metadata_contextual_rag_v1_agents__agent_id__metadata_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseAgentMetadataDto,
        DataResponseAgentMetadataDto>($request);
  }

  @override
  Future<Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>>
      _contextualRagV1AgentsAgentIdResetPut({
    required String? agentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Reset an agent (clears conversation history)

Args:
    agent_id: The agent ID

Returns:
    DataResponse with success confirmation''',
        summary: 'Reset Agent',
        operationId:
            'reset_agent_contextual_rag_v1_agents__agent_id__reset_put',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}/reset');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1,
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>($request);
  }

  @override
  Future<Response<DataResponseQueryResponseDto>>
      _contextualRagV1AgentsAgentIdQueryPost({
    required String? agentId,
    required QueryRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Query a Contextual AI agent with a message

Args:
    request: Query request containing message content and optional conversation_id, for development, use agent id = 1d17f0ef-7e19-4d34-b769-67fbd2460d6c

Returns:
    DataResponse wrapping QueryResponse with message_id, conversation_id, generated content, and retrieval information''',
        summary: 'Query Agent',
        operationId:
            'query_agent_contextual_rag_v1_agents__agent_id__query_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agent Query"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}/query');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseQueryResponseDto,
        DataResponseQueryResponseDto>($request);
  }

  @override
  Future<Response<DataResponseRetrievalInfoResponseDto>>
      _contextualRagV1AgentsAgentIdQueryMessageIdRetrievalInfoGet({
    required String? agentId,
    required String? messageId,
    required List<String>? contentIds,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get retrieval information for a specific query message

Args:
    agent_id: The agent ID, for development, use agent id = 1d17f0ef-7e19-4d34-b769-67fbd2460d6c
    message_id: The message ID from query response
    content_ids: List of content IDs to filter (required)

Returns:
    DataResponse wrapping RetrievalInfoResponse with retrieved content chunks and metadata''',
        summary: 'Get Retrieval Info',
        operationId:
            'get_retrieval_info_contextual_rag_v1_agents__agent_id__query__message_id__retrieval_info_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agent Query"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse(
        '/contextual-rag/v1/agents/${agentId}/query/${messageId}/retrieval/info');
    final Map<String, dynamic> $params = <String, dynamic>{
      'content_ids': contentIds
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseRetrievalInfoResponseDto,
        DataResponseRetrievalInfoResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _contextualRagV1AgentsAgentIdFeedbackPost({
    required String? agentId,
    required FeedbackRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Provide feedback for a query message

Args:
    agent_id: The agent ID, for development, use agent id = 1d17f0ef-7e19-4d34-b769-67fbd2460d6c
    request: Feedback request with message_id and feedback type (thumbs_up/thumbs_down)

Returns:
    Success response''',
        summary: 'Provide Feedback',
        operationId:
            'provide_feedback_contextual_rag_v1_agents__agent_id__feedback_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agent Query"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}/feedback');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<DataResponseQueryMetricsResponseDto>>
      _contextualRagV1AgentsAgentIdMetricsGet({
    required String? agentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get usage and feedback metrics for an agent

Args:
    agent_id: The agent ID, for development, use agent id = 1d17f0ef-7e19-4d34-b769-67fbd2460d6c

Returns:
    DataResponse wrapping QueryMetricsResponse with usage statistics and feedback data''',
        summary: 'Get Agent Metrics',
        operationId:
            'get_agent_metrics_contextual_rag_v1_agents__agent_id__metrics_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Agent Query"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/agents/${agentId}/metrics');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseQueryMetricsResponseDto,
        DataResponseQueryMetricsResponseDto>($request);
  }

  @override
  Future<Response<DataResponseListDatastoresResponseDto>>
      _contextualRagV1DatastoresGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''List all datastores

Returns:
    DataResponse containing list of datastores''',
              summary: 'List Datastores',
              operationId: 'list_datastores_contextual_rag_v1_datastores_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Datastores"],
              deprecated: false)}) {
    final Uri $url = Uri.parse('/contextual-rag/v1/datastores');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseListDatastoresResponseDto,
        DataResponseListDatastoresResponseDto>($request);
  }

  @override
  Future<Response<DataResponseCreateDatastoreResponseDto>>
      _contextualRagV1DatastoresPost({
    required CreateDatastoreRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Create a new datastore

Args:
    request: Datastore creation request with name and description

Returns:
    DataResponse containing CreateDatastoreResponseDto with datastore_id''',
        summary: 'Create Datastore',
        operationId: 'create_datastore_contextual_rag_v1_datastores_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastores"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/datastores');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseCreateDatastoreResponseDto,
        DataResponseCreateDatastoreResponseDto>($request);
  }

  @override
  Future<Response<DataResponseDatastoreUpdateResponseDto>>
      _contextualRagV1DatastoresDatastoreIdPut({
    required String? datastoreId,
    required UpdateDatastoreRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Update an existing datastore

Args:
    datastore_id: The datastore ID
    request: Datastore update request with optional name and description

Returns:
    DataResponse containing DatastoreUpdateResponseDto with datastore_id''',
        summary: 'Update Datastore',
        operationId:
            'update_datastore_contextual_rag_v1_datastores__datastore_id__put',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastores"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/datastores/${datastoreId}');
    final $body = body;
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseDatastoreUpdateResponseDto,
        DataResponseDatastoreUpdateResponseDto>($request);
  }

  @override
  Future<Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>>
      _contextualRagV1DatastoresDatastoreIdDelete({
    required String? datastoreId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Delete a datastore

Args:
    datastore_id: The datastore ID

Returns:
    DataResponse with success confirmation''',
        summary: 'Delete Datastore',
        operationId:
            'delete_datastore_contextual_rag_v1_datastores__datastore_id__delete',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastores"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/datastores/${datastoreId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2,
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>($request);
  }

  @override
  Future<Response<DataResponseDatastoreMetadataDto>>
      _contextualRagV1DatastoresDatastoreIdMetadataGet({
    required String? datastoreId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get datastore metadata

Args:
    datastore_id: The datastore ID

Returns:
    DataResponse containing DatastoreMetadataDto with datastore details''',
        summary: 'Get Datastore Metadata',
        operationId:
            'get_datastore_metadata_contextual_rag_v1_datastores__datastore_id__metadata_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastores"],
        deprecated: false),
  }) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/datastores/${datastoreId}/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseDatastoreMetadataDto,
        DataResponseDatastoreMetadataDto>($request);
  }

  @override
  Future<Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>>
      _contextualRagV1DatastoresDatastoreIdResetPut({
    required String? datastoreId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Reset a datastore (removes all documents)

Args:
    datastore_id: The datastore ID

Returns:
    DataResponse with success confirmation''',
        summary: 'Reset Datastore',
        operationId:
            'reset_datastore_contextual_rag_v1_datastores__datastore_id__reset_put',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastores"],
        deprecated: false),
  }) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/datastores/${datastoreId}/reset');
    final Request $request = Request(
      'PUT',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2,
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>($request);
  }

  @override
  Future<Response<DataResponseIngestionResponseDto>>
      _contextualRagV1DatastoresDatastoreIdDocumentsPost({
    required String? datastoreId,
    required BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost
        body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Ingest a document into a datastore

Args:
    datastore_id: The datastore ID
    request: Document ingestion request with file, doc_name, and metadata

Returns:
    DataResponse containing IngestionResponseDto with doc_id''',
        summary: 'Ingest Document',
        operationId:
            'ingest_document_contextual_rag_v1_datastores__datastore_id__documents_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastore Documents"],
        deprecated: false),
  }) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/datastores/${datastoreId}/documents');
    final List<PartValue> $parts = <PartValue>[
      PartValue<
          BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost>(
        'body',
        body,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseIngestionResponseDto,
        DataResponseIngestionResponseDto>($request);
  }

  @override
  Future<Response<DataResponseListDocumentsResponseDto>>
      _contextualRagV1DatastoresDatastoreIdDocumentsGet({
    required String? datastoreId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''List documents in a datastore

Args:
    datastore_id: The datastore ID

Returns:
    DataResponse containing ListDocumentsResponseDto with list of documents''',
        summary: 'List Documents',
        operationId:
            'list_documents_contextual_rag_v1_datastores__datastore_id__documents_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastore Documents"],
        deprecated: false),
  }) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/datastores/${datastoreId}/documents');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseListDocumentsResponseDto,
        DataResponseListDocumentsResponseDto>($request);
  }

  @override
  Future<Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3>>
      _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdDelete({
    required String? datastoreId,
    required String? documentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Delete a document from a datastore

Args:
    datastore_id: The datastore ID
    document_id: The document ID

Returns:
    DataResponse with success confirmation''',
        summary: 'Delete Document',
        operationId:
            'delete_document_contextual_rag_v1_datastores__datastore_id__documents__document_id__delete',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastore Documents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse(
        '/contextual-rag/v1/datastores/${datastoreId}/documents/${documentId}');
    final Request $request = Request(
      'DELETE',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3,
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3>($request);
  }

  @override
  Future<Response<DataResponseDocumentMetadataDto>>
      _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataGet({
    required String? datastoreId,
    required String? documentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get document metadata

Args:
    datastore_id: The datastore ID
    document_id: The document ID

Returns:
    DataResponse containing DocumentMetadataDto''',
        summary: 'Get Document Metadata',
        operationId:
            'get_document_metadata_contextual_rag_v1_datastores__datastore_id__documents__document_id__metadata_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastore Documents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse(
        '/contextual-rag/v1/datastores/${datastoreId}/documents/${documentId}/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseDocumentMetadataDto,
        DataResponseDocumentMetadataDto>($request);
  }

  @override
  Future<Response<DataResponseDocumentMetadataDto>>
      _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataPost({
    required String? datastoreId,
    required String? documentId,
    required SetDocumentMetadataRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Set document metadata

Args:
    datastore_id: The datastore ID
    document_id: The document ID
    request: Metadata to set

Returns:
    DataResponse containing updated DocumentMetadataDto''',
        summary: 'Set Document Metadata',
        operationId:
            'set_document_metadata_contextual_rag_v1_datastores__datastore_id__documents__document_id__metadata_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastore Documents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse(
        '/contextual-rag/v1/datastores/${datastoreId}/documents/${documentId}/metadata');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseDocumentMetadataDto,
        DataResponseDocumentMetadataDto>($request);
  }

  @override
  Future<Response<DataResponseParseResultResponseDto>>
      _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdParseGet({
    required String? datastoreId,
    required String? documentId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get parse result for a document

Args:
    datastore_id: The datastore ID
    document_id: The document ID

Returns:
    DataResponse containing parse results''',
        summary: 'Get Parse Result',
        operationId:
            'get_parse_result_contextual_rag_v1_datastores__datastore_id__documents__document_id__parse_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Datastore Documents"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse(
        '/contextual-rag/v1/datastores/${datastoreId}/documents/${documentId}/parse');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseParseResultResponseDto,
        DataResponseParseResultResponseDto>($request);
  }

  @override
  Future<Response<DataResponseParseCreateResponseDto>>
      _contextualRagV1ParseFilePost({
    required BodyParseFileContextualRagV1ParseFilePost body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Submit a file for parsing using Contextual AI Parse API

Args:
    request: Parse file request containing file and parsing options

Returns:
    DataResponse containing parse job information with job_id''',
        summary: 'Parse File',
        operationId: 'parse_file_contextual_rag_v1_parse_file_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Parse"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/parse/file');
    final List<PartValue> $parts = <PartValue>[
      PartValue<BodyParseFileContextualRagV1ParseFilePost>(
        'body',
        body,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseParseCreateResponseDto,
        DataResponseParseCreateResponseDto>($request);
  }

  @override
  Future<Response<DataResponseParseJobStatusResponseDto>>
      _contextualRagV1ParseJobsJobIdStatusGet({
    required String? jobId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get the status of a parse job

Args:
    job_id: The parse job ID, for development use job_id = "b46df328-fd6b-4fee-9aac-6dddafeb238e"

Returns:
    DataResponse containing parse job status information''',
        summary: 'Get Parse Status',
        operationId:
            'get_parse_status_contextual_rag_v1_parse_jobs__job_id__status_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Parse"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/parse/jobs/${jobId}/status');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseParseJobStatusResponseDto,
        DataResponseParseJobStatusResponseDto>($request);
  }

  @override
  Future<Response<DataResponseParseJobResultsResponseDto>>
      _contextualRagV1ParseJobsJobIdResultsGet({
    required String? jobId,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get the results of a completed parse job

Args:
    job_id: The parse job ID

Returns:
    DataResponse containing parse job results''',
        summary: 'Get Parse Result',
        operationId:
            'get_parse_result_contextual_rag_v1_parse_jobs__job_id__results_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Parse"],
        deprecated: false),
  }) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/parse/jobs/${jobId}/results');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseParseJobResultsResponseDto,
        DataResponseParseJobResultsResponseDto>($request);
  }

  @override
  Future<Response<DataResponseParseJobsResponseDto>>
      _contextualRagV1ParseJobsGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''List all parse jobs

Returns:
    DataResponse containing list of parse jobs''',
              summary: 'List Parse Jobs',
              operationId: 'list_parse_jobs_contextual_rag_v1_parse_jobs_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Parse"],
              deprecated: false)}) {
    final Uri $url = Uri.parse('/contextual-rag/v1/parse/jobs');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseParseJobsResponseDto,
        DataResponseParseJobsResponseDto>($request);
  }

  @override
  Future<Response<DataResponseGenerateCreateResponseDto>>
      _contextualRagV1GeneratePost({
    required GenerateRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Generate text using Contextual AI model

Args:
    request: Generation request with model, messages, and optional parameters

Returns:
    DataResponse containing generated text''',
        summary: 'Generate Text',
        operationId: 'generate_text_contextual_rag_v1_generate_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Generate"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/generate');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseGenerateCreateResponseDto,
        DataResponseGenerateCreateResponseDto>($request);
  }

  @override
  Future<Response<DataResponseBalanceResponseDto>>
      _contextualRagV1BillingBalanceGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''Get current account balance

Returns:
    DataResponse containing balance information''',
              summary: 'Get Balance',
              operationId: 'get_balance_contextual_rag_v1_billing_balance_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Billing"],
              deprecated: false)}) {
    final Uri $url = Uri.parse('/contextual-rag/v1/billing/balance');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseBalanceResponseDto,
        DataResponseBalanceResponseDto>($request);
  }

  @override
  Future<Response<DataResponseBalanceResponseDto>>
      _contextualRagV1BillingBalancePost({
    required IncrementBalanceRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Increment account balance

Args:
    request: Request containing amount to add

Returns:
    DataResponse containing updated balance information''',
        summary: 'Increment Balance',
        operationId: 'increment_balance_contextual_rag_v1_billing_balance_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Billing"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/billing/balance');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseBalanceResponseDto,
        DataResponseBalanceResponseDto>($request);
  }

  @override
  Future<Response<DataResponseAutoTopUpResponseDto>>
      _contextualRagV1BillingBalanceAutoTopUpEnablePost({
    required AutoTopUpRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Enable automatic top-up

Args:
    request: Request containing amount and balance threshold

Returns:
    DataResponse containing auto top-up configuration''',
        summary: 'Enable Auto Top Up',
        operationId:
            'enable_auto_top_up_contextual_rag_v1_billing_balance_auto_top_up_enable_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Billing"],
        deprecated: false),
  }) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/billing/balance/auto-top-up/enable');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseAutoTopUpResponseDto,
        DataResponseAutoTopUpResponseDto>($request);
  }

  @override
  Future<Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4>>
      _contextualRagV1BillingBalanceAutoTopUpDisablePost(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''Disable automatic top-up

Returns:
    DataResponse containing success confirmation''',
              summary: 'Disable Auto Top Up',
              operationId:
                  'disable_auto_top_up_contextual_rag_v1_billing_balance_auto_top_up_disable_post',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Billing"],
              deprecated: false)}) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/billing/balance/auto-top-up/disable');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4,
        SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4>($request);
  }

  @override
  Future<Response<DataResponseAutoTopUpStatusResponseDto>>
      _contextualRagV1BillingBalanceAutoTopUpStatusGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''Get auto top-up status

Returns:
    DataResponse containing auto top-up status and configuration''',
              summary: 'Get Auto Top Up Status',
              operationId:
                  'get_auto_top_up_status_contextual_rag_v1_billing_balance_auto_top_up_status_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Billing"],
              deprecated: false)}) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/billing/balance/auto-top-up/status');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseAutoTopUpStatusResponseDto,
        DataResponseAutoTopUpStatusResponseDto>($request);
  }

  @override
  Future<Response<DataResponseTopUpHistoryResponseDto>>
      _contextualRagV1BillingTopUpHistoryGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''Get top-up history

Returns:
    DataResponse containing list of top-up transactions''',
              summary: 'Get Top Up History',
              operationId:
                  'get_top_up_history_contextual_rag_v1_billing_top_up_history_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Billing"],
              deprecated: false)}) {
    final Uri $url = Uri.parse('/contextual-rag/v1/billing/top-up-history');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseTopUpHistoryResponseDto,
        DataResponseTopUpHistoryResponseDto>($request);
  }

  @override
  Future<Response<DataResponseMonthlyUsageResponseDto>>
      _contextualRagV1BillingMonthlyUsageGet({
    int? year,
    int? month,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Get monthly usage statistics

Args:
    year: Optional year filter
    month: Optional month filter

Returns:
    DataResponse containing monthly usage data''',
        summary: 'Get Monthly Usage',
        operationId:
            'get_monthly_usage_contextual_rag_v1_billing_monthly_usage_get',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Billing"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/billing/monthly-usage');
    final Map<String, dynamic> $params = <String, dynamic>{
      'year': year,
      'month': month,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseMonthlyUsageResponseDto,
        DataResponseMonthlyUsageResponseDto>($request);
  }

  @override
  Future<Response<DataResponseEarliestUsageDateResponseDto>>
      _contextualRagV1BillingEarliestUsageDateGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''Get earliest usage date

Returns:
    DataResponse containing earliest usage date information''',
              summary: 'Get Earliest Usage Date',
              operationId:
                  'get_earliest_usage_date_contextual_rag_v1_billing_earliest_usage_date_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Billing"],
              deprecated: false)}) {
    final Uri $url =
        Uri.parse('/contextual-rag/v1/billing/earliest-usage-date');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseEarliestUsageDateResponseDto,
        DataResponseEarliestUsageDateResponseDto>($request);
  }

  @override
  Future<Response<DataResponseBillingModeHistoryResponseDto>>
      _contextualRagV1BillingModeHistoryGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''Get billing mode history

Returns:
    DataResponse containing billing mode change history''',
              summary: 'Get Billing Mode History',
              operationId:
                  'get_billing_mode_history_contextual_rag_v1_billing_mode_history_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Billing"],
              deprecated: false)}) {
    final Uri $url = Uri.parse('/contextual-rag/v1/billing/mode-history');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseBillingModeHistoryResponseDto,
        DataResponseBillingModeHistoryResponseDto>($request);
  }

  @override
  Future<Response<DataResponseBillingMetadataResponseDto>>
      _contextualRagV1BillingMetadataGet(
          {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
              description: '''Get billing metadata

Returns:
    DataResponse containing billing metadata''',
              summary: 'Get Billing Metadata',
              operationId:
                  'get_billing_metadata_contextual_rag_v1_billing_metadata_get',
              consumes: [],
              produces: [],
              security: [],
              tags: ["Contextual Billing"],
              deprecated: false)}) {
    final Uri $url = Uri.parse('/contextual-rag/v1/billing/metadata');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseBillingMetadataResponseDto,
        DataResponseBillingMetadataResponseDto>($request);
  }

  @override
  Future<Response<DataResponseRerankCreateResponseDto>>
      _contextualRagV1RerankPost({
    required RerankRequest? body,
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
        description: '''Rerank documents based on query relevance

Args:
    request: Rerank request containing query, documents, and optional parameters

Returns:
    DataResponse containing reranked documents with relevance scores''',
        summary: 'Rerank Documents',
        operationId: 'rerank_documents_contextual_rag_v1_rerank_post',
        consumes: [],
        produces: [],
        security: [],
        tags: ["Contextual Rerank"],
        deprecated: false),
  }) {
    final Uri $url = Uri.parse('/contextual-rag/v1/rerank');
    final $body = body;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
      tag: swaggerMetaData,
    );
    return client.send<DataResponseRerankCreateResponseDto,
        DataResponseRerankCreateResponseDto>($request);
  }

  @override
  Future<Response<dynamic>> _get(
      {SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
          description: '',
          summary: 'Health',
          operationId: 'health__get',
          consumes: [],
          produces: [],
          security: [],
          tags: [],
          deprecated: false)}) {
    final Uri $url = Uri.parse('/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      tag: swaggerMetaData,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
