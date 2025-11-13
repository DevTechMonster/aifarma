// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element_parameter

import 'package:json_annotation/json_annotation.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:collection/collection.dart';
import 'dart:convert';

import 'aifarma_core_service.models.swagger.dart';
import 'package:chopper/chopper.dart';

import 'client_mapping.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' show MultipartFile;
import 'package:chopper/chopper.dart' as chopper;
import 'aifarma_core_service.enums.swagger.dart' as enums;
import 'aifarma_core_service.metadata.swagger.dart';
export 'aifarma_core_service.enums.swagger.dart';
export 'aifarma_core_service.models.swagger.dart';

part 'aifarma_core_service.swagger.chopper.dart';

// **************************************************************************
// SwaggerChopperGenerator
// **************************************************************************

@ChopperApi()
abstract class AifarmaCoreService extends ChopperService {
  static AifarmaCoreService create({
    ChopperClient? client,
    http.Client? httpClient,
    Authenticator? authenticator,
    ErrorConverter? errorConverter,
    Converter? converter,
    Uri? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    if (client != null) {
      return _$AifarmaCoreService(client);
    }

    final newClient = ChopperClient(
      services: [_$AifarmaCoreService()],
      converter: converter ?? $JsonSerializableConverter(),
      interceptors: interceptors ?? [],
      client: httpClient,
      authenticator: authenticator,
      errorConverter: errorConverter,
      baseUrl: baseUrl ?? Uri.parse('http://'),
    );
    return _$AifarmaCoreService(newClient);
  }

  ///List Agents
  Future<chopper.Response> contextualRagV1AgentsGet() {
    return _contextualRagV1AgentsGet();
  }

  ///List Agents
  @GET(path: '/contextual-rag/v1/agents')
  Future<chopper.Response> _contextualRagV1AgentsGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''List all available Contextual AI agents

Returns:
    List of agent metadata''',
      summary: 'List Agents',
      operationId: 'list_agents_contextual_rag_v1_agents_get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Contextual Agent Query"],
      deprecated: false,
    ),
  });

  ///Create Agent
  Future<chopper.Response<DataResponseCreateAgentOutputDto>>
  contextualRagV1AgentsPost({required CreateAgentRequest? body}) {
    generatedMapping.putIfAbsent(
      DataResponseCreateAgentOutputDto,
      () => DataResponseCreateAgentOutputDto.fromJsonFactory,
    );

    return _contextualRagV1AgentsPost(body: body);
  }

  ///Create Agent
  @POST(path: '/contextual-rag/v1/agents', optionalBody: true)
  Future<chopper.Response<DataResponseCreateAgentOutputDto>>
  _contextualRagV1AgentsPost({
    @Body() required CreateAgentRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Update Agent
  ///@param agent_id
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>
  >
  contextualRagV1AgentsAgentIdPut({
    required String? agentId,
    required UpdateAgentRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1,
      () => SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1
          .fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdPut(agentId: agentId, body: body);
  }

  ///Update Agent
  ///@param agent_id
  @PUT(path: '/contextual-rag/v1/agents/{agent_id}', optionalBody: true)
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>
  >
  _contextualRagV1AgentsAgentIdPut({
    @Path('agent_id') required String? agentId,
    @Body() required UpdateAgentRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Delete Agent
  ///@param agent_id
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>
  >
  contextualRagV1AgentsAgentIdDelete({required String? agentId}) {
    generatedMapping.putIfAbsent(
      SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1,
      () => SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1
          .fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdDelete(agentId: agentId);
  }

  ///Delete Agent
  ///@param agent_id
  @DELETE(path: '/contextual-rag/v1/agents/{agent_id}')
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>
  >
  _contextualRagV1AgentsAgentIdDelete({
    @Path('agent_id') required String? agentId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Copy Agent
  ///@param agent_id
  Future<chopper.Response<DataResponseCreateAgentOutputDto>>
  contextualRagV1AgentsAgentIdCopyPost({required String? agentId}) {
    generatedMapping.putIfAbsent(
      DataResponseCreateAgentOutputDto,
      () => DataResponseCreateAgentOutputDto.fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdCopyPost(agentId: agentId);
  }

  ///Copy Agent
  ///@param agent_id
  @POST(path: '/contextual-rag/v1/agents/{agent_id}/copy', optionalBody: true)
  Future<chopper.Response<DataResponseCreateAgentOutputDto>>
  _contextualRagV1AgentsAgentIdCopyPost({
    @Path('agent_id') required String? agentId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Agent Metadata
  ///@param agent_id
  Future<chopper.Response<DataResponseAgentMetadataDto>>
  contextualRagV1AgentsAgentIdMetadataGet({required String? agentId}) {
    generatedMapping.putIfAbsent(
      DataResponseAgentMetadataDto,
      () => DataResponseAgentMetadataDto.fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdMetadataGet(agentId: agentId);
  }

  ///Get Agent Metadata
  ///@param agent_id
  @GET(path: '/contextual-rag/v1/agents/{agent_id}/metadata')
  Future<chopper.Response<DataResponseAgentMetadataDto>>
  _contextualRagV1AgentsAgentIdMetadataGet({
    @Path('agent_id') required String? agentId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Reset Agent
  ///@param agent_id
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>
  >
  contextualRagV1AgentsAgentIdResetPut({required String? agentId}) {
    generatedMapping.putIfAbsent(
      SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1,
      () => SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1
          .fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdResetPut(agentId: agentId);
  }

  ///Reset Agent
  ///@param agent_id
  @PUT(path: '/contextual-rag/v1/agents/{agent_id}/reset', optionalBody: true)
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1>
  >
  _contextualRagV1AgentsAgentIdResetPut({
    @Path('agent_id') required String? agentId,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''Reset an agent (clears conversation history)

Args:
    agent_id: The agent ID

Returns:
    DataResponse with success confirmation''',
      summary: 'Reset Agent',
      operationId: 'reset_agent_contextual_rag_v1_agents__agent_id__reset_put',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Contextual Agents"],
      deprecated: false,
    ),
  });

  ///Query Agent
  ///@param agent_id
  Future<chopper.Response<DataResponseQueryResponseDto>>
  contextualRagV1AgentsAgentIdQueryPost({
    required String? agentId,
    required QueryRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseQueryResponseDto,
      () => DataResponseQueryResponseDto.fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdQueryPost(agentId: agentId, body: body);
  }

  ///Query Agent
  ///@param agent_id
  @POST(path: '/contextual-rag/v1/agents/{agent_id}/query', optionalBody: true)
  Future<chopper.Response<DataResponseQueryResponseDto>>
  _contextualRagV1AgentsAgentIdQueryPost({
    @Path('agent_id') required String? agentId,
    @Body() required QueryRequest? body,
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''Query a Contextual AI agent with a message

Args:
    request: Query request containing message content and optional conversation_id, for development, use agent id = 1d17f0ef-7e19-4d34-b769-67fbd2460d6c

Returns:
    DataResponse wrapping QueryResponse with message_id, conversation_id, generated content, and retrieval information''',
      summary: 'Query Agent',
      operationId: 'query_agent_contextual_rag_v1_agents__agent_id__query_post',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Contextual Agent Query"],
      deprecated: false,
    ),
  });

  ///Get Retrieval Info
  ///@param agent_id
  ///@param message_id
  ///@param content_ids List of content IDs, can get from retrieval_contents parameter
  Future<chopper.Response<DataResponseRetrievalInfoResponseDto>>
  contextualRagV1AgentsAgentIdQueryMessageIdRetrievalInfoGet({
    required String? agentId,
    required String? messageId,
    required List<String>? contentIds,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseRetrievalInfoResponseDto,
      () => DataResponseRetrievalInfoResponseDto.fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdQueryMessageIdRetrievalInfoGet(
      agentId: agentId,
      messageId: messageId,
      contentIds: contentIds,
    );
  }

  ///Get Retrieval Info
  ///@param agent_id
  ///@param message_id
  ///@param content_ids List of content IDs, can get from retrieval_contents parameter
  @GET(
    path:
        '/contextual-rag/v1/agents/{agent_id}/query/{message_id}/retrieval/info',
  )
  Future<chopper.Response<DataResponseRetrievalInfoResponseDto>>
  _contextualRagV1AgentsAgentIdQueryMessageIdRetrievalInfoGet({
    @Path('agent_id') required String? agentId,
    @Path('message_id') required String? messageId,
    @Query('content_ids') required List<String>? contentIds,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Provide Feedback
  ///@param agent_id
  Future<chopper.Response> contextualRagV1AgentsAgentIdFeedbackPost({
    required String? agentId,
    required FeedbackRequest? body,
  }) {
    return _contextualRagV1AgentsAgentIdFeedbackPost(
      agentId: agentId,
      body: body,
    );
  }

  ///Provide Feedback
  ///@param agent_id
  @POST(
    path: '/contextual-rag/v1/agents/{agent_id}/feedback',
    optionalBody: true,
  )
  Future<chopper.Response> _contextualRagV1AgentsAgentIdFeedbackPost({
    @Path('agent_id') required String? agentId,
    @Body() required FeedbackRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Agent Metrics
  ///@param agent_id
  Future<chopper.Response<DataResponseQueryMetricsResponseDto>>
  contextualRagV1AgentsAgentIdMetricsGet({required String? agentId}) {
    generatedMapping.putIfAbsent(
      DataResponseQueryMetricsResponseDto,
      () => DataResponseQueryMetricsResponseDto.fromJsonFactory,
    );

    return _contextualRagV1AgentsAgentIdMetricsGet(agentId: agentId);
  }

  ///Get Agent Metrics
  ///@param agent_id
  @GET(path: '/contextual-rag/v1/agents/{agent_id}/metrics')
  Future<chopper.Response<DataResponseQueryMetricsResponseDto>>
  _contextualRagV1AgentsAgentIdMetricsGet({
    @Path('agent_id') required String? agentId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///List Datastores
  Future<chopper.Response<DataResponseListDatastoresResponseDto>>
  contextualRagV1DatastoresGet() {
    generatedMapping.putIfAbsent(
      DataResponseListDatastoresResponseDto,
      () => DataResponseListDatastoresResponseDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresGet();
  }

  ///List Datastores
  @GET(path: '/contextual-rag/v1/datastores')
  Future<chopper.Response<DataResponseListDatastoresResponseDto>>
  _contextualRagV1DatastoresGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''List all datastores

Returns:
    DataResponse containing list of datastores''',
      summary: 'List Datastores',
      operationId: 'list_datastores_contextual_rag_v1_datastores_get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Contextual Datastores"],
      deprecated: false,
    ),
  });

  ///Create Datastore
  Future<chopper.Response<DataResponseCreateDatastoreResponseDto>>
  contextualRagV1DatastoresPost({required CreateDatastoreRequest? body}) {
    generatedMapping.putIfAbsent(
      DataResponseCreateDatastoreResponseDto,
      () => DataResponseCreateDatastoreResponseDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresPost(body: body);
  }

  ///Create Datastore
  @POST(path: '/contextual-rag/v1/datastores', optionalBody: true)
  Future<chopper.Response<DataResponseCreateDatastoreResponseDto>>
  _contextualRagV1DatastoresPost({
    @Body() required CreateDatastoreRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Update Datastore
  ///@param datastore_id
  Future<chopper.Response<DataResponseDatastoreUpdateResponseDto>>
  contextualRagV1DatastoresDatastoreIdPut({
    required String? datastoreId,
    required UpdateDatastoreRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseDatastoreUpdateResponseDto,
      () => DataResponseDatastoreUpdateResponseDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdPut(
      datastoreId: datastoreId,
      body: body,
    );
  }

  ///Update Datastore
  ///@param datastore_id
  @PUT(path: '/contextual-rag/v1/datastores/{datastore_id}', optionalBody: true)
  Future<chopper.Response<DataResponseDatastoreUpdateResponseDto>>
  _contextualRagV1DatastoresDatastoreIdPut({
    @Path('datastore_id') required String? datastoreId,
    @Body() required UpdateDatastoreRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Delete Datastore
  ///@param datastore_id
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>
  >
  contextualRagV1DatastoresDatastoreIdDelete({required String? datastoreId}) {
    generatedMapping.putIfAbsent(
      SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2,
      () => SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2
          .fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdDelete(
      datastoreId: datastoreId,
    );
  }

  ///Delete Datastore
  ///@param datastore_id
  @DELETE(path: '/contextual-rag/v1/datastores/{datastore_id}')
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>
  >
  _contextualRagV1DatastoresDatastoreIdDelete({
    @Path('datastore_id') required String? datastoreId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Datastore Metadata
  ///@param datastore_id
  Future<chopper.Response<DataResponseDatastoreMetadataDto>>
  contextualRagV1DatastoresDatastoreIdMetadataGet({
    required String? datastoreId,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseDatastoreMetadataDto,
      () => DataResponseDatastoreMetadataDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdMetadataGet(
      datastoreId: datastoreId,
    );
  }

  ///Get Datastore Metadata
  ///@param datastore_id
  @GET(path: '/contextual-rag/v1/datastores/{datastore_id}/metadata')
  Future<chopper.Response<DataResponseDatastoreMetadataDto>>
  _contextualRagV1DatastoresDatastoreIdMetadataGet({
    @Path('datastore_id') required String? datastoreId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Reset Datastore
  ///@param datastore_id
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>
  >
  contextualRagV1DatastoresDatastoreIdResetPut({required String? datastoreId}) {
    generatedMapping.putIfAbsent(
      SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2,
      () => SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2
          .fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdResetPut(
      datastoreId: datastoreId,
    );
  }

  ///Reset Datastore
  ///@param datastore_id
  @PUT(
    path: '/contextual-rag/v1/datastores/{datastore_id}/reset',
    optionalBody: true,
  )
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2>
  >
  _contextualRagV1DatastoresDatastoreIdResetPut({
    @Path('datastore_id') required String? datastoreId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Ingest Document
  ///@param datastore_id
  Future<chopper.Response<DataResponseIngestionResponseDto>>
  contextualRagV1DatastoresDatastoreIdDocumentsPost({
    required String? datastoreId,
    required BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost
    body,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseIngestionResponseDto,
      () => DataResponseIngestionResponseDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdDocumentsPost(
      datastoreId: datastoreId,
      body: body,
    );
  }

  ///Ingest Document
  ///@param datastore_id
  @POST(
    path: '/contextual-rag/v1/datastores/{datastore_id}/documents',
    optionalBody: true,
  )
  @Multipart()
  Future<chopper.Response<DataResponseIngestionResponseDto>>
  _contextualRagV1DatastoresDatastoreIdDocumentsPost({
    @Path('datastore_id') required String? datastoreId,
    @Part()
    required BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost
    body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///List Documents
  ///@param datastore_id
  Future<chopper.Response<DataResponseListDocumentsResponseDto>>
  contextualRagV1DatastoresDatastoreIdDocumentsGet({
    required String? datastoreId,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseListDocumentsResponseDto,
      () => DataResponseListDocumentsResponseDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdDocumentsGet(
      datastoreId: datastoreId,
    );
  }

  ///List Documents
  ///@param datastore_id
  @GET(path: '/contextual-rag/v1/datastores/{datastore_id}/documents')
  Future<chopper.Response<DataResponseListDocumentsResponseDto>>
  _contextualRagV1DatastoresDatastoreIdDocumentsGet({
    @Path('datastore_id') required String? datastoreId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Delete Document
  ///@param datastore_id
  ///@param document_id
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3>
  >
  contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdDelete({
    required String? datastoreId,
    required String? documentId,
  }) {
    generatedMapping.putIfAbsent(
      SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3,
      () => SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3
          .fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdDelete(
      datastoreId: datastoreId,
      documentId: documentId,
    );
  }

  ///Delete Document
  ///@param datastore_id
  ///@param document_id
  @DELETE(
    path:
        '/contextual-rag/v1/datastores/{datastore_id}/documents/{document_id}',
  )
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3>
  >
  _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdDelete({
    @Path('datastore_id') required String? datastoreId,
    @Path('document_id') required String? documentId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Document Metadata
  ///@param datastore_id
  ///@param document_id
  Future<chopper.Response<DataResponseDocumentMetadataDto>>
  contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataGet({
    required String? datastoreId,
    required String? documentId,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseDocumentMetadataDto,
      () => DataResponseDocumentMetadataDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataGet(
      datastoreId: datastoreId,
      documentId: documentId,
    );
  }

  ///Get Document Metadata
  ///@param datastore_id
  ///@param document_id
  @GET(
    path:
        '/contextual-rag/v1/datastores/{datastore_id}/documents/{document_id}/metadata',
  )
  Future<chopper.Response<DataResponseDocumentMetadataDto>>
  _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataGet({
    @Path('datastore_id') required String? datastoreId,
    @Path('document_id') required String? documentId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Set Document Metadata
  ///@param datastore_id
  ///@param document_id
  Future<chopper.Response<DataResponseDocumentMetadataDto>>
  contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataPost({
    required String? datastoreId,
    required String? documentId,
    required SetDocumentMetadataRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseDocumentMetadataDto,
      () => DataResponseDocumentMetadataDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataPost(
      datastoreId: datastoreId,
      documentId: documentId,
      body: body,
    );
  }

  ///Set Document Metadata
  ///@param datastore_id
  ///@param document_id
  @POST(
    path:
        '/contextual-rag/v1/datastores/{datastore_id}/documents/{document_id}/metadata',
    optionalBody: true,
  )
  Future<chopper.Response<DataResponseDocumentMetadataDto>>
  _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdMetadataPost({
    @Path('datastore_id') required String? datastoreId,
    @Path('document_id') required String? documentId,
    @Body() required SetDocumentMetadataRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Parse Result
  ///@param datastore_id
  ///@param document_id
  Future<chopper.Response<DataResponseParseResultResponseDto>>
  contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdParseGet({
    required String? datastoreId,
    required String? documentId,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseParseResultResponseDto,
      () => DataResponseParseResultResponseDto.fromJsonFactory,
    );

    return _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdParseGet(
      datastoreId: datastoreId,
      documentId: documentId,
    );
  }

  ///Get Parse Result
  ///@param datastore_id
  ///@param document_id
  @GET(
    path:
        '/contextual-rag/v1/datastores/{datastore_id}/documents/{document_id}/parse',
  )
  Future<chopper.Response<DataResponseParseResultResponseDto>>
  _contextualRagV1DatastoresDatastoreIdDocumentsDocumentIdParseGet({
    @Path('datastore_id') required String? datastoreId,
    @Path('document_id') required String? documentId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Parse File
  Future<chopper.Response<DataResponseParseCreateResponseDto>>
  contextualRagV1ParseFilePost({
    required BodyParseFileContextualRagV1ParseFilePost body,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseParseCreateResponseDto,
      () => DataResponseParseCreateResponseDto.fromJsonFactory,
    );

    return _contextualRagV1ParseFilePost(body: body);
  }

  ///Parse File
  @POST(path: '/contextual-rag/v1/parse/file', optionalBody: true)
  @Multipart()
  Future<chopper.Response<DataResponseParseCreateResponseDto>>
  _contextualRagV1ParseFilePost({
    @Part() required BodyParseFileContextualRagV1ParseFilePost body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Parse Status
  ///@param job_id
  Future<chopper.Response<DataResponseParseJobStatusResponseDto>>
  contextualRagV1ParseJobsJobIdStatusGet({required String? jobId}) {
    generatedMapping.putIfAbsent(
      DataResponseParseJobStatusResponseDto,
      () => DataResponseParseJobStatusResponseDto.fromJsonFactory,
    );

    return _contextualRagV1ParseJobsJobIdStatusGet(jobId: jobId);
  }

  ///Get Parse Status
  ///@param job_id
  @GET(path: '/contextual-rag/v1/parse/jobs/{job_id}/status')
  Future<chopper.Response<DataResponseParseJobStatusResponseDto>>
  _contextualRagV1ParseJobsJobIdStatusGet({
    @Path('job_id') required String? jobId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Parse Result
  ///@param job_id
  Future<chopper.Response<DataResponseParseJobResultsResponseDto>>
  contextualRagV1ParseJobsJobIdResultsGet({required String? jobId}) {
    generatedMapping.putIfAbsent(
      DataResponseParseJobResultsResponseDto,
      () => DataResponseParseJobResultsResponseDto.fromJsonFactory,
    );

    return _contextualRagV1ParseJobsJobIdResultsGet(jobId: jobId);
  }

  ///Get Parse Result
  ///@param job_id
  @GET(path: '/contextual-rag/v1/parse/jobs/{job_id}/results')
  Future<chopper.Response<DataResponseParseJobResultsResponseDto>>
  _contextualRagV1ParseJobsJobIdResultsGet({
    @Path('job_id') required String? jobId,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///List Parse Jobs
  Future<chopper.Response<DataResponseParseJobsResponseDto>>
  contextualRagV1ParseJobsGet() {
    generatedMapping.putIfAbsent(
      DataResponseParseJobsResponseDto,
      () => DataResponseParseJobsResponseDto.fromJsonFactory,
    );

    return _contextualRagV1ParseJobsGet();
  }

  ///List Parse Jobs
  @GET(path: '/contextual-rag/v1/parse/jobs')
  Future<chopper.Response<DataResponseParseJobsResponseDto>>
  _contextualRagV1ParseJobsGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''List all parse jobs

Returns:
    DataResponse containing list of parse jobs''',
      summary: 'List Parse Jobs',
      operationId: 'list_parse_jobs_contextual_rag_v1_parse_jobs_get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Contextual Parse"],
      deprecated: false,
    ),
  });

  ///Generate Text
  Future<chopper.Response<DataResponseGenerateCreateResponseDto>>
  contextualRagV1GeneratePost({required GenerateRequest? body}) {
    generatedMapping.putIfAbsent(
      DataResponseGenerateCreateResponseDto,
      () => DataResponseGenerateCreateResponseDto.fromJsonFactory,
    );

    return _contextualRagV1GeneratePost(body: body);
  }

  ///Generate Text
  @POST(path: '/contextual-rag/v1/generate', optionalBody: true)
  Future<chopper.Response<DataResponseGenerateCreateResponseDto>>
  _contextualRagV1GeneratePost({
    @Body() required GenerateRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Balance
  Future<chopper.Response<DataResponseBalanceResponseDto>>
  contextualRagV1BillingBalanceGet() {
    generatedMapping.putIfAbsent(
      DataResponseBalanceResponseDto,
      () => DataResponseBalanceResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingBalanceGet();
  }

  ///Get Balance
  @GET(path: '/contextual-rag/v1/billing/balance')
  Future<chopper.Response<DataResponseBalanceResponseDto>>
  _contextualRagV1BillingBalanceGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '''Get current account balance

Returns:
    DataResponse containing balance information''',
      summary: 'Get Balance',
      operationId: 'get_balance_contextual_rag_v1_billing_balance_get',
      consumes: [],
      produces: [],
      security: [],
      tags: ["Contextual Billing"],
      deprecated: false,
    ),
  });

  ///Increment Balance
  Future<chopper.Response<DataResponseBalanceResponseDto>>
  contextualRagV1BillingBalancePost({required IncrementBalanceRequest? body}) {
    generatedMapping.putIfAbsent(
      DataResponseBalanceResponseDto,
      () => DataResponseBalanceResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingBalancePost(body: body);
  }

  ///Increment Balance
  @POST(path: '/contextual-rag/v1/billing/balance', optionalBody: true)
  Future<chopper.Response<DataResponseBalanceResponseDto>>
  _contextualRagV1BillingBalancePost({
    @Body() required IncrementBalanceRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Enable Auto Top Up
  Future<chopper.Response<DataResponseAutoTopUpResponseDto>>
  contextualRagV1BillingBalanceAutoTopUpEnablePost({
    required AutoTopUpRequest? body,
  }) {
    generatedMapping.putIfAbsent(
      DataResponseAutoTopUpResponseDto,
      () => DataResponseAutoTopUpResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingBalanceAutoTopUpEnablePost(body: body);
  }

  ///Enable Auto Top Up
  @POST(
    path: '/contextual-rag/v1/billing/balance/auto-top-up/enable',
    optionalBody: true,
  )
  Future<chopper.Response<DataResponseAutoTopUpResponseDto>>
  _contextualRagV1BillingBalanceAutoTopUpEnablePost({
    @Body() required AutoTopUpRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Disable Auto Top Up
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4>
  >
  contextualRagV1BillingBalanceAutoTopUpDisablePost() {
    generatedMapping.putIfAbsent(
      SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4,
      () => SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4
          .fromJsonFactory,
    );

    return _contextualRagV1BillingBalanceAutoTopUpDisablePost();
  }

  ///Disable Auto Top Up
  @POST(
    path: '/contextual-rag/v1/billing/balance/auto-top-up/disable',
    optionalBody: true,
  )
  Future<
    chopper.Response<SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4>
  >
  _contextualRagV1BillingBalanceAutoTopUpDisablePost({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
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
      deprecated: false,
    ),
  });

  ///Get Auto Top Up Status
  Future<chopper.Response<DataResponseAutoTopUpStatusResponseDto>>
  contextualRagV1BillingBalanceAutoTopUpStatusGet() {
    generatedMapping.putIfAbsent(
      DataResponseAutoTopUpStatusResponseDto,
      () => DataResponseAutoTopUpStatusResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingBalanceAutoTopUpStatusGet();
  }

  ///Get Auto Top Up Status
  @GET(path: '/contextual-rag/v1/billing/balance/auto-top-up/status')
  Future<chopper.Response<DataResponseAutoTopUpStatusResponseDto>>
  _contextualRagV1BillingBalanceAutoTopUpStatusGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
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
      deprecated: false,
    ),
  });

  ///Get Top Up History
  Future<chopper.Response<DataResponseTopUpHistoryResponseDto>>
  contextualRagV1BillingTopUpHistoryGet() {
    generatedMapping.putIfAbsent(
      DataResponseTopUpHistoryResponseDto,
      () => DataResponseTopUpHistoryResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingTopUpHistoryGet();
  }

  ///Get Top Up History
  @GET(path: '/contextual-rag/v1/billing/top-up-history')
  Future<chopper.Response<DataResponseTopUpHistoryResponseDto>>
  _contextualRagV1BillingTopUpHistoryGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
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
      deprecated: false,
    ),
  });

  ///Get Monthly Usage
  ///@param year
  ///@param month
  Future<chopper.Response<DataResponseMonthlyUsageResponseDto>>
  contextualRagV1BillingMonthlyUsageGet({int? year, int? month}) {
    generatedMapping.putIfAbsent(
      DataResponseMonthlyUsageResponseDto,
      () => DataResponseMonthlyUsageResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingMonthlyUsageGet(year: year, month: month);
  }

  ///Get Monthly Usage
  ///@param year
  ///@param month
  @GET(path: '/contextual-rag/v1/billing/monthly-usage')
  Future<chopper.Response<DataResponseMonthlyUsageResponseDto>>
  _contextualRagV1BillingMonthlyUsageGet({
    @Query('year') int? year,
    @Query('month') int? month,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Get Earliest Usage Date
  Future<chopper.Response<DataResponseEarliestUsageDateResponseDto>>
  contextualRagV1BillingEarliestUsageDateGet() {
    generatedMapping.putIfAbsent(
      DataResponseEarliestUsageDateResponseDto,
      () => DataResponseEarliestUsageDateResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingEarliestUsageDateGet();
  }

  ///Get Earliest Usage Date
  @GET(path: '/contextual-rag/v1/billing/earliest-usage-date')
  Future<chopper.Response<DataResponseEarliestUsageDateResponseDto>>
  _contextualRagV1BillingEarliestUsageDateGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
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
      deprecated: false,
    ),
  });

  ///Get Billing Mode History
  Future<chopper.Response<DataResponseBillingModeHistoryResponseDto>>
  contextualRagV1BillingModeHistoryGet() {
    generatedMapping.putIfAbsent(
      DataResponseBillingModeHistoryResponseDto,
      () => DataResponseBillingModeHistoryResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingModeHistoryGet();
  }

  ///Get Billing Mode History
  @GET(path: '/contextual-rag/v1/billing/mode-history')
  Future<chopper.Response<DataResponseBillingModeHistoryResponseDto>>
  _contextualRagV1BillingModeHistoryGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
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
      deprecated: false,
    ),
  });

  ///Get Billing Metadata
  Future<chopper.Response<DataResponseBillingMetadataResponseDto>>
  contextualRagV1BillingMetadataGet() {
    generatedMapping.putIfAbsent(
      DataResponseBillingMetadataResponseDto,
      () => DataResponseBillingMetadataResponseDto.fromJsonFactory,
    );

    return _contextualRagV1BillingMetadataGet();
  }

  ///Get Billing Metadata
  @GET(path: '/contextual-rag/v1/billing/metadata')
  Future<chopper.Response<DataResponseBillingMetadataResponseDto>>
  _contextualRagV1BillingMetadataGet({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
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
      deprecated: false,
    ),
  });

  ///Rerank Documents
  Future<chopper.Response<DataResponseRerankCreateResponseDto>>
  contextualRagV1RerankPost({required RerankRequest? body}) {
    generatedMapping.putIfAbsent(
      DataResponseRerankCreateResponseDto,
      () => DataResponseRerankCreateResponseDto.fromJsonFactory,
    );

    return _contextualRagV1RerankPost(body: body);
  }

  ///Rerank Documents
  @POST(path: '/contextual-rag/v1/rerank', optionalBody: true)
  Future<chopper.Response<DataResponseRerankCreateResponseDto>>
  _contextualRagV1RerankPost({
    @Body() required RerankRequest? body,
    @chopper.Tag()
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
      deprecated: false,
    ),
  });

  ///Health
  Future<chopper.Response> get() {
    return _get();
  }

  ///Health
  @GET(path: '/')
  Future<chopper.Response> _get({
    @chopper.Tag()
    SwaggerMetaData swaggerMetaData = const SwaggerMetaData(
      description: '',
      summary: 'Health',
      operationId: 'health__get',
      consumes: [],
      produces: [],
      security: [],
      tags: [],
      deprecated: false,
    ),
  });
}

typedef $JsonFactory<T> = T Function(Map<String, dynamic> json);

class $CustomJsonDecoder {
  $CustomJsonDecoder(this.factories);

  final Map<Type, $JsonFactory> factories;

  dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is T) {
      return entity;
    }

    if (isTypeOf<T, Map>()) {
      return entity;
    }

    if (isTypeOf<T, Iterable>()) {
      return entity;
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  T _decodeMap<T>(Map<String, dynamic> values) {
    final jsonFactory = factories[T];
    if (jsonFactory == null || jsonFactory is! $JsonFactory<T>) {
      return throw "Could not find factory for type $T. Is '$T: $T.fromJsonFactory' included in the CustomJsonDecoder instance creation in bootstrapper.dart?";
    }

    return jsonFactory(values);
  }

  List<T> _decodeList<T>(Iterable values) =>
      values.where((v) => v != null).map<T>((v) => decode<T>(v) as T).toList();
}

class $JsonSerializableConverter extends chopper.JsonConverter {
  @override
  FutureOr<chopper.Response<ResultType>> convertResponse<ResultType, Item>(
    chopper.Response response,
  ) async {
    if (response.bodyString.isEmpty) {
      // In rare cases, when let's say 204 (no content) is returned -
      // we cannot decode the missing json with the result type specified
      return chopper.Response(response.base, null, error: response.error);
    }

    if (ResultType == String) {
      return response.copyWith();
    }

    if (ResultType == DateTime) {
      return response.copyWith(
        body:
            DateTime.parse((response.body as String).replaceAll('"', ''))
                as ResultType,
      );
    }

    final jsonRes = await super.convertResponse(response);
    return jsonRes.copyWith<ResultType>(
      body: $jsonDecoder.decode<Item>(jsonRes.body) as ResultType,
    );
  }
}

final $jsonDecoder = $CustomJsonDecoder(generatedMapping);
