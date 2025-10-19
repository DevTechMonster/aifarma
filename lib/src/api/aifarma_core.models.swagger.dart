// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'aifarma_core.enums.swagger.dart' as enums;

part 'aifarma_core.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class AgentDto {
  const AgentDto({
    required this.id,
    required this.description,
    required this.name,
  });

  factory AgentDto.fromJson(Map<String, dynamic> json) =>
      _$AgentDtoFromJson(json);

  static const toJsonFactory = _$AgentDtoToJson;
  Map<String, dynamic> toJson() => _$AgentDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'name')
  final String name;
  static const fromJsonFactory = _$AgentDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AgentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(name) ^
      runtimeType.hashCode;
}

extension $AgentDtoExtension on AgentDto {
  AgentDto copyWith({String? id, String? description, String? name}) {
    return AgentDto(
      id: id ?? this.id,
      description: description ?? this.description,
      name: name ?? this.name,
    );
  }

  AgentDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? description,
    Wrapped<String>? name,
  }) {
    return AgentDto(
      id: (id != null ? id.value : this.id),
      description: (description != null ? description.value : this.description),
      name: (name != null ? name.value : this.name),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AgentMetadataDto {
  const AgentMetadataDto({
    required this.datastoreIds,
    required this.name,
    required this.templateName,
    this.agentConfigs,
    this.agentUsages,
    this.description,
    this.filterPrompt,
    this.llmModelId,
    this.multiturnSystemPrompt,
    this.noRetrievalSystemPrompt,
    this.suggestedQueries,
    this.systemPrompt,
  });

  factory AgentMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$AgentMetadataDtoFromJson(json);

  static const toJsonFactory = _$AgentMetadataDtoToJson;
  Map<String, dynamic> toJson() => _$AgentMetadataDtoToJson(this);

  @JsonKey(name: 'datastore_ids', defaultValue: <String>[])
  final List<String> datastoreIds;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'template_name')
  final String templateName;
  @JsonKey(name: 'agent_configs')
  final Object? agentConfigs;
  @JsonKey(name: 'agent_usages')
  final AgentUsagesDto? agentUsages;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'filter_prompt')
  final String? filterPrompt;
  @JsonKey(name: 'llm_model_id')
  final String? llmModelId;
  @JsonKey(name: 'multiturn_system_prompt')
  final String? multiturnSystemPrompt;
  @JsonKey(name: 'no_retrieval_system_prompt')
  final String? noRetrievalSystemPrompt;
  @JsonKey(name: 'suggested_queries', defaultValue: <String>[])
  final List<String>? suggestedQueries;
  @JsonKey(name: 'system_prompt')
  final String? systemPrompt;
  static const fromJsonFactory = _$AgentMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AgentMetadataDto &&
            (identical(other.datastoreIds, datastoreIds) ||
                const DeepCollectionEquality().equals(
                  other.datastoreIds,
                  datastoreIds,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.templateName, templateName) ||
                const DeepCollectionEquality().equals(
                  other.templateName,
                  templateName,
                )) &&
            (identical(other.agentConfigs, agentConfigs) ||
                const DeepCollectionEquality().equals(
                  other.agentConfigs,
                  agentConfigs,
                )) &&
            (identical(other.agentUsages, agentUsages) ||
                const DeepCollectionEquality().equals(
                  other.agentUsages,
                  agentUsages,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )) &&
            (identical(other.filterPrompt, filterPrompt) ||
                const DeepCollectionEquality().equals(
                  other.filterPrompt,
                  filterPrompt,
                )) &&
            (identical(other.llmModelId, llmModelId) ||
                const DeepCollectionEquality().equals(
                  other.llmModelId,
                  llmModelId,
                )) &&
            (identical(other.multiturnSystemPrompt, multiturnSystemPrompt) ||
                const DeepCollectionEquality().equals(
                  other.multiturnSystemPrompt,
                  multiturnSystemPrompt,
                )) &&
            (identical(
                  other.noRetrievalSystemPrompt,
                  noRetrievalSystemPrompt,
                ) ||
                const DeepCollectionEquality().equals(
                  other.noRetrievalSystemPrompt,
                  noRetrievalSystemPrompt,
                )) &&
            (identical(other.suggestedQueries, suggestedQueries) ||
                const DeepCollectionEquality().equals(
                  other.suggestedQueries,
                  suggestedQueries,
                )) &&
            (identical(other.systemPrompt, systemPrompt) ||
                const DeepCollectionEquality().equals(
                  other.systemPrompt,
                  systemPrompt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(datastoreIds) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(templateName) ^
      const DeepCollectionEquality().hash(agentConfigs) ^
      const DeepCollectionEquality().hash(agentUsages) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(filterPrompt) ^
      const DeepCollectionEquality().hash(llmModelId) ^
      const DeepCollectionEquality().hash(multiturnSystemPrompt) ^
      const DeepCollectionEquality().hash(noRetrievalSystemPrompt) ^
      const DeepCollectionEquality().hash(suggestedQueries) ^
      const DeepCollectionEquality().hash(systemPrompt) ^
      runtimeType.hashCode;
}

extension $AgentMetadataDtoExtension on AgentMetadataDto {
  AgentMetadataDto copyWith({
    List<String>? datastoreIds,
    String? name,
    String? templateName,
    Object? agentConfigs,
    AgentUsagesDto? agentUsages,
    String? description,
    String? filterPrompt,
    String? llmModelId,
    String? multiturnSystemPrompt,
    String? noRetrievalSystemPrompt,
    List<String>? suggestedQueries,
    String? systemPrompt,
  }) {
    return AgentMetadataDto(
      datastoreIds: datastoreIds ?? this.datastoreIds,
      name: name ?? this.name,
      templateName: templateName ?? this.templateName,
      agentConfigs: agentConfigs ?? this.agentConfigs,
      agentUsages: agentUsages ?? this.agentUsages,
      description: description ?? this.description,
      filterPrompt: filterPrompt ?? this.filterPrompt,
      llmModelId: llmModelId ?? this.llmModelId,
      multiturnSystemPrompt:
          multiturnSystemPrompt ?? this.multiturnSystemPrompt,
      noRetrievalSystemPrompt:
          noRetrievalSystemPrompt ?? this.noRetrievalSystemPrompt,
      suggestedQueries: suggestedQueries ?? this.suggestedQueries,
      systemPrompt: systemPrompt ?? this.systemPrompt,
    );
  }

  AgentMetadataDto copyWithWrapped({
    Wrapped<List<String>>? datastoreIds,
    Wrapped<String>? name,
    Wrapped<String>? templateName,
    Wrapped<Object?>? agentConfigs,
    Wrapped<AgentUsagesDto?>? agentUsages,
    Wrapped<String?>? description,
    Wrapped<String?>? filterPrompt,
    Wrapped<String?>? llmModelId,
    Wrapped<String?>? multiturnSystemPrompt,
    Wrapped<String?>? noRetrievalSystemPrompt,
    Wrapped<List<String>?>? suggestedQueries,
    Wrapped<String?>? systemPrompt,
  }) {
    return AgentMetadataDto(
      datastoreIds: (datastoreIds != null
          ? datastoreIds.value
          : this.datastoreIds),
      name: (name != null ? name.value : this.name),
      templateName: (templateName != null
          ? templateName.value
          : this.templateName),
      agentConfigs: (agentConfigs != null
          ? agentConfigs.value
          : this.agentConfigs),
      agentUsages: (agentUsages != null ? agentUsages.value : this.agentUsages),
      description: (description != null ? description.value : this.description),
      filterPrompt: (filterPrompt != null
          ? filterPrompt.value
          : this.filterPrompt),
      llmModelId: (llmModelId != null ? llmModelId.value : this.llmModelId),
      multiturnSystemPrompt: (multiturnSystemPrompt != null
          ? multiturnSystemPrompt.value
          : this.multiturnSystemPrompt),
      noRetrievalSystemPrompt: (noRetrievalSystemPrompt != null
          ? noRetrievalSystemPrompt.value
          : this.noRetrievalSystemPrompt),
      suggestedQueries: (suggestedQueries != null
          ? suggestedQueries.value
          : this.suggestedQueries),
      systemPrompt: (systemPrompt != null
          ? systemPrompt.value
          : this.systemPrompt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AgentUsagesDto {
  const AgentUsagesDto({
    required this.eval,
    required this.query,
    required this.tune,
  });

  factory AgentUsagesDto.fromJson(Map<String, dynamic> json) =>
      _$AgentUsagesDtoFromJson(json);

  static const toJsonFactory = _$AgentUsagesDtoToJson;
  Map<String, dynamic> toJson() => _$AgentUsagesDtoToJson(this);

  @JsonKey(name: 'eval')
  final int eval;
  @JsonKey(name: 'query')
  final int query;
  @JsonKey(name: 'tune')
  final int tune;
  static const fromJsonFactory = _$AgentUsagesDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AgentUsagesDto &&
            (identical(other.eval, eval) ||
                const DeepCollectionEquality().equals(other.eval, eval)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.tune, tune) ||
                const DeepCollectionEquality().equals(other.tune, tune)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(eval) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(tune) ^
      runtimeType.hashCode;
}

extension $AgentUsagesDtoExtension on AgentUsagesDto {
  AgentUsagesDto copyWith({int? eval, int? query, int? tune}) {
    return AgentUsagesDto(
      eval: eval ?? this.eval,
      query: query ?? this.query,
      tune: tune ?? this.tune,
    );
  }

  AgentUsagesDto copyWithWrapped({
    Wrapped<int>? eval,
    Wrapped<int>? query,
    Wrapped<int>? tune,
  }) {
    return AgentUsagesDto(
      eval: (eval != null ? eval.value : this.eval),
      query: (query != null ? query.value : this.query),
      tune: (tune != null ? tune.value : this.tune),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AttributionDto {
  const AttributionDto({
    required this.contentIds,
    required this.endIdx,
    required this.startIdx,
  });

  factory AttributionDto.fromJson(Map<String, dynamic> json) =>
      _$AttributionDtoFromJson(json);

  static const toJsonFactory = _$AttributionDtoToJson;
  Map<String, dynamic> toJson() => _$AttributionDtoToJson(this);

  @JsonKey(name: 'content_ids', defaultValue: <String>[])
  final List<String> contentIds;
  @JsonKey(name: 'end_idx')
  final int endIdx;
  @JsonKey(name: 'start_idx')
  final int startIdx;
  static const fromJsonFactory = _$AttributionDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AttributionDto &&
            (identical(other.contentIds, contentIds) ||
                const DeepCollectionEquality().equals(
                  other.contentIds,
                  contentIds,
                )) &&
            (identical(other.endIdx, endIdx) ||
                const DeepCollectionEquality().equals(other.endIdx, endIdx)) &&
            (identical(other.startIdx, startIdx) ||
                const DeepCollectionEquality().equals(
                  other.startIdx,
                  startIdx,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentIds) ^
      const DeepCollectionEquality().hash(endIdx) ^
      const DeepCollectionEquality().hash(startIdx) ^
      runtimeType.hashCode;
}

extension $AttributionDtoExtension on AttributionDto {
  AttributionDto copyWith({
    List<String>? contentIds,
    int? endIdx,
    int? startIdx,
  }) {
    return AttributionDto(
      contentIds: contentIds ?? this.contentIds,
      endIdx: endIdx ?? this.endIdx,
      startIdx: startIdx ?? this.startIdx,
    );
  }

  AttributionDto copyWithWrapped({
    Wrapped<List<String>>? contentIds,
    Wrapped<int>? endIdx,
    Wrapped<int>? startIdx,
  }) {
    return AttributionDto(
      contentIds: (contentIds != null ? contentIds.value : this.contentIds),
      endIdx: (endIdx != null ? endIdx.value : this.endIdx),
      startIdx: (startIdx != null ? startIdx.value : this.startIdx),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AutoTopUpRequest {
  const AutoTopUpRequest({
    required this.amount,
    required this.balanceThreshold,
  });

  factory AutoTopUpRequest.fromJson(Map<String, dynamic> json) =>
      _$AutoTopUpRequestFromJson(json);

  static const toJsonFactory = _$AutoTopUpRequestToJson;
  Map<String, dynamic> toJson() => _$AutoTopUpRequestToJson(this);

  @JsonKey(name: 'amount')
  final double amount;
  @JsonKey(name: 'balance_threshold')
  final double balanceThreshold;
  static const fromJsonFactory = _$AutoTopUpRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AutoTopUpRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.balanceThreshold, balanceThreshold) ||
                const DeepCollectionEquality().equals(
                  other.balanceThreshold,
                  balanceThreshold,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(balanceThreshold) ^
      runtimeType.hashCode;
}

extension $AutoTopUpRequestExtension on AutoTopUpRequest {
  AutoTopUpRequest copyWith({double? amount, double? balanceThreshold}) {
    return AutoTopUpRequest(
      amount: amount ?? this.amount,
      balanceThreshold: balanceThreshold ?? this.balanceThreshold,
    );
  }

  AutoTopUpRequest copyWithWrapped({
    Wrapped<double>? amount,
    Wrapped<double>? balanceThreshold,
  }) {
    return AutoTopUpRequest(
      amount: (amount != null ? amount.value : this.amount),
      balanceThreshold: (balanceThreshold != null
          ? balanceThreshold.value
          : this.balanceThreshold),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AutoTopUpResponseDto {
  const AutoTopUpResponseDto({required this.autoTopUp});

  factory AutoTopUpResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AutoTopUpResponseDtoFromJson(json);

  static const toJsonFactory = _$AutoTopUpResponseDtoToJson;
  Map<String, dynamic> toJson() => _$AutoTopUpResponseDtoToJson(this);

  @JsonKey(name: 'auto_top_up')
  final dynamic autoTopUp;
  static const fromJsonFactory = _$AutoTopUpResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AutoTopUpResponseDto &&
            (identical(other.autoTopUp, autoTopUp) ||
                const DeepCollectionEquality().equals(
                  other.autoTopUp,
                  autoTopUp,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(autoTopUp) ^ runtimeType.hashCode;
}

extension $AutoTopUpResponseDtoExtension on AutoTopUpResponseDto {
  AutoTopUpResponseDto copyWith({dynamic autoTopUp}) {
    return AutoTopUpResponseDto(autoTopUp: autoTopUp ?? this.autoTopUp);
  }

  AutoTopUpResponseDto copyWithWrapped({Wrapped<dynamic>? autoTopUp}) {
    return AutoTopUpResponseDto(
      autoTopUp: (autoTopUp != null ? autoTopUp.value : this.autoTopUp),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class AutoTopUpStatusResponseDto {
  const AutoTopUpStatusResponseDto({required this.status});

  factory AutoTopUpStatusResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AutoTopUpStatusResponseDtoFromJson(json);

  static const toJsonFactory = _$AutoTopUpStatusResponseDtoToJson;
  Map<String, dynamic> toJson() => _$AutoTopUpStatusResponseDtoToJson(this);

  @JsonKey(name: 'status')
  final dynamic status;
  static const fromJsonFactory = _$AutoTopUpStatusResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is AutoTopUpStatusResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $AutoTopUpStatusResponseDtoExtension on AutoTopUpStatusResponseDto {
  AutoTopUpStatusResponseDto copyWith({dynamic status}) {
    return AutoTopUpStatusResponseDto(status: status ?? this.status);
  }

  AutoTopUpStatusResponseDto copyWithWrapped({Wrapped<dynamic>? status}) {
    return AutoTopUpStatusResponseDto(
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BalanceResponseDto {
  const BalanceResponseDto({required this.balance});

  factory BalanceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BalanceResponseDtoFromJson(json);

  static const toJsonFactory = _$BalanceResponseDtoToJson;
  Map<String, dynamic> toJson() => _$BalanceResponseDtoToJson(this);

  @JsonKey(name: 'balance')
  final dynamic balance;
  static const fromJsonFactory = _$BalanceResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BalanceResponseDto &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(balance) ^ runtimeType.hashCode;
}

extension $BalanceResponseDtoExtension on BalanceResponseDto {
  BalanceResponseDto copyWith({dynamic balance}) {
    return BalanceResponseDto(balance: balance ?? this.balance);
  }

  BalanceResponseDto copyWithWrapped({Wrapped<dynamic>? balance}) {
    return BalanceResponseDto(
      balance: (balance != null ? balance.value : this.balance),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BillingMetadataResponseDto {
  const BillingMetadataResponseDto({required this.metadata});

  factory BillingMetadataResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BillingMetadataResponseDtoFromJson(json);

  static const toJsonFactory = _$BillingMetadataResponseDtoToJson;
  Map<String, dynamic> toJson() => _$BillingMetadataResponseDtoToJson(this);

  @JsonKey(name: 'metadata')
  final dynamic metadata;
  static const fromJsonFactory = _$BillingMetadataResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BillingMetadataResponseDto &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality().equals(
                  other.metadata,
                  metadata,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(metadata) ^ runtimeType.hashCode;
}

extension $BillingMetadataResponseDtoExtension on BillingMetadataResponseDto {
  BillingMetadataResponseDto copyWith({dynamic metadata}) {
    return BillingMetadataResponseDto(metadata: metadata ?? this.metadata);
  }

  BillingMetadataResponseDto copyWithWrapped({Wrapped<dynamic>? metadata}) {
    return BillingMetadataResponseDto(
      metadata: (metadata != null ? metadata.value : this.metadata),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BillingModeHistoryResponseDto {
  const BillingModeHistoryResponseDto({required this.history});

  factory BillingModeHistoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BillingModeHistoryResponseDtoFromJson(json);

  static const toJsonFactory = _$BillingModeHistoryResponseDtoToJson;
  Map<String, dynamic> toJson() => _$BillingModeHistoryResponseDtoToJson(this);

  @JsonKey(name: 'history')
  final dynamic history;
  static const fromJsonFactory = _$BillingModeHistoryResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BillingModeHistoryResponseDto &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(history) ^ runtimeType.hashCode;
}

extension $BillingModeHistoryResponseDtoExtension
    on BillingModeHistoryResponseDto {
  BillingModeHistoryResponseDto copyWith({dynamic history}) {
    return BillingModeHistoryResponseDto(history: history ?? this.history);
  }

  BillingModeHistoryResponseDto copyWithWrapped({Wrapped<dynamic>? history}) {
    return BillingModeHistoryResponseDto(
      history: (history != null ? history.value : this.history),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost {
  const BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost({
    required this.rawFile,
    this.docName,
    this.metadata,
  });

  factory BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPostFromJson(
        json,
      );

  static const toJsonFactory =
      _$BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPostToJson(
        this,
      );

  @JsonKey(name: 'raw_file')
  final String rawFile;
  @JsonKey(name: 'doc_name')
  final String? docName;
  @JsonKey(name: 'metadata')
  final String? metadata;
  static const fromJsonFactory =
      _$BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPostFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost &&
            (identical(other.rawFile, rawFile) ||
                const DeepCollectionEquality().equals(
                  other.rawFile,
                  rawFile,
                )) &&
            (identical(other.docName, docName) ||
                const DeepCollectionEquality().equals(
                  other.docName,
                  docName,
                )) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality().equals(
                  other.metadata,
                  metadata,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rawFile) ^
      const DeepCollectionEquality().hash(docName) ^
      const DeepCollectionEquality().hash(metadata) ^
      runtimeType.hashCode;
}

extension $BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPostExtension
    on BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost {
  BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost copyWith({
    String? rawFile,
    String? docName,
    String? metadata,
  }) {
    return BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost(
      rawFile: rawFile ?? this.rawFile,
      docName: docName ?? this.docName,
      metadata: metadata ?? this.metadata,
    );
  }

  BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost
  copyWithWrapped({
    Wrapped<String>? rawFile,
    Wrapped<String?>? docName,
    Wrapped<String?>? metadata,
  }) {
    return BodyIngestDocumentContextualRagV1DatastoresDatastoreIdDocumentsPost(
      rawFile: (rawFile != null ? rawFile.value : this.rawFile),
      docName: (docName != null ? docName.value : this.docName),
      metadata: (metadata != null ? metadata.value : this.metadata),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class BodyParseFileContextualRagV1ParseFilePost {
  const BodyParseFileContextualRagV1ParseFilePost({
    required this.rawFile,
    this.parseMode,
    this.enableDocumentHierarchy,
    this.enableSplitTables,
    this.maxSplitTableCells,
    this.figureCaptionMode,
    this.pageRange,
  });

  factory BodyParseFileContextualRagV1ParseFilePost.fromJson(
    Map<String, dynamic> json,
  ) => _$BodyParseFileContextualRagV1ParseFilePostFromJson(json);

  static const toJsonFactory =
      _$BodyParseFileContextualRagV1ParseFilePostToJson;
  Map<String, dynamic> toJson() =>
      _$BodyParseFileContextualRagV1ParseFilePostToJson(this);

  @JsonKey(name: 'raw_file')
  final String rawFile;
  @JsonKey(name: 'parse_mode')
  final String? parseMode;
  @JsonKey(name: 'enable_document_hierarchy')
  final bool? enableDocumentHierarchy;
  @JsonKey(name: 'enable_split_tables')
  final bool? enableSplitTables;
  @JsonKey(name: 'max_split_table_cells')
  final int? maxSplitTableCells;
  @JsonKey(name: 'figure_caption_mode')
  final String? figureCaptionMode;
  @JsonKey(name: 'page_range')
  final String? pageRange;
  static const fromJsonFactory =
      _$BodyParseFileContextualRagV1ParseFilePostFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is BodyParseFileContextualRagV1ParseFilePost &&
            (identical(other.rawFile, rawFile) ||
                const DeepCollectionEquality().equals(
                  other.rawFile,
                  rawFile,
                )) &&
            (identical(other.parseMode, parseMode) ||
                const DeepCollectionEquality().equals(
                  other.parseMode,
                  parseMode,
                )) &&
            (identical(
                  other.enableDocumentHierarchy,
                  enableDocumentHierarchy,
                ) ||
                const DeepCollectionEquality().equals(
                  other.enableDocumentHierarchy,
                  enableDocumentHierarchy,
                )) &&
            (identical(other.enableSplitTables, enableSplitTables) ||
                const DeepCollectionEquality().equals(
                  other.enableSplitTables,
                  enableSplitTables,
                )) &&
            (identical(other.maxSplitTableCells, maxSplitTableCells) ||
                const DeepCollectionEquality().equals(
                  other.maxSplitTableCells,
                  maxSplitTableCells,
                )) &&
            (identical(other.figureCaptionMode, figureCaptionMode) ||
                const DeepCollectionEquality().equals(
                  other.figureCaptionMode,
                  figureCaptionMode,
                )) &&
            (identical(other.pageRange, pageRange) ||
                const DeepCollectionEquality().equals(
                  other.pageRange,
                  pageRange,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(rawFile) ^
      const DeepCollectionEquality().hash(parseMode) ^
      const DeepCollectionEquality().hash(enableDocumentHierarchy) ^
      const DeepCollectionEquality().hash(enableSplitTables) ^
      const DeepCollectionEquality().hash(maxSplitTableCells) ^
      const DeepCollectionEquality().hash(figureCaptionMode) ^
      const DeepCollectionEquality().hash(pageRange) ^
      runtimeType.hashCode;
}

extension $BodyParseFileContextualRagV1ParseFilePostExtension
    on BodyParseFileContextualRagV1ParseFilePost {
  BodyParseFileContextualRagV1ParseFilePost copyWith({
    String? rawFile,
    String? parseMode,
    bool? enableDocumentHierarchy,
    bool? enableSplitTables,
    int? maxSplitTableCells,
    String? figureCaptionMode,
    String? pageRange,
  }) {
    return BodyParseFileContextualRagV1ParseFilePost(
      rawFile: rawFile ?? this.rawFile,
      parseMode: parseMode ?? this.parseMode,
      enableDocumentHierarchy:
          enableDocumentHierarchy ?? this.enableDocumentHierarchy,
      enableSplitTables: enableSplitTables ?? this.enableSplitTables,
      maxSplitTableCells: maxSplitTableCells ?? this.maxSplitTableCells,
      figureCaptionMode: figureCaptionMode ?? this.figureCaptionMode,
      pageRange: pageRange ?? this.pageRange,
    );
  }

  BodyParseFileContextualRagV1ParseFilePost copyWithWrapped({
    Wrapped<String>? rawFile,
    Wrapped<String?>? parseMode,
    Wrapped<bool?>? enableDocumentHierarchy,
    Wrapped<bool?>? enableSplitTables,
    Wrapped<int?>? maxSplitTableCells,
    Wrapped<String?>? figureCaptionMode,
    Wrapped<String?>? pageRange,
  }) {
    return BodyParseFileContextualRagV1ParseFilePost(
      rawFile: (rawFile != null ? rawFile.value : this.rawFile),
      parseMode: (parseMode != null ? parseMode.value : this.parseMode),
      enableDocumentHierarchy: (enableDocumentHierarchy != null
          ? enableDocumentHierarchy.value
          : this.enableDocumentHierarchy),
      enableSplitTables: (enableSplitTables != null
          ? enableSplitTables.value
          : this.enableSplitTables),
      maxSplitTableCells: (maxSplitTableCells != null
          ? maxSplitTableCells.value
          : this.maxSplitTableCells),
      figureCaptionMode: (figureCaptionMode != null
          ? figureCaptionMode.value
          : this.figureCaptionMode),
      pageRange: (pageRange != null ? pageRange.value : this.pageRange),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ConfigurationChunkingDto {
  const ConfigurationChunkingDto({
    this.chunkingMode,
    this.enableHierarchyBasedContextualization,
    this.maxChunkLengthTokens,
    this.minChunkLengthTokens,
  });

  factory ConfigurationChunkingDto.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationChunkingDtoFromJson(json);

  static const toJsonFactory = _$ConfigurationChunkingDtoToJson;
  Map<String, dynamic> toJson() => _$ConfigurationChunkingDtoToJson(this);

  @JsonKey(
    name: 'chunking_mode',
    toJson: configurationChunkingDtoChunkingModeNullableToJson,
    fromJson: configurationChunkingDtoChunkingModeNullableFromJson,
  )
  final enums.ConfigurationChunkingDtoChunkingMode? chunkingMode;
  @JsonKey(name: 'enable_hierarchy_based_contextualization')
  final bool? enableHierarchyBasedContextualization;
  @JsonKey(name: 'max_chunk_length_tokens')
  final int? maxChunkLengthTokens;
  @JsonKey(name: 'min_chunk_length_tokens')
  final int? minChunkLengthTokens;
  static const fromJsonFactory = _$ConfigurationChunkingDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ConfigurationChunkingDto &&
            (identical(other.chunkingMode, chunkingMode) ||
                const DeepCollectionEquality().equals(
                  other.chunkingMode,
                  chunkingMode,
                )) &&
            (identical(
                  other.enableHierarchyBasedContextualization,
                  enableHierarchyBasedContextualization,
                ) ||
                const DeepCollectionEquality().equals(
                  other.enableHierarchyBasedContextualization,
                  enableHierarchyBasedContextualization,
                )) &&
            (identical(other.maxChunkLengthTokens, maxChunkLengthTokens) ||
                const DeepCollectionEquality().equals(
                  other.maxChunkLengthTokens,
                  maxChunkLengthTokens,
                )) &&
            (identical(other.minChunkLengthTokens, minChunkLengthTokens) ||
                const DeepCollectionEquality().equals(
                  other.minChunkLengthTokens,
                  minChunkLengthTokens,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chunkingMode) ^
      const DeepCollectionEquality().hash(
        enableHierarchyBasedContextualization,
      ) ^
      const DeepCollectionEquality().hash(maxChunkLengthTokens) ^
      const DeepCollectionEquality().hash(minChunkLengthTokens) ^
      runtimeType.hashCode;
}

extension $ConfigurationChunkingDtoExtension on ConfigurationChunkingDto {
  ConfigurationChunkingDto copyWith({
    enums.ConfigurationChunkingDtoChunkingMode? chunkingMode,
    bool? enableHierarchyBasedContextualization,
    int? maxChunkLengthTokens,
    int? minChunkLengthTokens,
  }) {
    return ConfigurationChunkingDto(
      chunkingMode: chunkingMode ?? this.chunkingMode,
      enableHierarchyBasedContextualization:
          enableHierarchyBasedContextualization ??
          this.enableHierarchyBasedContextualization,
      maxChunkLengthTokens: maxChunkLengthTokens ?? this.maxChunkLengthTokens,
      minChunkLengthTokens: minChunkLengthTokens ?? this.minChunkLengthTokens,
    );
  }

  ConfigurationChunkingDto copyWithWrapped({
    Wrapped<enums.ConfigurationChunkingDtoChunkingMode?>? chunkingMode,
    Wrapped<bool?>? enableHierarchyBasedContextualization,
    Wrapped<int?>? maxChunkLengthTokens,
    Wrapped<int?>? minChunkLengthTokens,
  }) {
    return ConfigurationChunkingDto(
      chunkingMode: (chunkingMode != null
          ? chunkingMode.value
          : this.chunkingMode),
      enableHierarchyBasedContextualization:
          (enableHierarchyBasedContextualization != null
          ? enableHierarchyBasedContextualization.value
          : this.enableHierarchyBasedContextualization),
      maxChunkLengthTokens: (maxChunkLengthTokens != null
          ? maxChunkLengthTokens.value
          : this.maxChunkLengthTokens),
      minChunkLengthTokens: (minChunkLengthTokens != null
          ? minChunkLengthTokens.value
          : this.minChunkLengthTokens),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ConfigurationDto {
  const ConfigurationDto({this.chunking, this.htmlConfig, this.parsing});

  factory ConfigurationDto.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationDtoFromJson(json);

  static const toJsonFactory = _$ConfigurationDtoToJson;
  Map<String, dynamic> toJson() => _$ConfigurationDtoToJson(this);

  @JsonKey(name: 'chunking')
  final ConfigurationChunkingDto? chunking;
  @JsonKey(name: 'html_config')
  final ConfigurationHTMLConfigDto? htmlConfig;
  @JsonKey(name: 'parsing')
  final ConfigurationParsingDto? parsing;
  static const fromJsonFactory = _$ConfigurationDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ConfigurationDto &&
            (identical(other.chunking, chunking) ||
                const DeepCollectionEquality().equals(
                  other.chunking,
                  chunking,
                )) &&
            (identical(other.htmlConfig, htmlConfig) ||
                const DeepCollectionEquality().equals(
                  other.htmlConfig,
                  htmlConfig,
                )) &&
            (identical(other.parsing, parsing) ||
                const DeepCollectionEquality().equals(other.parsing, parsing)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chunking) ^
      const DeepCollectionEquality().hash(htmlConfig) ^
      const DeepCollectionEquality().hash(parsing) ^
      runtimeType.hashCode;
}

extension $ConfigurationDtoExtension on ConfigurationDto {
  ConfigurationDto copyWith({
    ConfigurationChunkingDto? chunking,
    ConfigurationHTMLConfigDto? htmlConfig,
    ConfigurationParsingDto? parsing,
  }) {
    return ConfigurationDto(
      chunking: chunking ?? this.chunking,
      htmlConfig: htmlConfig ?? this.htmlConfig,
      parsing: parsing ?? this.parsing,
    );
  }

  ConfigurationDto copyWithWrapped({
    Wrapped<ConfigurationChunkingDto?>? chunking,
    Wrapped<ConfigurationHTMLConfigDto?>? htmlConfig,
    Wrapped<ConfigurationParsingDto?>? parsing,
  }) {
    return ConfigurationDto(
      chunking: (chunking != null ? chunking.value : this.chunking),
      htmlConfig: (htmlConfig != null ? htmlConfig.value : this.htmlConfig),
      parsing: (parsing != null ? parsing.value : this.parsing),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ConfigurationHTMLConfigDto {
  const ConfigurationHTMLConfigDto({this.maxChunkLengthTokens});

  factory ConfigurationHTMLConfigDto.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationHTMLConfigDtoFromJson(json);

  static const toJsonFactory = _$ConfigurationHTMLConfigDtoToJson;
  Map<String, dynamic> toJson() => _$ConfigurationHTMLConfigDtoToJson(this);

  @JsonKey(name: 'max_chunk_length_tokens')
  final int? maxChunkLengthTokens;
  static const fromJsonFactory = _$ConfigurationHTMLConfigDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ConfigurationHTMLConfigDto &&
            (identical(other.maxChunkLengthTokens, maxChunkLengthTokens) ||
                const DeepCollectionEquality().equals(
                  other.maxChunkLengthTokens,
                  maxChunkLengthTokens,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(maxChunkLengthTokens) ^
      runtimeType.hashCode;
}

extension $ConfigurationHTMLConfigDtoExtension on ConfigurationHTMLConfigDto {
  ConfigurationHTMLConfigDto copyWith({int? maxChunkLengthTokens}) {
    return ConfigurationHTMLConfigDto(
      maxChunkLengthTokens: maxChunkLengthTokens ?? this.maxChunkLengthTokens,
    );
  }

  ConfigurationHTMLConfigDto copyWithWrapped({
    Wrapped<int?>? maxChunkLengthTokens,
  }) {
    return ConfigurationHTMLConfigDto(
      maxChunkLengthTokens: (maxChunkLengthTokens != null
          ? maxChunkLengthTokens.value
          : this.maxChunkLengthTokens),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ConfigurationParsingDto {
  const ConfigurationParsingDto({
    this.enableSplitTables,
    this.figureCaptionMode,
    this.figureCaptioningPrompt,
    this.maxSplitTableCells,
  });

  factory ConfigurationParsingDto.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationParsingDtoFromJson(json);

  static const toJsonFactory = _$ConfigurationParsingDtoToJson;
  Map<String, dynamic> toJson() => _$ConfigurationParsingDtoToJson(this);

  @JsonKey(name: 'enable_split_tables')
  final bool? enableSplitTables;
  @JsonKey(
    name: 'figure_caption_mode',
    toJson: configurationParsingDtoFigureCaptionModeNullableToJson,
    fromJson: configurationParsingDtoFigureCaptionModeNullableFromJson,
  )
  final enums.ConfigurationParsingDtoFigureCaptionMode? figureCaptionMode;
  @JsonKey(name: 'figure_captioning_prompt')
  final String? figureCaptioningPrompt;
  @JsonKey(name: 'max_split_table_cells')
  final int? maxSplitTableCells;
  static const fromJsonFactory = _$ConfigurationParsingDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ConfigurationParsingDto &&
            (identical(other.enableSplitTables, enableSplitTables) ||
                const DeepCollectionEquality().equals(
                  other.enableSplitTables,
                  enableSplitTables,
                )) &&
            (identical(other.figureCaptionMode, figureCaptionMode) ||
                const DeepCollectionEquality().equals(
                  other.figureCaptionMode,
                  figureCaptionMode,
                )) &&
            (identical(other.figureCaptioningPrompt, figureCaptioningPrompt) ||
                const DeepCollectionEquality().equals(
                  other.figureCaptioningPrompt,
                  figureCaptioningPrompt,
                )) &&
            (identical(other.maxSplitTableCells, maxSplitTableCells) ||
                const DeepCollectionEquality().equals(
                  other.maxSplitTableCells,
                  maxSplitTableCells,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(enableSplitTables) ^
      const DeepCollectionEquality().hash(figureCaptionMode) ^
      const DeepCollectionEquality().hash(figureCaptioningPrompt) ^
      const DeepCollectionEquality().hash(maxSplitTableCells) ^
      runtimeType.hashCode;
}

extension $ConfigurationParsingDtoExtension on ConfigurationParsingDto {
  ConfigurationParsingDto copyWith({
    bool? enableSplitTables,
    enums.ConfigurationParsingDtoFigureCaptionMode? figureCaptionMode,
    String? figureCaptioningPrompt,
    int? maxSplitTableCells,
  }) {
    return ConfigurationParsingDto(
      enableSplitTables: enableSplitTables ?? this.enableSplitTables,
      figureCaptionMode: figureCaptionMode ?? this.figureCaptionMode,
      figureCaptioningPrompt:
          figureCaptioningPrompt ?? this.figureCaptioningPrompt,
      maxSplitTableCells: maxSplitTableCells ?? this.maxSplitTableCells,
    );
  }

  ConfigurationParsingDto copyWithWrapped({
    Wrapped<bool?>? enableSplitTables,
    Wrapped<enums.ConfigurationParsingDtoFigureCaptionMode?>? figureCaptionMode,
    Wrapped<String?>? figureCaptioningPrompt,
    Wrapped<int?>? maxSplitTableCells,
  }) {
    return ConfigurationParsingDto(
      enableSplitTables: (enableSplitTables != null
          ? enableSplitTables.value
          : this.enableSplitTables),
      figureCaptionMode: (figureCaptionMode != null
          ? figureCaptionMode.value
          : this.figureCaptionMode),
      figureCaptioningPrompt: (figureCaptioningPrompt != null
          ? figureCaptioningPrompt.value
          : this.figureCaptioningPrompt),
      maxSplitTableCells: (maxSplitTableCells != null
          ? maxSplitTableCells.value
          : this.maxSplitTableCells),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ContentMetadataStructuredContentMetadataDto {
  const ContentMetadataStructuredContentMetadataDto({
    required this.contentId,
    required this.contentText,
    this.contentType,
  });

  factory ContentMetadataStructuredContentMetadataDto.fromJson(
    Map<String, dynamic> json,
  ) => _$ContentMetadataStructuredContentMetadataDtoFromJson(json);

  static const toJsonFactory =
      _$ContentMetadataStructuredContentMetadataDtoToJson;
  Map<String, dynamic> toJson() =>
      _$ContentMetadataStructuredContentMetadataDtoToJson(this);

  @JsonKey(name: 'content_id')
  final String contentId;
  @JsonKey(name: 'content_text')
  final dynamic contentText;
  @JsonKey(name: 'content_type')
  final String? contentType;
  static const fromJsonFactory =
      _$ContentMetadataStructuredContentMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContentMetadataStructuredContentMetadataDto &&
            (identical(other.contentId, contentId) ||
                const DeepCollectionEquality().equals(
                  other.contentId,
                  contentId,
                )) &&
            (identical(other.contentText, contentText) ||
                const DeepCollectionEquality().equals(
                  other.contentText,
                  contentText,
                )) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality().equals(
                  other.contentType,
                  contentType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentId) ^
      const DeepCollectionEquality().hash(contentText) ^
      const DeepCollectionEquality().hash(contentType) ^
      runtimeType.hashCode;
}

extension $ContentMetadataStructuredContentMetadataDtoExtension
    on ContentMetadataStructuredContentMetadataDto {
  ContentMetadataStructuredContentMetadataDto copyWith({
    String? contentId,
    dynamic contentText,
    String? contentType,
  }) {
    return ContentMetadataStructuredContentMetadataDto(
      contentId: contentId ?? this.contentId,
      contentText: contentText ?? this.contentText,
      contentType: contentType ?? this.contentType,
    );
  }

  ContentMetadataStructuredContentMetadataDto copyWithWrapped({
    Wrapped<String>? contentId,
    Wrapped<dynamic>? contentText,
    Wrapped<String?>? contentType,
  }) {
    return ContentMetadataStructuredContentMetadataDto(
      contentId: (contentId != null ? contentId.value : this.contentId),
      contentText: (contentText != null ? contentText.value : this.contentText),
      contentType: (contentType != null ? contentType.value : this.contentType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ContentMetadataUnstructuredContentMetadataDto {
  const ContentMetadataUnstructuredContentMetadataDto({
    required this.contentId,
    required this.contentText,
    required this.documentId,
    required this.height,
    required this.page,
    required this.pageImg,
    required this.width,
    required this.x0,
    required this.x1,
    required this.y0,
    required this.y1,
    this.contentType,
  });

  factory ContentMetadataUnstructuredContentMetadataDto.fromJson(
    Map<String, dynamic> json,
  ) => _$ContentMetadataUnstructuredContentMetadataDtoFromJson(json);

  static const toJsonFactory =
      _$ContentMetadataUnstructuredContentMetadataDtoToJson;
  Map<String, dynamic> toJson() =>
      _$ContentMetadataUnstructuredContentMetadataDtoToJson(this);

  @JsonKey(name: 'content_id')
  final String contentId;
  @JsonKey(name: 'content_text')
  final String contentText;
  @JsonKey(name: 'document_id')
  final String documentId;
  @JsonKey(name: 'height')
  final double height;
  @JsonKey(name: 'page')
  final int page;
  @JsonKey(name: 'page_img')
  final String pageImg;
  @JsonKey(name: 'width')
  final double width;
  @JsonKey(name: 'x0')
  final double x0;
  @JsonKey(name: 'x1')
  final double x1;
  @JsonKey(name: 'y0')
  final double y0;
  @JsonKey(name: 'y1')
  final double y1;
  @JsonKey(name: 'content_type')
  final String? contentType;
  static const fromJsonFactory =
      _$ContentMetadataUnstructuredContentMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ContentMetadataUnstructuredContentMetadataDto &&
            (identical(other.contentId, contentId) ||
                const DeepCollectionEquality().equals(
                  other.contentId,
                  contentId,
                )) &&
            (identical(other.contentText, contentText) ||
                const DeepCollectionEquality().equals(
                  other.contentText,
                  contentText,
                )) &&
            (identical(other.documentId, documentId) ||
                const DeepCollectionEquality().equals(
                  other.documentId,
                  documentId,
                )) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.pageImg, pageImg) ||
                const DeepCollectionEquality().equals(
                  other.pageImg,
                  pageImg,
                )) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.x0, x0) ||
                const DeepCollectionEquality().equals(other.x0, x0)) &&
            (identical(other.x1, x1) ||
                const DeepCollectionEquality().equals(other.x1, x1)) &&
            (identical(other.y0, y0) ||
                const DeepCollectionEquality().equals(other.y0, y0)) &&
            (identical(other.y1, y1) ||
                const DeepCollectionEquality().equals(other.y1, y1)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality().equals(
                  other.contentType,
                  contentType,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentId) ^
      const DeepCollectionEquality().hash(contentText) ^
      const DeepCollectionEquality().hash(documentId) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(pageImg) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(x0) ^
      const DeepCollectionEquality().hash(x1) ^
      const DeepCollectionEquality().hash(y0) ^
      const DeepCollectionEquality().hash(y1) ^
      const DeepCollectionEquality().hash(contentType) ^
      runtimeType.hashCode;
}

extension $ContentMetadataUnstructuredContentMetadataDtoExtension
    on ContentMetadataUnstructuredContentMetadataDto {
  ContentMetadataUnstructuredContentMetadataDto copyWith({
    String? contentId,
    String? contentText,
    String? documentId,
    double? height,
    int? page,
    String? pageImg,
    double? width,
    double? x0,
    double? x1,
    double? y0,
    double? y1,
    String? contentType,
  }) {
    return ContentMetadataUnstructuredContentMetadataDto(
      contentId: contentId ?? this.contentId,
      contentText: contentText ?? this.contentText,
      documentId: documentId ?? this.documentId,
      height: height ?? this.height,
      page: page ?? this.page,
      pageImg: pageImg ?? this.pageImg,
      width: width ?? this.width,
      x0: x0 ?? this.x0,
      x1: x1 ?? this.x1,
      y0: y0 ?? this.y0,
      y1: y1 ?? this.y1,
      contentType: contentType ?? this.contentType,
    );
  }

  ContentMetadataUnstructuredContentMetadataDto copyWithWrapped({
    Wrapped<String>? contentId,
    Wrapped<String>? contentText,
    Wrapped<String>? documentId,
    Wrapped<double>? height,
    Wrapped<int>? page,
    Wrapped<String>? pageImg,
    Wrapped<double>? width,
    Wrapped<double>? x0,
    Wrapped<double>? x1,
    Wrapped<double>? y0,
    Wrapped<double>? y1,
    Wrapped<String?>? contentType,
  }) {
    return ContentMetadataUnstructuredContentMetadataDto(
      contentId: (contentId != null ? contentId.value : this.contentId),
      contentText: (contentText != null ? contentText.value : this.contentText),
      documentId: (documentId != null ? documentId.value : this.documentId),
      height: (height != null ? height.value : this.height),
      page: (page != null ? page.value : this.page),
      pageImg: (pageImg != null ? pageImg.value : this.pageImg),
      width: (width != null ? width.value : this.width),
      x0: (x0 != null ? x0.value : this.x0),
      x1: (x1 != null ? x1.value : this.x1),
      y0: (y0 != null ? y0.value : this.y0),
      y1: (y1 != null ? y1.value : this.y1),
      contentType: (contentType != null ? contentType.value : this.contentType),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAgentOutputDto {
  const CreateAgentOutputDto({required this.id, required this.datastoreIds});

  factory CreateAgentOutputDto.fromJson(Map<String, dynamic> json) =>
      _$CreateAgentOutputDtoFromJson(json);

  static const toJsonFactory = _$CreateAgentOutputDtoToJson;
  Map<String, dynamic> toJson() => _$CreateAgentOutputDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'datastore_ids', defaultValue: <String>[])
  final List<String> datastoreIds;
  static const fromJsonFactory = _$CreateAgentOutputDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateAgentOutputDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.datastoreIds, datastoreIds) ||
                const DeepCollectionEquality().equals(
                  other.datastoreIds,
                  datastoreIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(datastoreIds) ^
      runtimeType.hashCode;
}

extension $CreateAgentOutputDtoExtension on CreateAgentOutputDto {
  CreateAgentOutputDto copyWith({String? id, List<String>? datastoreIds}) {
    return CreateAgentOutputDto(
      id: id ?? this.id,
      datastoreIds: datastoreIds ?? this.datastoreIds,
    );
  }

  CreateAgentOutputDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<List<String>>? datastoreIds,
  }) {
    return CreateAgentOutputDto(
      id: (id != null ? id.value : this.id),
      datastoreIds: (datastoreIds != null
          ? datastoreIds.value
          : this.datastoreIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateAgentRequest {
  const CreateAgentRequest({
    required this.name,
    required this.datastoreId,
    this.systemPrompt,
    this.description,
  });

  factory CreateAgentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateAgentRequestFromJson(json);

  static const toJsonFactory = _$CreateAgentRequestToJson;
  Map<String, dynamic> toJson() => _$CreateAgentRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'datastore_id')
  final String datastoreId;
  @JsonKey(name: 'system_prompt')
  final String? systemPrompt;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$CreateAgentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateAgentRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.datastoreId, datastoreId) ||
                const DeepCollectionEquality().equals(
                  other.datastoreId,
                  datastoreId,
                )) &&
            (identical(other.systemPrompt, systemPrompt) ||
                const DeepCollectionEquality().equals(
                  other.systemPrompt,
                  systemPrompt,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(datastoreId) ^
      const DeepCollectionEquality().hash(systemPrompt) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CreateAgentRequestExtension on CreateAgentRequest {
  CreateAgentRequest copyWith({
    String? name,
    String? datastoreId,
    String? systemPrompt,
    String? description,
  }) {
    return CreateAgentRequest(
      name: name ?? this.name,
      datastoreId: datastoreId ?? this.datastoreId,
      systemPrompt: systemPrompt ?? this.systemPrompt,
      description: description ?? this.description,
    );
  }

  CreateAgentRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String>? datastoreId,
    Wrapped<String?>? systemPrompt,
    Wrapped<String?>? description,
  }) {
    return CreateAgentRequest(
      name: (name != null ? name.value : this.name),
      datastoreId: (datastoreId != null ? datastoreId.value : this.datastoreId),
      systemPrompt: (systemPrompt != null
          ? systemPrompt.value
          : this.systemPrompt),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateDatastoreRequest {
  const CreateDatastoreRequest({required this.name, this.description});

  factory CreateDatastoreRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateDatastoreRequestFromJson(json);

  static const toJsonFactory = _$CreateDatastoreRequestToJson;
  Map<String, dynamic> toJson() => _$CreateDatastoreRequestToJson(this);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$CreateDatastoreRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateDatastoreRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $CreateDatastoreRequestExtension on CreateDatastoreRequest {
  CreateDatastoreRequest copyWith({String? name, String? description}) {
    return CreateDatastoreRequest(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  CreateDatastoreRequest copyWithWrapped({
    Wrapped<String>? name,
    Wrapped<String?>? description,
  }) {
    return CreateDatastoreRequest(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class CreateDatastoreResponseDto {
  const CreateDatastoreResponseDto({required this.id});

  factory CreateDatastoreResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateDatastoreResponseDtoFromJson(json);

  static const toJsonFactory = _$CreateDatastoreResponseDtoToJson;
  Map<String, dynamic> toJson() => _$CreateDatastoreResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$CreateDatastoreResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CreateDatastoreResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $CreateDatastoreResponseDtoExtension on CreateDatastoreResponseDto {
  CreateDatastoreResponseDto copyWith({String? id}) {
    return CreateDatastoreResponseDto(id: id ?? this.id);
  }

  CreateDatastoreResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return CreateDatastoreResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class CustomMetadataConfigDto {
  const CustomMetadataConfigDto({
    this.filterable,
    this.inChunks,
    this.returnedInResponse,
  });

  factory CustomMetadataConfigDto.fromJson(Map<String, dynamic> json) =>
      _$CustomMetadataConfigDtoFromJson(json);

  static const toJsonFactory = _$CustomMetadataConfigDtoToJson;
  Map<String, dynamic> toJson() => _$CustomMetadataConfigDtoToJson(this);

  @JsonKey(name: 'filterable')
  final bool? filterable;
  @JsonKey(name: 'in_chunks')
  final bool? inChunks;
  @JsonKey(name: 'returned_in_response')
  final bool? returnedInResponse;
  static const fromJsonFactory = _$CustomMetadataConfigDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is CustomMetadataConfigDto &&
            (identical(other.filterable, filterable) ||
                const DeepCollectionEquality().equals(
                  other.filterable,
                  filterable,
                )) &&
            (identical(other.inChunks, inChunks) ||
                const DeepCollectionEquality().equals(
                  other.inChunks,
                  inChunks,
                )) &&
            (identical(other.returnedInResponse, returnedInResponse) ||
                const DeepCollectionEquality().equals(
                  other.returnedInResponse,
                  returnedInResponse,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(filterable) ^
      const DeepCollectionEquality().hash(inChunks) ^
      const DeepCollectionEquality().hash(returnedInResponse) ^
      runtimeType.hashCode;
}

extension $CustomMetadataConfigDtoExtension on CustomMetadataConfigDto {
  CustomMetadataConfigDto copyWith({
    bool? filterable,
    bool? inChunks,
    bool? returnedInResponse,
  }) {
    return CustomMetadataConfigDto(
      filterable: filterable ?? this.filterable,
      inChunks: inChunks ?? this.inChunks,
      returnedInResponse: returnedInResponse ?? this.returnedInResponse,
    );
  }

  CustomMetadataConfigDto copyWithWrapped({
    Wrapped<bool?>? filterable,
    Wrapped<bool?>? inChunks,
    Wrapped<bool?>? returnedInResponse,
  }) {
    return CustomMetadataConfigDto(
      filterable: (filterable != null ? filterable.value : this.filterable),
      inChunks: (inChunks != null ? inChunks.value : this.inChunks),
      returnedInResponse: (returnedInResponse != null
          ? returnedInResponse.value
          : this.returnedInResponse),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseAgentMetadataDto {
  const DataResponseAgentMetadataDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseAgentMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$DataResponseAgentMetadataDtoFromJson(json);

  static const toJsonFactory = _$DataResponseAgentMetadataDtoToJson;
  Map<String, dynamic> toJson() => _$DataResponseAgentMetadataDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final AgentMetadataDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseAgentMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseAgentMetadataDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseAgentMetadataDtoExtension
    on DataResponseAgentMetadataDto {
  DataResponseAgentMetadataDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    AgentMetadataDto? data,
    String? error,
  }) {
    return DataResponseAgentMetadataDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseAgentMetadataDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<AgentMetadataDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseAgentMetadataDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseAutoTopUpResponseDto {
  const DataResponseAutoTopUpResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseAutoTopUpResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseAutoTopUpResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseAutoTopUpResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseAutoTopUpResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final AutoTopUpResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseAutoTopUpResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseAutoTopUpResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseAutoTopUpResponseDtoExtension
    on DataResponseAutoTopUpResponseDto {
  DataResponseAutoTopUpResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    AutoTopUpResponseDto? data,
    String? error,
  }) {
    return DataResponseAutoTopUpResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseAutoTopUpResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<AutoTopUpResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseAutoTopUpResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseAutoTopUpStatusResponseDto {
  const DataResponseAutoTopUpStatusResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseAutoTopUpStatusResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseAutoTopUpStatusResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseAutoTopUpStatusResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseAutoTopUpStatusResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final AutoTopUpStatusResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseAutoTopUpStatusResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseAutoTopUpStatusResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseAutoTopUpStatusResponseDtoExtension
    on DataResponseAutoTopUpStatusResponseDto {
  DataResponseAutoTopUpStatusResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    AutoTopUpStatusResponseDto? data,
    String? error,
  }) {
    return DataResponseAutoTopUpStatusResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseAutoTopUpStatusResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<AutoTopUpStatusResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseAutoTopUpStatusResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseBalanceResponseDto {
  const DataResponseBalanceResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseBalanceResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DataResponseBalanceResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseBalanceResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DataResponseBalanceResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final BalanceResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseBalanceResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseBalanceResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseBalanceResponseDtoExtension
    on DataResponseBalanceResponseDto {
  DataResponseBalanceResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    BalanceResponseDto? data,
    String? error,
  }) {
    return DataResponseBalanceResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseBalanceResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<BalanceResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseBalanceResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseBillingMetadataResponseDto {
  const DataResponseBillingMetadataResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseBillingMetadataResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseBillingMetadataResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseBillingMetadataResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseBillingMetadataResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final BillingMetadataResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseBillingMetadataResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseBillingMetadataResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseBillingMetadataResponseDtoExtension
    on DataResponseBillingMetadataResponseDto {
  DataResponseBillingMetadataResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    BillingMetadataResponseDto? data,
    String? error,
  }) {
    return DataResponseBillingMetadataResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseBillingMetadataResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<BillingMetadataResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseBillingMetadataResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseBillingModeHistoryResponseDto {
  const DataResponseBillingModeHistoryResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseBillingModeHistoryResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseBillingModeHistoryResponseDtoFromJson(json);

  static const toJsonFactory =
      _$DataResponseBillingModeHistoryResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseBillingModeHistoryResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final BillingModeHistoryResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseBillingModeHistoryResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseBillingModeHistoryResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseBillingModeHistoryResponseDtoExtension
    on DataResponseBillingModeHistoryResponseDto {
  DataResponseBillingModeHistoryResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    BillingModeHistoryResponseDto? data,
    String? error,
  }) {
    return DataResponseBillingModeHistoryResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseBillingModeHistoryResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<BillingModeHistoryResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseBillingModeHistoryResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseCreateAgentOutputDto {
  const DataResponseCreateAgentOutputDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseCreateAgentOutputDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseCreateAgentOutputDtoFromJson(json);

  static const toJsonFactory = _$DataResponseCreateAgentOutputDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseCreateAgentOutputDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final CreateAgentOutputDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseCreateAgentOutputDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseCreateAgentOutputDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseCreateAgentOutputDtoExtension
    on DataResponseCreateAgentOutputDto {
  DataResponseCreateAgentOutputDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    CreateAgentOutputDto? data,
    String? error,
  }) {
    return DataResponseCreateAgentOutputDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseCreateAgentOutputDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<CreateAgentOutputDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseCreateAgentOutputDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseCreateDatastoreResponseDto {
  const DataResponseCreateDatastoreResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseCreateDatastoreResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseCreateDatastoreResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseCreateDatastoreResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseCreateDatastoreResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final CreateDatastoreResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseCreateDatastoreResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseCreateDatastoreResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseCreateDatastoreResponseDtoExtension
    on DataResponseCreateDatastoreResponseDto {
  DataResponseCreateDatastoreResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    CreateDatastoreResponseDto? data,
    String? error,
  }) {
    return DataResponseCreateDatastoreResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseCreateDatastoreResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<CreateDatastoreResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseCreateDatastoreResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseDatastoreMetadataDto {
  const DataResponseDatastoreMetadataDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseDatastoreMetadataDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseDatastoreMetadataDtoFromJson(json);

  static const toJsonFactory = _$DataResponseDatastoreMetadataDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseDatastoreMetadataDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final DatastoreMetadataDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseDatastoreMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseDatastoreMetadataDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseDatastoreMetadataDtoExtension
    on DataResponseDatastoreMetadataDto {
  DataResponseDatastoreMetadataDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    DatastoreMetadataDto? data,
    String? error,
  }) {
    return DataResponseDatastoreMetadataDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseDatastoreMetadataDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<DatastoreMetadataDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseDatastoreMetadataDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseDatastoreUpdateResponseDto {
  const DataResponseDatastoreUpdateResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseDatastoreUpdateResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseDatastoreUpdateResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseDatastoreUpdateResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseDatastoreUpdateResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final DatastoreUpdateResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseDatastoreUpdateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseDatastoreUpdateResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseDatastoreUpdateResponseDtoExtension
    on DataResponseDatastoreUpdateResponseDto {
  DataResponseDatastoreUpdateResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    DatastoreUpdateResponseDto? data,
    String? error,
  }) {
    return DataResponseDatastoreUpdateResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseDatastoreUpdateResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<DatastoreUpdateResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseDatastoreUpdateResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseDocumentMetadataDto {
  const DataResponseDocumentMetadataDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseDocumentMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$DataResponseDocumentMetadataDtoFromJson(json);

  static const toJsonFactory = _$DataResponseDocumentMetadataDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseDocumentMetadataDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto?
  data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseDocumentMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseDocumentMetadataDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseDocumentMetadataDtoExtension
    on DataResponseDocumentMetadataDto {
  DataResponseDocumentMetadataDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto?
    data,
    String? error,
  }) {
    return DataResponseDocumentMetadataDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseDocumentMetadataDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<
      SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto?
    >?
    data,
    Wrapped<String?>? error,
  }) {
    return DataResponseDocumentMetadataDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseEarliestUsageDateResponseDto {
  const DataResponseEarliestUsageDateResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseEarliestUsageDateResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseEarliestUsageDateResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseEarliestUsageDateResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseEarliestUsageDateResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final EarliestUsageDateResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseEarliestUsageDateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseEarliestUsageDateResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseEarliestUsageDateResponseDtoExtension
    on DataResponseEarliestUsageDateResponseDto {
  DataResponseEarliestUsageDateResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    EarliestUsageDateResponseDto? data,
    String? error,
  }) {
    return DataResponseEarliestUsageDateResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseEarliestUsageDateResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<EarliestUsageDateResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseEarliestUsageDateResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseGenerateCreateResponseDto {
  const DataResponseGenerateCreateResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseGenerateCreateResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseGenerateCreateResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseGenerateCreateResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseGenerateCreateResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final GenerateCreateResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseGenerateCreateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseGenerateCreateResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseGenerateCreateResponseDtoExtension
    on DataResponseGenerateCreateResponseDto {
  DataResponseGenerateCreateResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    GenerateCreateResponseDto? data,
    String? error,
  }) {
    return DataResponseGenerateCreateResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseGenerateCreateResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<GenerateCreateResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseGenerateCreateResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseIngestionResponseDto {
  const DataResponseIngestionResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseIngestionResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseIngestionResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseIngestionResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseIngestionResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final IngestionResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseIngestionResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseIngestionResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseIngestionResponseDtoExtension
    on DataResponseIngestionResponseDto {
  DataResponseIngestionResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    IngestionResponseDto? data,
    String? error,
  }) {
    return DataResponseIngestionResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseIngestionResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<IngestionResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseIngestionResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseListAgentsResponseDto {
  const DataResponseListAgentsResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseListAgentsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseListAgentsResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseListAgentsResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseListAgentsResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ListAgentsResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseListAgentsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseListAgentsResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseListAgentsResponseDtoExtension
    on DataResponseListAgentsResponseDto {
  DataResponseListAgentsResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ListAgentsResponseDto? data,
    String? error,
  }) {
    return DataResponseListAgentsResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseListAgentsResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ListAgentsResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseListAgentsResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseListDatastoresResponseDto {
  const DataResponseListDatastoresResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseListDatastoresResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseListDatastoresResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseListDatastoresResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseListDatastoresResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ListDatastoresResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseListDatastoresResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseListDatastoresResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseListDatastoresResponseDtoExtension
    on DataResponseListDatastoresResponseDto {
  DataResponseListDatastoresResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ListDatastoresResponseDto? data,
    String? error,
  }) {
    return DataResponseListDatastoresResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseListDatastoresResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ListDatastoresResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseListDatastoresResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseListDocumentsResponseDto {
  const DataResponseListDocumentsResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseListDocumentsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseListDocumentsResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseListDocumentsResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseListDocumentsResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ListDocumentsResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseListDocumentsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseListDocumentsResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseListDocumentsResponseDtoExtension
    on DataResponseListDocumentsResponseDto {
  DataResponseListDocumentsResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ListDocumentsResponseDto? data,
    String? error,
  }) {
    return DataResponseListDocumentsResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseListDocumentsResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ListDocumentsResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseListDocumentsResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseMonthlyUsageResponseDto {
  const DataResponseMonthlyUsageResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseMonthlyUsageResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseMonthlyUsageResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseMonthlyUsageResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseMonthlyUsageResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final MonthlyUsageResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseMonthlyUsageResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseMonthlyUsageResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseMonthlyUsageResponseDtoExtension
    on DataResponseMonthlyUsageResponseDto {
  DataResponseMonthlyUsageResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    MonthlyUsageResponseDto? data,
    String? error,
  }) {
    return DataResponseMonthlyUsageResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseMonthlyUsageResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<MonthlyUsageResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseMonthlyUsageResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseParseCreateResponseDto {
  const DataResponseParseCreateResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseParseCreateResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseParseCreateResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseParseCreateResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseParseCreateResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ParseCreateResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseParseCreateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseParseCreateResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseParseCreateResponseDtoExtension
    on DataResponseParseCreateResponseDto {
  DataResponseParseCreateResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ParseCreateResponseDto? data,
    String? error,
  }) {
    return DataResponseParseCreateResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseParseCreateResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ParseCreateResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseParseCreateResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseParseJobResultsResponseDto {
  const DataResponseParseJobResultsResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseParseJobResultsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseParseJobResultsResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseParseJobResultsResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseParseJobResultsResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ParseJobResultsResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseParseJobResultsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseParseJobResultsResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseParseJobResultsResponseDtoExtension
    on DataResponseParseJobResultsResponseDto {
  DataResponseParseJobResultsResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ParseJobResultsResponseDto? data,
    String? error,
  }) {
    return DataResponseParseJobResultsResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseParseJobResultsResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ParseJobResultsResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseParseJobResultsResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseParseJobStatusResponseDto {
  const DataResponseParseJobStatusResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseParseJobStatusResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseParseJobStatusResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseParseJobStatusResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseParseJobStatusResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ParseJobStatusResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$DataResponseParseJobStatusResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseParseJobStatusResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseParseJobStatusResponseDtoExtension
    on DataResponseParseJobStatusResponseDto {
  DataResponseParseJobStatusResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ParseJobStatusResponseDto? data,
    String? error,
  }) {
    return DataResponseParseJobStatusResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseParseJobStatusResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ParseJobStatusResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseParseJobStatusResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseParseJobsResponseDto {
  const DataResponseParseJobsResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseParseJobsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseParseJobsResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseParseJobsResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseParseJobsResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ParseJobsResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseParseJobsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseParseJobsResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseParseJobsResponseDtoExtension
    on DataResponseParseJobsResponseDto {
  DataResponseParseJobsResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ParseJobsResponseDto? data,
    String? error,
  }) {
    return DataResponseParseJobsResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseParseJobsResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ParseJobsResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseParseJobsResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseParseResultResponseDto {
  const DataResponseParseResultResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseParseResultResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseParseResultResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseParseResultResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseParseResultResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final ParseResultResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseParseResultResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseParseResultResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseParseResultResponseDtoExtension
    on DataResponseParseResultResponseDto {
  DataResponseParseResultResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    ParseResultResponseDto? data,
    String? error,
  }) {
    return DataResponseParseResultResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseParseResultResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<ParseResultResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseParseResultResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseQueryMetricsResponseDto {
  const DataResponseQueryMetricsResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseQueryMetricsResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseQueryMetricsResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseQueryMetricsResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseQueryMetricsResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final QueryMetricsResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseQueryMetricsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseQueryMetricsResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseQueryMetricsResponseDtoExtension
    on DataResponseQueryMetricsResponseDto {
  DataResponseQueryMetricsResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    QueryMetricsResponseDto? data,
    String? error,
  }) {
    return DataResponseQueryMetricsResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseQueryMetricsResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<QueryMetricsResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseQueryMetricsResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseQueryResponseDto {
  const DataResponseQueryResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseQueryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DataResponseQueryResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseQueryResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DataResponseQueryResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final QueryResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseQueryResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseQueryResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseQueryResponseDtoExtension
    on DataResponseQueryResponseDto {
  DataResponseQueryResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    QueryResponseDto? data,
    String? error,
  }) {
    return DataResponseQueryResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseQueryResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<QueryResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseQueryResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseRerankCreateResponseDto {
  const DataResponseRerankCreateResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseRerankCreateResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseRerankCreateResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseRerankCreateResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseRerankCreateResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final RerankCreateResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseRerankCreateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseRerankCreateResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseRerankCreateResponseDtoExtension
    on DataResponseRerankCreateResponseDto {
  DataResponseRerankCreateResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    RerankCreateResponseDto? data,
    String? error,
  }) {
    return DataResponseRerankCreateResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseRerankCreateResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<RerankCreateResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseRerankCreateResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseRetrievalInfoResponseDto {
  const DataResponseRetrievalInfoResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseRetrievalInfoResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseRetrievalInfoResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseRetrievalInfoResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseRetrievalInfoResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final RetrievalInfoResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseRetrievalInfoResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseRetrievalInfoResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseRetrievalInfoResponseDtoExtension
    on DataResponseRetrievalInfoResponseDto {
  DataResponseRetrievalInfoResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    RetrievalInfoResponseDto? data,
    String? error,
  }) {
    return DataResponseRetrievalInfoResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseRetrievalInfoResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<RetrievalInfoResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseRetrievalInfoResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DataResponseTopUpHistoryResponseDto {
  const DataResponseTopUpHistoryResponseDto({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory DataResponseTopUpHistoryResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DataResponseTopUpHistoryResponseDtoFromJson(json);

  static const toJsonFactory = _$DataResponseTopUpHistoryResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DataResponseTopUpHistoryResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final TopUpHistoryResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory = _$DataResponseTopUpHistoryResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DataResponseTopUpHistoryResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $DataResponseTopUpHistoryResponseDtoExtension
    on DataResponseTopUpHistoryResponseDto {
  DataResponseTopUpHistoryResponseDto copyWith({
    enums.ResponseStatus? status,
    String? message,
    TopUpHistoryResponseDto? data,
    String? error,
  }) {
    return DataResponseTopUpHistoryResponseDto(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  DataResponseTopUpHistoryResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<TopUpHistoryResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return DataResponseTopUpHistoryResponseDto(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DatastoreDto {
  const DatastoreDto({
    required this.id,
    required this.createdAt,
    required this.datastoreType,
    required this.name,
    this.configuration,
  });

  factory DatastoreDto.fromJson(Map<String, dynamic> json) =>
      _$DatastoreDtoFromJson(json);

  static const toJsonFactory = _$DatastoreDtoToJson;
  Map<String, dynamic> toJson() => _$DatastoreDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'datastore_type')
  final String datastoreType;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'configuration')
  final ConfigurationDto? configuration;
  static const fromJsonFactory = _$DatastoreDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DatastoreDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.datastoreType, datastoreType) ||
                const DeepCollectionEquality().equals(
                  other.datastoreType,
                  datastoreType,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.configuration, configuration) ||
                const DeepCollectionEquality().equals(
                  other.configuration,
                  configuration,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(datastoreType) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(configuration) ^
      runtimeType.hashCode;
}

extension $DatastoreDtoExtension on DatastoreDto {
  DatastoreDto copyWith({
    String? id,
    DateTime? createdAt,
    String? datastoreType,
    String? name,
    ConfigurationDto? configuration,
  }) {
    return DatastoreDto(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      datastoreType: datastoreType ?? this.datastoreType,
      name: name ?? this.name,
      configuration: configuration ?? this.configuration,
    );
  }

  DatastoreDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<DateTime>? createdAt,
    Wrapped<String>? datastoreType,
    Wrapped<String>? name,
    Wrapped<ConfigurationDto?>? configuration,
  }) {
    return DatastoreDto(
      id: (id != null ? id.value : this.id),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      datastoreType: (datastoreType != null
          ? datastoreType.value
          : this.datastoreType),
      name: (name != null ? name.value : this.name),
      configuration: (configuration != null
          ? configuration.value
          : this.configuration),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DatastoreMetadataDto {
  const DatastoreMetadataDto({
    required this.agentIds,
    required this.createdAt,
    required this.name,
    this.configuration,
    this.datastoreType,
    this.datastoreUsages,
  });

  factory DatastoreMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$DatastoreMetadataDtoFromJson(json);

  static const toJsonFactory = _$DatastoreMetadataDtoToJson;
  Map<String, dynamic> toJson() => _$DatastoreMetadataDtoToJson(this);

  @JsonKey(name: 'agent_ids', defaultValue: <String>[])
  final List<String> agentIds;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'configuration')
  final ConfigurationDto? configuration;
  @JsonKey(name: 'datastore_type')
  final String? datastoreType;
  @JsonKey(name: 'datastore_usages')
  final DatastoreUsagesDto? datastoreUsages;
  static const fromJsonFactory = _$DatastoreMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DatastoreMetadataDto &&
            (identical(other.agentIds, agentIds) ||
                const DeepCollectionEquality().equals(
                  other.agentIds,
                  agentIds,
                )) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.configuration, configuration) ||
                const DeepCollectionEquality().equals(
                  other.configuration,
                  configuration,
                )) &&
            (identical(other.datastoreType, datastoreType) ||
                const DeepCollectionEquality().equals(
                  other.datastoreType,
                  datastoreType,
                )) &&
            (identical(other.datastoreUsages, datastoreUsages) ||
                const DeepCollectionEquality().equals(
                  other.datastoreUsages,
                  datastoreUsages,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(agentIds) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(configuration) ^
      const DeepCollectionEquality().hash(datastoreType) ^
      const DeepCollectionEquality().hash(datastoreUsages) ^
      runtimeType.hashCode;
}

extension $DatastoreMetadataDtoExtension on DatastoreMetadataDto {
  DatastoreMetadataDto copyWith({
    List<String>? agentIds,
    DateTime? createdAt,
    String? name,
    ConfigurationDto? configuration,
    String? datastoreType,
    DatastoreUsagesDto? datastoreUsages,
  }) {
    return DatastoreMetadataDto(
      agentIds: agentIds ?? this.agentIds,
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      configuration: configuration ?? this.configuration,
      datastoreType: datastoreType ?? this.datastoreType,
      datastoreUsages: datastoreUsages ?? this.datastoreUsages,
    );
  }

  DatastoreMetadataDto copyWithWrapped({
    Wrapped<List<String>>? agentIds,
    Wrapped<DateTime>? createdAt,
    Wrapped<String>? name,
    Wrapped<ConfigurationDto?>? configuration,
    Wrapped<String?>? datastoreType,
    Wrapped<DatastoreUsagesDto?>? datastoreUsages,
  }) {
    return DatastoreMetadataDto(
      agentIds: (agentIds != null ? agentIds.value : this.agentIds),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      name: (name != null ? name.value : this.name),
      configuration: (configuration != null
          ? configuration.value
          : this.configuration),
      datastoreType: (datastoreType != null
          ? datastoreType.value
          : this.datastoreType),
      datastoreUsages: (datastoreUsages != null
          ? datastoreUsages.value
          : this.datastoreUsages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DatastoreUpdateResponseDto {
  const DatastoreUpdateResponseDto({required this.id});

  factory DatastoreUpdateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DatastoreUpdateResponseDtoFromJson(json);

  static const toJsonFactory = _$DatastoreUpdateResponseDtoToJson;
  Map<String, dynamic> toJson() => _$DatastoreUpdateResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$DatastoreUpdateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DatastoreUpdateResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $DatastoreUpdateResponseDtoExtension on DatastoreUpdateResponseDto {
  DatastoreUpdateResponseDto copyWith({String? id}) {
    return DatastoreUpdateResponseDto(id: id ?? this.id);
  }

  DatastoreUpdateResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return DatastoreUpdateResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DatastoreUsagesDto {
  const DatastoreUsagesDto({required this.sizeGb});

  factory DatastoreUsagesDto.fromJson(Map<String, dynamic> json) =>
      _$DatastoreUsagesDtoFromJson(json);

  static const toJsonFactory = _$DatastoreUsagesDtoToJson;
  Map<String, dynamic> toJson() => _$DatastoreUsagesDtoToJson(this);

  @JsonKey(name: 'size_gb')
  final double sizeGb;
  static const fromJsonFactory = _$DatastoreUsagesDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DatastoreUsagesDto &&
            (identical(other.sizeGb, sizeGb) ||
                const DeepCollectionEquality().equals(other.sizeGb, sizeGb)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(sizeGb) ^ runtimeType.hashCode;
}

extension $DatastoreUsagesDtoExtension on DatastoreUsagesDto {
  DatastoreUsagesDto copyWith({double? sizeGb}) {
    return DatastoreUsagesDto(sizeGb: sizeGb ?? this.sizeGb);
  }

  DatastoreUsagesDto copyWithWrapped({Wrapped<double>? sizeGb}) {
    return DatastoreUsagesDto(
      sizeGb: (sizeGb != null ? sizeGb.value : this.sizeGb),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentFilterQuery {
  const DocumentFilterQuery({
    required this.field,
    required this.$operator,
    required this.$value,
  });

  factory DocumentFilterQuery.fromJson(Map<String, dynamic> json) =>
      _$DocumentFilterQueryFromJson(json);

  static const toJsonFactory = _$DocumentFilterQueryToJson;
  Map<String, dynamic> toJson() => _$DocumentFilterQueryToJson(this);

  @JsonKey(name: 'field')
  final String field;
  @JsonKey(
    name: 'operator',
    toJson: documentFilterQueryOperatorToJson,
    fromJson: documentFilterQueryOperatorFromJson,
  )
  final enums.DocumentFilterQueryOperator $operator;
  @JsonKey(name: 'value')
  final dynamic $value;
  static const fromJsonFactory = _$DocumentFilterQueryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DocumentFilterQuery &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.$operator, $operator) ||
                const DeepCollectionEquality().equals(
                  other.$operator,
                  $operator,
                )) &&
            (identical(other.$value, $value) ||
                const DeepCollectionEquality().equals(other.$value, $value)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash($operator) ^
      const DeepCollectionEquality().hash($value) ^
      runtimeType.hashCode;
}

extension $DocumentFilterQueryExtension on DocumentFilterQuery {
  DocumentFilterQuery copyWith({
    String? field,
    enums.DocumentFilterQueryOperator? $operator,
    dynamic $value,
  }) {
    return DocumentFilterQuery(
      field: field ?? this.field,
      $operator: $operator ?? this.$operator,
      $value: $value ?? this.$value,
    );
  }

  DocumentFilterQuery copyWithWrapped({
    Wrapped<String>? field,
    Wrapped<enums.DocumentFilterQueryOperator>? $operator,
    Wrapped<dynamic>? $value,
  }) {
    return DocumentFilterQuery(
      field: (field != null ? field.value : this.field),
      $operator: ($operator != null ? $operator.value : this.$operator),
      $value: ($value != null ? $value.value : this.$value),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMetadataHierarchyBlockBoundingBoxDto {
  const DocumentMetadataHierarchyBlockBoundingBoxDto({
    required this.x0,
    required this.x1,
    required this.y0,
    required this.y1,
  });

  factory DocumentMetadataHierarchyBlockBoundingBoxDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DocumentMetadataHierarchyBlockBoundingBoxDtoFromJson(json);

  static const toJsonFactory =
      _$DocumentMetadataHierarchyBlockBoundingBoxDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DocumentMetadataHierarchyBlockBoundingBoxDtoToJson(this);

  @JsonKey(name: 'x0')
  final double x0;
  @JsonKey(name: 'x1')
  final double x1;
  @JsonKey(name: 'y0')
  final double y0;
  @JsonKey(name: 'y1')
  final double y1;
  static const fromJsonFactory =
      _$DocumentMetadataHierarchyBlockBoundingBoxDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DocumentMetadataHierarchyBlockBoundingBoxDto &&
            (identical(other.x0, x0) ||
                const DeepCollectionEquality().equals(other.x0, x0)) &&
            (identical(other.x1, x1) ||
                const DeepCollectionEquality().equals(other.x1, x1)) &&
            (identical(other.y0, y0) ||
                const DeepCollectionEquality().equals(other.y0, y0)) &&
            (identical(other.y1, y1) ||
                const DeepCollectionEquality().equals(other.y1, y1)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(x0) ^
      const DeepCollectionEquality().hash(x1) ^
      const DeepCollectionEquality().hash(y0) ^
      const DeepCollectionEquality().hash(y1) ^
      runtimeType.hashCode;
}

extension $DocumentMetadataHierarchyBlockBoundingBoxDtoExtension
    on DocumentMetadataHierarchyBlockBoundingBoxDto {
  DocumentMetadataHierarchyBlockBoundingBoxDto copyWith({
    double? x0,
    double? x1,
    double? y0,
    double? y1,
  }) {
    return DocumentMetadataHierarchyBlockBoundingBoxDto(
      x0: x0 ?? this.x0,
      x1: x1 ?? this.x1,
      y0: y0 ?? this.y0,
      y1: y1 ?? this.y1,
    );
  }

  DocumentMetadataHierarchyBlockBoundingBoxDto copyWithWrapped({
    Wrapped<double>? x0,
    Wrapped<double>? x1,
    Wrapped<double>? y0,
    Wrapped<double>? y1,
  }) {
    return DocumentMetadataHierarchyBlockBoundingBoxDto(
      x0: (x0 != null ? x0.value : this.x0),
      x1: (x1 != null ? x1.value : this.x1),
      y0: (y0 != null ? y0.value : this.y0),
      y1: (y1 != null ? y1.value : this.y1),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMetadataHierarchyBlockDto {
  const DocumentMetadataHierarchyBlockDto({
    required this.id,
    required this.boundingBox,
    required this.markdown,
    required this.type,
    this.confidenceLevel,
    this.hierarchyLevel,
    this.pageIndex,
    this.parentIds,
  });

  factory DocumentMetadataHierarchyBlockDto.fromJson(
    Map<String, dynamic> json,
  ) => _$DocumentMetadataHierarchyBlockDtoFromJson(json);

  static const toJsonFactory = _$DocumentMetadataHierarchyBlockDtoToJson;
  Map<String, dynamic> toJson() =>
      _$DocumentMetadataHierarchyBlockDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'bounding_box')
  final DocumentMetadataHierarchyBlockBoundingBoxDto boundingBox;
  @JsonKey(name: 'markdown')
  final String markdown;
  @JsonKey(
    name: 'type',
    toJson: documentMetadataHierarchyBlockDtoTypeToJson,
    fromJson: documentMetadataHierarchyBlockDtoTypeFromJson,
  )
  final enums.DocumentMetadataHierarchyBlockDtoType type;
  @JsonKey(
    name: 'confidence_level',
    toJson: documentMetadataHierarchyBlockDtoConfidenceLevelNullableToJson,
    fromJson: documentMetadataHierarchyBlockDtoConfidenceLevelNullableFromJson,
  )
  final enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel? confidenceLevel;
  @JsonKey(name: 'hierarchy_level')
  final int? hierarchyLevel;
  @JsonKey(name: 'page_index')
  final int? pageIndex;
  @JsonKey(name: 'parent_ids', defaultValue: <String>[])
  final List<String>? parentIds;
  static const fromJsonFactory = _$DocumentMetadataHierarchyBlockDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DocumentMetadataHierarchyBlockDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.boundingBox, boundingBox) ||
                const DeepCollectionEquality().equals(
                  other.boundingBox,
                  boundingBox,
                )) &&
            (identical(other.markdown, markdown) ||
                const DeepCollectionEquality().equals(
                  other.markdown,
                  markdown,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.confidenceLevel, confidenceLevel) ||
                const DeepCollectionEquality().equals(
                  other.confidenceLevel,
                  confidenceLevel,
                )) &&
            (identical(other.hierarchyLevel, hierarchyLevel) ||
                const DeepCollectionEquality().equals(
                  other.hierarchyLevel,
                  hierarchyLevel,
                )) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.parentIds, parentIds) ||
                const DeepCollectionEquality().equals(
                  other.parentIds,
                  parentIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(boundingBox) ^
      const DeepCollectionEquality().hash(markdown) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(confidenceLevel) ^
      const DeepCollectionEquality().hash(hierarchyLevel) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(parentIds) ^
      runtimeType.hashCode;
}

extension $DocumentMetadataHierarchyBlockDtoExtension
    on DocumentMetadataHierarchyBlockDto {
  DocumentMetadataHierarchyBlockDto copyWith({
    String? id,
    DocumentMetadataHierarchyBlockBoundingBoxDto? boundingBox,
    String? markdown,
    enums.DocumentMetadataHierarchyBlockDtoType? type,
    enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel? confidenceLevel,
    int? hierarchyLevel,
    int? pageIndex,
    List<String>? parentIds,
  }) {
    return DocumentMetadataHierarchyBlockDto(
      id: id ?? this.id,
      boundingBox: boundingBox ?? this.boundingBox,
      markdown: markdown ?? this.markdown,
      type: type ?? this.type,
      confidenceLevel: confidenceLevel ?? this.confidenceLevel,
      hierarchyLevel: hierarchyLevel ?? this.hierarchyLevel,
      pageIndex: pageIndex ?? this.pageIndex,
      parentIds: parentIds ?? this.parentIds,
    );
  }

  DocumentMetadataHierarchyBlockDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<DocumentMetadataHierarchyBlockBoundingBoxDto>? boundingBox,
    Wrapped<String>? markdown,
    Wrapped<enums.DocumentMetadataHierarchyBlockDtoType>? type,
    Wrapped<enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel?>?
    confidenceLevel,
    Wrapped<int?>? hierarchyLevel,
    Wrapped<int?>? pageIndex,
    Wrapped<List<String>?>? parentIds,
  }) {
    return DocumentMetadataHierarchyBlockDto(
      id: (id != null ? id.value : this.id),
      boundingBox: (boundingBox != null ? boundingBox.value : this.boundingBox),
      markdown: (markdown != null ? markdown.value : this.markdown),
      type: (type != null ? type.value : this.type),
      confidenceLevel: (confidenceLevel != null
          ? confidenceLevel.value
          : this.confidenceLevel),
      hierarchyLevel: (hierarchyLevel != null
          ? hierarchyLevel.value
          : this.hierarchyLevel),
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      parentIds: (parentIds != null ? parentIds.value : this.parentIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentMetadataHierarchyDto {
  const DocumentMetadataHierarchyDto({this.blocks, this.tableOfContents});

  factory DocumentMetadataHierarchyDto.fromJson(Map<String, dynamic> json) =>
      _$DocumentMetadataHierarchyDtoFromJson(json);

  static const toJsonFactory = _$DocumentMetadataHierarchyDtoToJson;
  Map<String, dynamic> toJson() => _$DocumentMetadataHierarchyDtoToJson(this);

  @JsonKey(name: 'blocks', defaultValue: <DocumentMetadataHierarchyBlockDto>[])
  final List<DocumentMetadataHierarchyBlockDto>? blocks;
  @JsonKey(name: 'table_of_contents')
  final String? tableOfContents;
  static const fromJsonFactory = _$DocumentMetadataHierarchyDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DocumentMetadataHierarchyDto &&
            (identical(other.blocks, blocks) ||
                const DeepCollectionEquality().equals(other.blocks, blocks)) &&
            (identical(other.tableOfContents, tableOfContents) ||
                const DeepCollectionEquality().equals(
                  other.tableOfContents,
                  tableOfContents,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(blocks) ^
      const DeepCollectionEquality().hash(tableOfContents) ^
      runtimeType.hashCode;
}

extension $DocumentMetadataHierarchyDtoExtension
    on DocumentMetadataHierarchyDto {
  DocumentMetadataHierarchyDto copyWith({
    List<DocumentMetadataHierarchyBlockDto>? blocks,
    String? tableOfContents,
  }) {
    return DocumentMetadataHierarchyDto(
      blocks: blocks ?? this.blocks,
      tableOfContents: tableOfContents ?? this.tableOfContents,
    );
  }

  DocumentMetadataHierarchyDto copyWithWrapped({
    Wrapped<List<DocumentMetadataHierarchyBlockDto>?>? blocks,
    Wrapped<String?>? tableOfContents,
  }) {
    return DocumentMetadataHierarchyDto(
      blocks: (blocks != null ? blocks.value : this.blocks),
      tableOfContents: (tableOfContents != null
          ? tableOfContents.value
          : this.tableOfContents),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class DocumentsFiltersQuery {
  const DocumentsFiltersQuery({required this.filters, this.$operator});

  factory DocumentsFiltersQuery.fromJson(Map<String, dynamic> json) =>
      _$DocumentsFiltersQueryFromJson(json);

  static const toJsonFactory = _$DocumentsFiltersQueryToJson;
  Map<String, dynamic> toJson() => _$DocumentsFiltersQueryToJson(this);

  @JsonKey(name: 'filters', defaultValue: <DocumentFilterQuery>[])
  final List<DocumentFilterQuery> filters;
  @JsonKey(
    name: 'operator',
    toJson: documentsFiltersQueryOperatorNullableToJson,
    fromJson: documentsFiltersQueryOperator$operatorNullableFromJson,
  )
  final enums.DocumentsFiltersQueryOperator? $operator;
  static enums.DocumentsFiltersQueryOperator?
  documentsFiltersQueryOperator$operatorNullableFromJson(Object? value) =>
      documentsFiltersQueryOperatorNullableFromJson(
        value,
        enums.DocumentsFiltersQueryOperator.and,
      );

  static const fromJsonFactory = _$DocumentsFiltersQueryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is DocumentsFiltersQuery &&
            (identical(other.filters, filters) ||
                const DeepCollectionEquality().equals(
                  other.filters,
                  filters,
                )) &&
            (identical(other.$operator, $operator) ||
                const DeepCollectionEquality().equals(
                  other.$operator,
                  $operator,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(filters) ^
      const DeepCollectionEquality().hash($operator) ^
      runtimeType.hashCode;
}

extension $DocumentsFiltersQueryExtension on DocumentsFiltersQuery {
  DocumentsFiltersQuery copyWith({
    List<DocumentFilterQuery>? filters,
    enums.DocumentsFiltersQueryOperator? $operator,
  }) {
    return DocumentsFiltersQuery(
      filters: filters ?? this.filters,
      $operator: $operator ?? this.$operator,
    );
  }

  DocumentsFiltersQuery copyWithWrapped({
    Wrapped<List<DocumentFilterQuery>>? filters,
    Wrapped<enums.DocumentsFiltersQueryOperator?>? $operator,
  }) {
    return DocumentsFiltersQuery(
      filters: (filters != null ? filters.value : this.filters),
      $operator: ($operator != null ? $operator.value : this.$operator),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class EarliestUsageDateResponseDto {
  const EarliestUsageDateResponseDto({required this.date});

  factory EarliestUsageDateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$EarliestUsageDateResponseDtoFromJson(json);

  static const toJsonFactory = _$EarliestUsageDateResponseDtoToJson;
  Map<String, dynamic> toJson() => _$EarliestUsageDateResponseDtoToJson(this);

  @JsonKey(name: 'date')
  final dynamic date;
  static const fromJsonFactory = _$EarliestUsageDateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is EarliestUsageDateResponseDto &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(date) ^ runtimeType.hashCode;
}

extension $EarliestUsageDateResponseDtoExtension
    on EarliestUsageDateResponseDto {
  EarliestUsageDateResponseDto copyWith({dynamic date}) {
    return EarliestUsageDateResponseDto(date: date ?? this.date);
  }

  EarliestUsageDateResponseDto copyWithWrapped({Wrapped<dynamic>? date}) {
    return EarliestUsageDateResponseDto(
      date: (date != null ? date.value : this.date),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class FeedbackRequest {
  const FeedbackRequest({
    required this.messageId,
    required this.feedback,
    this.explanation,
    this.contentId,
  });

  factory FeedbackRequest.fromJson(Map<String, dynamic> json) =>
      _$FeedbackRequestFromJson(json);

  static const toJsonFactory = _$FeedbackRequestToJson;
  Map<String, dynamic> toJson() => _$FeedbackRequestToJson(this);

  @JsonKey(name: 'message_id')
  final String messageId;
  @JsonKey(name: 'feedback')
  final String feedback;
  @JsonKey(name: 'explanation')
  final String? explanation;
  @JsonKey(name: 'content_id')
  final String? contentId;
  static const fromJsonFactory = _$FeedbackRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is FeedbackRequest &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality().equals(
                  other.messageId,
                  messageId,
                )) &&
            (identical(other.feedback, feedback) ||
                const DeepCollectionEquality().equals(
                  other.feedback,
                  feedback,
                )) &&
            (identical(other.explanation, explanation) ||
                const DeepCollectionEquality().equals(
                  other.explanation,
                  explanation,
                )) &&
            (identical(other.contentId, contentId) ||
                const DeepCollectionEquality().equals(
                  other.contentId,
                  contentId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(feedback) ^
      const DeepCollectionEquality().hash(explanation) ^
      const DeepCollectionEquality().hash(contentId) ^
      runtimeType.hashCode;
}

extension $FeedbackRequestExtension on FeedbackRequest {
  FeedbackRequest copyWith({
    String? messageId,
    String? feedback,
    String? explanation,
    String? contentId,
  }) {
    return FeedbackRequest(
      messageId: messageId ?? this.messageId,
      feedback: feedback ?? this.feedback,
      explanation: explanation ?? this.explanation,
      contentId: contentId ?? this.contentId,
    );
  }

  FeedbackRequest copyWithWrapped({
    Wrapped<String>? messageId,
    Wrapped<String>? feedback,
    Wrapped<String?>? explanation,
    Wrapped<String?>? contentId,
  }) {
    return FeedbackRequest(
      messageId: (messageId != null ? messageId.value : this.messageId),
      feedback: (feedback != null ? feedback.value : this.feedback),
      explanation: (explanation != null ? explanation.value : this.explanation),
      contentId: (contentId != null ? contentId.value : this.contentId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GenerateCreateResponseDto {
  const GenerateCreateResponseDto({required this.response});

  factory GenerateCreateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$GenerateCreateResponseDtoFromJson(json);

  static const toJsonFactory = _$GenerateCreateResponseDtoToJson;
  Map<String, dynamic> toJson() => _$GenerateCreateResponseDtoToJson(this);

  @JsonKey(name: 'response')
  final String response;
  static const fromJsonFactory = _$GenerateCreateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GenerateCreateResponseDto &&
            (identical(other.response, response) ||
                const DeepCollectionEquality().equals(
                  other.response,
                  response,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(response) ^ runtimeType.hashCode;
}

extension $GenerateCreateResponseDtoExtension on GenerateCreateResponseDto {
  GenerateCreateResponseDto copyWith({String? response}) {
    return GenerateCreateResponseDto(response: response ?? this.response);
  }

  GenerateCreateResponseDto copyWithWrapped({Wrapped<String>? response}) {
    return GenerateCreateResponseDto(
      response: (response != null ? response.value : this.response),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GenerateRequest {
  const GenerateRequest({
    required this.model,
    required this.messages,
    this.knowledge,
    this.systemPrompt,
    this.avoidCommentary,
    this.temperature,
    this.topP,
    this.maxNewTokens,
  });

  factory GenerateRequest.fromJson(Map<String, dynamic> json) =>
      _$GenerateRequestFromJson(json);

  static const toJsonFactory = _$GenerateRequestToJson;
  Map<String, dynamic> toJson() => _$GenerateRequestToJson(this);

  @JsonKey(name: 'model')
  final String model;
  @JsonKey(name: 'messages', defaultValue: <Message>[])
  final List<Message> messages;
  @JsonKey(name: 'knowledge', defaultValue: <String>[])
  final List<String>? knowledge;
  @JsonKey(name: 'system_prompt')
  final String? systemPrompt;
  @JsonKey(name: 'avoid_commentary', defaultValue: false)
  final bool? avoidCommentary;
  @JsonKey(name: 'temperature')
  final double? temperature;
  @JsonKey(name: 'top_p')
  final double? topP;
  @JsonKey(name: 'max_new_tokens')
  final int? maxNewTokens;
  static const fromJsonFactory = _$GenerateRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GenerateRequest &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality().equals(
                  other.messages,
                  messages,
                )) &&
            (identical(other.knowledge, knowledge) ||
                const DeepCollectionEquality().equals(
                  other.knowledge,
                  knowledge,
                )) &&
            (identical(other.systemPrompt, systemPrompt) ||
                const DeepCollectionEquality().equals(
                  other.systemPrompt,
                  systemPrompt,
                )) &&
            (identical(other.avoidCommentary, avoidCommentary) ||
                const DeepCollectionEquality().equals(
                  other.avoidCommentary,
                  avoidCommentary,
                )) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality().equals(
                  other.temperature,
                  temperature,
                )) &&
            (identical(other.topP, topP) ||
                const DeepCollectionEquality().equals(other.topP, topP)) &&
            (identical(other.maxNewTokens, maxNewTokens) ||
                const DeepCollectionEquality().equals(
                  other.maxNewTokens,
                  maxNewTokens,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(knowledge) ^
      const DeepCollectionEquality().hash(systemPrompt) ^
      const DeepCollectionEquality().hash(avoidCommentary) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(topP) ^
      const DeepCollectionEquality().hash(maxNewTokens) ^
      runtimeType.hashCode;
}

extension $GenerateRequestExtension on GenerateRequest {
  GenerateRequest copyWith({
    String? model,
    List<Message>? messages,
    List<String>? knowledge,
    String? systemPrompt,
    bool? avoidCommentary,
    double? temperature,
    double? topP,
    int? maxNewTokens,
  }) {
    return GenerateRequest(
      model: model ?? this.model,
      messages: messages ?? this.messages,
      knowledge: knowledge ?? this.knowledge,
      systemPrompt: systemPrompt ?? this.systemPrompt,
      avoidCommentary: avoidCommentary ?? this.avoidCommentary,
      temperature: temperature ?? this.temperature,
      topP: topP ?? this.topP,
      maxNewTokens: maxNewTokens ?? this.maxNewTokens,
    );
  }

  GenerateRequest copyWithWrapped({
    Wrapped<String>? model,
    Wrapped<List<Message>>? messages,
    Wrapped<List<String>?>? knowledge,
    Wrapped<String?>? systemPrompt,
    Wrapped<bool?>? avoidCommentary,
    Wrapped<double?>? temperature,
    Wrapped<double?>? topP,
    Wrapped<int?>? maxNewTokens,
  }) {
    return GenerateRequest(
      model: (model != null ? model.value : this.model),
      messages: (messages != null ? messages.value : this.messages),
      knowledge: (knowledge != null ? knowledge.value : this.knowledge),
      systemPrompt: (systemPrompt != null
          ? systemPrompt.value
          : this.systemPrompt),
      avoidCommentary: (avoidCommentary != null
          ? avoidCommentary.value
          : this.avoidCommentary),
      temperature: (temperature != null ? temperature.value : this.temperature),
      topP: (topP != null ? topP.value : this.topP),
      maxNewTokens: (maxNewTokens != null
          ? maxNewTokens.value
          : this.maxNewTokens),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class GroundednessScoreDto {
  const GroundednessScoreDto({
    required this.endIdx,
    required this.score,
    required this.startIdx,
  });

  factory GroundednessScoreDto.fromJson(Map<String, dynamic> json) =>
      _$GroundednessScoreDtoFromJson(json);

  static const toJsonFactory = _$GroundednessScoreDtoToJson;
  Map<String, dynamic> toJson() => _$GroundednessScoreDtoToJson(this);

  @JsonKey(name: 'end_idx')
  final int endIdx;
  @JsonKey(name: 'score')
  final int score;
  @JsonKey(name: 'start_idx')
  final int startIdx;
  static const fromJsonFactory = _$GroundednessScoreDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is GroundednessScoreDto &&
            (identical(other.endIdx, endIdx) ||
                const DeepCollectionEquality().equals(other.endIdx, endIdx)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.startIdx, startIdx) ||
                const DeepCollectionEquality().equals(
                  other.startIdx,
                  startIdx,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(endIdx) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(startIdx) ^
      runtimeType.hashCode;
}

extension $GroundednessScoreDtoExtension on GroundednessScoreDto {
  GroundednessScoreDto copyWith({int? endIdx, int? score, int? startIdx}) {
    return GroundednessScoreDto(
      endIdx: endIdx ?? this.endIdx,
      score: score ?? this.score,
      startIdx: startIdx ?? this.startIdx,
    );
  }

  GroundednessScoreDto copyWithWrapped({
    Wrapped<int>? endIdx,
    Wrapped<int>? score,
    Wrapped<int>? startIdx,
  }) {
    return GroundednessScoreDto(
      endIdx: (endIdx != null ? endIdx.value : this.endIdx),
      score: (score != null ? score.value : this.score),
      startIdx: (startIdx != null ? startIdx.value : this.startIdx),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class HTTPValidationError {
  const HTTPValidationError({this.detail});

  factory HTTPValidationError.fromJson(Map<String, dynamic> json) =>
      _$HTTPValidationErrorFromJson(json);

  static const toJsonFactory = _$HTTPValidationErrorToJson;
  Map<String, dynamic> toJson() => _$HTTPValidationErrorToJson(this);

  @JsonKey(name: 'detail', defaultValue: <ValidationError>[])
  final List<ValidationError>? detail;
  static const fromJsonFactory = _$HTTPValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is HTTPValidationError &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(detail) ^ runtimeType.hashCode;
}

extension $HTTPValidationErrorExtension on HTTPValidationError {
  HTTPValidationError copyWith({List<ValidationError>? detail}) {
    return HTTPValidationError(detail: detail ?? this.detail);
  }

  HTTPValidationError copyWithWrapped({
    Wrapped<List<ValidationError>?>? detail,
  }) {
    return HTTPValidationError(
      detail: (detail != null ? detail.value : this.detail),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class IncrementBalanceRequest {
  const IncrementBalanceRequest({required this.amount});

  factory IncrementBalanceRequest.fromJson(Map<String, dynamic> json) =>
      _$IncrementBalanceRequestFromJson(json);

  static const toJsonFactory = _$IncrementBalanceRequestToJson;
  Map<String, dynamic> toJson() => _$IncrementBalanceRequestToJson(this);

  @JsonKey(name: 'amount')
  final double amount;
  static const fromJsonFactory = _$IncrementBalanceRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is IncrementBalanceRequest &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^ runtimeType.hashCode;
}

extension $IncrementBalanceRequestExtension on IncrementBalanceRequest {
  IncrementBalanceRequest copyWith({double? amount}) {
    return IncrementBalanceRequest(amount: amount ?? this.amount);
  }

  IncrementBalanceRequest copyWithWrapped({Wrapped<double>? amount}) {
    return IncrementBalanceRequest(
      amount: (amount != null ? amount.value : this.amount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class IngestionResponseDto {
  const IngestionResponseDto({required this.id});

  factory IngestionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$IngestionResponseDtoFromJson(json);

  static const toJsonFactory = _$IngestionResponseDtoToJson;
  Map<String, dynamic> toJson() => _$IngestionResponseDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$IngestionResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is IngestionResponseDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $IngestionResponseDtoExtension on IngestionResponseDto {
  IngestionResponseDto copyWith({String? id}) {
    return IngestionResponseDto(id: id ?? this.id);
  }

  IngestionResponseDto copyWithWrapped({Wrapped<String>? id}) {
    return IngestionResponseDto(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class JobDto {
  const JobDto({
    required this.id,
    required this.fileName,
    required this.status,
  });

  factory JobDto.fromJson(Map<String, dynamic> json) => _$JobDtoFromJson(json);

  static const toJsonFactory = _$JobDtoToJson;
  Map<String, dynamic> toJson() => _$JobDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'file_name')
  final String fileName;
  @JsonKey(
    name: 'status',
    toJson: jobDtoStatusToJson,
    fromJson: jobDtoStatusFromJson,
  )
  final enums.JobDtoStatus status;
  static const fromJsonFactory = _$JobDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is JobDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality().equals(
                  other.fileName,
                  fileName,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $JobDtoExtension on JobDto {
  JobDto copyWith({String? id, String? fileName, enums.JobDtoStatus? status}) {
    return JobDto(
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      status: status ?? this.status,
    );
  }

  JobDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? fileName,
    Wrapped<enums.JobDtoStatus>? status,
  }) {
    return JobDto(
      id: (id != null ? id.value : this.id),
      fileName: (fileName != null ? fileName.value : this.fileName),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ListAgentsResponseDto {
  const ListAgentsResponseDto({required this.agents});

  factory ListAgentsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ListAgentsResponseDtoFromJson(json);

  static const toJsonFactory = _$ListAgentsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ListAgentsResponseDtoToJson(this);

  @JsonKey(name: 'agents', defaultValue: <AgentDto>[])
  final List<AgentDto> agents;
  static const fromJsonFactory = _$ListAgentsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ListAgentsResponseDto &&
            (identical(other.agents, agents) ||
                const DeepCollectionEquality().equals(other.agents, agents)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(agents) ^ runtimeType.hashCode;
}

extension $ListAgentsResponseDtoExtension on ListAgentsResponseDto {
  ListAgentsResponseDto copyWith({List<AgentDto>? agents}) {
    return ListAgentsResponseDto(agents: agents ?? this.agents);
  }

  ListAgentsResponseDto copyWithWrapped({Wrapped<List<AgentDto>>? agents}) {
    return ListAgentsResponseDto(
      agents: (agents != null ? agents.value : this.agents),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ListDatastoresResponseDto {
  const ListDatastoresResponseDto({required this.datastores});

  factory ListDatastoresResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ListDatastoresResponseDtoFromJson(json);

  static const toJsonFactory = _$ListDatastoresResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ListDatastoresResponseDtoToJson(this);

  @JsonKey(name: 'datastores', defaultValue: <DatastoreDto>[])
  final List<DatastoreDto> datastores;
  static const fromJsonFactory = _$ListDatastoresResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ListDatastoresResponseDto &&
            (identical(other.datastores, datastores) ||
                const DeepCollectionEquality().equals(
                  other.datastores,
                  datastores,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(datastores) ^ runtimeType.hashCode;
}

extension $ListDatastoresResponseDtoExtension on ListDatastoresResponseDto {
  ListDatastoresResponseDto copyWith({List<DatastoreDto>? datastores}) {
    return ListDatastoresResponseDto(datastores: datastores ?? this.datastores);
  }

  ListDatastoresResponseDto copyWithWrapped({
    Wrapped<List<DatastoreDto>>? datastores,
  }) {
    return ListDatastoresResponseDto(
      datastores: (datastores != null ? datastores.value : this.datastores),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ListDocumentsResponseDto {
  const ListDocumentsResponseDto({
    required this.documents,
    this.nextCursor,
    this.totalCount,
  });

  factory ListDocumentsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ListDocumentsResponseDtoFromJson(json);

  static const toJsonFactory = _$ListDocumentsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ListDocumentsResponseDtoToJson(this);

  @JsonKey(
    name: 'documents',
    defaultValue:
        <
          SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
        >[],
  )
  final List<
    SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
  >
  documents;
  @JsonKey(name: 'next_cursor')
  final String? nextCursor;
  @JsonKey(name: 'total_count')
  final int? totalCount;
  static const fromJsonFactory = _$ListDocumentsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ListDocumentsResponseDto &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality().equals(
                  other.documents,
                  documents,
                )) &&
            (identical(other.nextCursor, nextCursor) ||
                const DeepCollectionEquality().equals(
                  other.nextCursor,
                  nextCursor,
                )) &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(documents) ^
      const DeepCollectionEquality().hash(nextCursor) ^
      const DeepCollectionEquality().hash(totalCount) ^
      runtimeType.hashCode;
}

extension $ListDocumentsResponseDtoExtension on ListDocumentsResponseDto {
  ListDocumentsResponseDto copyWith({
    List<
      SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
    >?
    documents,
    String? nextCursor,
    int? totalCount,
  }) {
    return ListDocumentsResponseDto(
      documents: documents ?? this.documents,
      nextCursor: nextCursor ?? this.nextCursor,
      totalCount: totalCount ?? this.totalCount,
    );
  }

  ListDocumentsResponseDto copyWithWrapped({
    Wrapped<
      List<
        SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
      >
    >?
    documents,
    Wrapped<String?>? nextCursor,
    Wrapped<int?>? totalCount,
  }) {
    return ListDocumentsResponseDto(
      documents: (documents != null ? documents.value : this.documents),
      nextCursor: (nextCursor != null ? nextCursor.value : this.nextCursor),
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Message {
  const Message({required this.content, required this.role});

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  static const toJsonFactory = _$MessageToJson;
  Map<String, dynamic> toJson() => _$MessageToJson(this);

  @JsonKey(name: 'content')
  final String content;
  @JsonKey(name: 'role')
  final String role;
  static const fromJsonFactory = _$MessageFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Message &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(
                  other.content,
                  content,
                )) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $MessageExtension on Message {
  Message copyWith({String? content, String? role}) {
    return Message(content: content ?? this.content, role: role ?? this.role);
  }

  Message copyWithWrapped({Wrapped<String>? content, Wrapped<String>? role}) {
    return Message(
      content: (content != null ? content.value : this.content),
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MessageDto {
  const MessageDto({required this.content, required this.role});

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  static const toJsonFactory = _$MessageDtoToJson;
  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);

  @JsonKey(name: 'content')
  final String content;
  @JsonKey(
    name: 'role',
    toJson: messageDtoRoleToJson,
    fromJson: messageDtoRoleFromJson,
  )
  final enums.MessageDtoRole role;
  static const fromJsonFactory = _$MessageDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MessageDto &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(
                  other.content,
                  content,
                )) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(role) ^
      runtimeType.hashCode;
}

extension $MessageDtoExtension on MessageDto {
  MessageDto copyWith({String? content, enums.MessageDtoRole? role}) {
    return MessageDto(
      content: content ?? this.content,
      role: role ?? this.role,
    );
  }

  MessageDto copyWithWrapped({
    Wrapped<String>? content,
    Wrapped<enums.MessageDtoRole>? role,
  }) {
    return MessageDto(
      content: (content != null ? content.value : this.content),
      role: (role != null ? role.value : this.role),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MessageQuery {
  const MessageQuery({required this.role, required this.content});

  factory MessageQuery.fromJson(Map<String, dynamic> json) =>
      _$MessageQueryFromJson(json);

  static const toJsonFactory = _$MessageQueryToJson;
  Map<String, dynamic> toJson() => _$MessageQueryToJson(this);

  @JsonKey(
    name: 'role',
    toJson: messageQueryRoleToJson,
    fromJson: messageQueryRoleFromJson,
  )
  final enums.MessageQueryRole role;
  @JsonKey(name: 'content')
  final String content;
  static const fromJsonFactory = _$MessageQueryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MessageQuery &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(content) ^
      runtimeType.hashCode;
}

extension $MessageQueryExtension on MessageQuery {
  MessageQuery copyWith({enums.MessageQueryRole? role, String? content}) {
    return MessageQuery(
      role: role ?? this.role,
      content: content ?? this.content,
    );
  }

  MessageQuery copyWithWrapped({
    Wrapped<enums.MessageQueryRole>? role,
    Wrapped<String>? content,
  }) {
    return MessageQuery(
      role: (role != null ? role.value : this.role),
      content: (content != null ? content.value : this.content),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class MonthlyUsageResponseDto {
  const MonthlyUsageResponseDto({required this.usage});

  factory MonthlyUsageResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MonthlyUsageResponseDtoFromJson(json);

  static const toJsonFactory = _$MonthlyUsageResponseDtoToJson;
  Map<String, dynamic> toJson() => _$MonthlyUsageResponseDtoToJson(this);

  @JsonKey(name: 'usage')
  final dynamic usage;
  static const fromJsonFactory = _$MonthlyUsageResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is MonthlyUsageResponseDto &&
            (identical(other.usage, usage) ||
                const DeepCollectionEquality().equals(other.usage, usage)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(usage) ^ runtimeType.hashCode;
}

extension $MonthlyUsageResponseDtoExtension on MonthlyUsageResponseDto {
  MonthlyUsageResponseDto copyWith({dynamic usage}) {
    return MonthlyUsageResponseDto(usage: usage ?? this.usage);
  }

  MonthlyUsageResponseDto copyWithWrapped({Wrapped<dynamic>? usage}) {
    return MonthlyUsageResponseDto(
      usage: (usage != null ? usage.value : this.usage),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class OverrideConfigurationQuery {
  const OverrideConfigurationQuery({
    this.systemPrompt,
    this.filterPrompt,
    this.model,
    this.maxNewTokens,
    this.topP,
    this.temperature,
    this.topKRetrievedChunks,
    this.topKRerankedChunks,
    this.enableFilter,
    this.filterModel,
    this.enableRerank,
    this.reranker,
    this.lexicalAlpha,
    this.semanticAlpha,
    this.rerankInstructions,
    this.rerankerScoreFilterThreshold,
  });

  factory OverrideConfigurationQuery.fromJson(Map<String, dynamic> json) =>
      _$OverrideConfigurationQueryFromJson(json);

  static const toJsonFactory = _$OverrideConfigurationQueryToJson;
  Map<String, dynamic> toJson() => _$OverrideConfigurationQueryToJson(this);

  @JsonKey(name: 'system_prompt')
  final String? systemPrompt;
  @JsonKey(name: 'filter_prompt')
  final String? filterPrompt;
  @JsonKey(name: 'model')
  final String? model;
  @JsonKey(name: 'max_new_tokens')
  final int? maxNewTokens;
  @JsonKey(name: 'top_p')
  final double? topP;
  @JsonKey(name: 'temperature')
  final double? temperature;
  @JsonKey(name: 'top_k_retrieved_chunks')
  final int? topKRetrievedChunks;
  @JsonKey(name: 'top_k_reranked_chunks')
  final int? topKRerankedChunks;
  @JsonKey(name: 'enable_filter')
  final bool? enableFilter;
  @JsonKey(name: 'filter_model')
  final String? filterModel;
  @JsonKey(name: 'enable_rerank')
  final bool? enableRerank;
  @JsonKey(name: 'reranker')
  final String? reranker;
  @JsonKey(name: 'lexical_alpha')
  final double? lexicalAlpha;
  @JsonKey(name: 'semantic_alpha')
  final double? semanticAlpha;
  @JsonKey(name: 'rerank_instructions')
  final String? rerankInstructions;
  @JsonKey(name: 'reranker_score_filter_threshold')
  final double? rerankerScoreFilterThreshold;
  static const fromJsonFactory = _$OverrideConfigurationQueryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is OverrideConfigurationQuery &&
            (identical(other.systemPrompt, systemPrompt) ||
                const DeepCollectionEquality().equals(
                  other.systemPrompt,
                  systemPrompt,
                )) &&
            (identical(other.filterPrompt, filterPrompt) ||
                const DeepCollectionEquality().equals(
                  other.filterPrompt,
                  filterPrompt,
                )) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.maxNewTokens, maxNewTokens) ||
                const DeepCollectionEquality().equals(
                  other.maxNewTokens,
                  maxNewTokens,
                )) &&
            (identical(other.topP, topP) ||
                const DeepCollectionEquality().equals(other.topP, topP)) &&
            (identical(other.temperature, temperature) ||
                const DeepCollectionEquality().equals(
                  other.temperature,
                  temperature,
                )) &&
            (identical(other.topKRetrievedChunks, topKRetrievedChunks) ||
                const DeepCollectionEquality().equals(
                  other.topKRetrievedChunks,
                  topKRetrievedChunks,
                )) &&
            (identical(other.topKRerankedChunks, topKRerankedChunks) ||
                const DeepCollectionEquality().equals(
                  other.topKRerankedChunks,
                  topKRerankedChunks,
                )) &&
            (identical(other.enableFilter, enableFilter) ||
                const DeepCollectionEquality().equals(
                  other.enableFilter,
                  enableFilter,
                )) &&
            (identical(other.filterModel, filterModel) ||
                const DeepCollectionEquality().equals(
                  other.filterModel,
                  filterModel,
                )) &&
            (identical(other.enableRerank, enableRerank) ||
                const DeepCollectionEquality().equals(
                  other.enableRerank,
                  enableRerank,
                )) &&
            (identical(other.reranker, reranker) ||
                const DeepCollectionEquality().equals(
                  other.reranker,
                  reranker,
                )) &&
            (identical(other.lexicalAlpha, lexicalAlpha) ||
                const DeepCollectionEquality().equals(
                  other.lexicalAlpha,
                  lexicalAlpha,
                )) &&
            (identical(other.semanticAlpha, semanticAlpha) ||
                const DeepCollectionEquality().equals(
                  other.semanticAlpha,
                  semanticAlpha,
                )) &&
            (identical(other.rerankInstructions, rerankInstructions) ||
                const DeepCollectionEquality().equals(
                  other.rerankInstructions,
                  rerankInstructions,
                )) &&
            (identical(
                  other.rerankerScoreFilterThreshold,
                  rerankerScoreFilterThreshold,
                ) ||
                const DeepCollectionEquality().equals(
                  other.rerankerScoreFilterThreshold,
                  rerankerScoreFilterThreshold,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(systemPrompt) ^
      const DeepCollectionEquality().hash(filterPrompt) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(maxNewTokens) ^
      const DeepCollectionEquality().hash(topP) ^
      const DeepCollectionEquality().hash(temperature) ^
      const DeepCollectionEquality().hash(topKRetrievedChunks) ^
      const DeepCollectionEquality().hash(topKRerankedChunks) ^
      const DeepCollectionEquality().hash(enableFilter) ^
      const DeepCollectionEquality().hash(filterModel) ^
      const DeepCollectionEquality().hash(enableRerank) ^
      const DeepCollectionEquality().hash(reranker) ^
      const DeepCollectionEquality().hash(lexicalAlpha) ^
      const DeepCollectionEquality().hash(semanticAlpha) ^
      const DeepCollectionEquality().hash(rerankInstructions) ^
      const DeepCollectionEquality().hash(rerankerScoreFilterThreshold) ^
      runtimeType.hashCode;
}

extension $OverrideConfigurationQueryExtension on OverrideConfigurationQuery {
  OverrideConfigurationQuery copyWith({
    String? systemPrompt,
    String? filterPrompt,
    String? model,
    int? maxNewTokens,
    double? topP,
    double? temperature,
    int? topKRetrievedChunks,
    int? topKRerankedChunks,
    bool? enableFilter,
    String? filterModel,
    bool? enableRerank,
    String? reranker,
    double? lexicalAlpha,
    double? semanticAlpha,
    String? rerankInstructions,
    double? rerankerScoreFilterThreshold,
  }) {
    return OverrideConfigurationQuery(
      systemPrompt: systemPrompt ?? this.systemPrompt,
      filterPrompt: filterPrompt ?? this.filterPrompt,
      model: model ?? this.model,
      maxNewTokens: maxNewTokens ?? this.maxNewTokens,
      topP: topP ?? this.topP,
      temperature: temperature ?? this.temperature,
      topKRetrievedChunks: topKRetrievedChunks ?? this.topKRetrievedChunks,
      topKRerankedChunks: topKRerankedChunks ?? this.topKRerankedChunks,
      enableFilter: enableFilter ?? this.enableFilter,
      filterModel: filterModel ?? this.filterModel,
      enableRerank: enableRerank ?? this.enableRerank,
      reranker: reranker ?? this.reranker,
      lexicalAlpha: lexicalAlpha ?? this.lexicalAlpha,
      semanticAlpha: semanticAlpha ?? this.semanticAlpha,
      rerankInstructions: rerankInstructions ?? this.rerankInstructions,
      rerankerScoreFilterThreshold:
          rerankerScoreFilterThreshold ?? this.rerankerScoreFilterThreshold,
    );
  }

  OverrideConfigurationQuery copyWithWrapped({
    Wrapped<String?>? systemPrompt,
    Wrapped<String?>? filterPrompt,
    Wrapped<String?>? model,
    Wrapped<int?>? maxNewTokens,
    Wrapped<double?>? topP,
    Wrapped<double?>? temperature,
    Wrapped<int?>? topKRetrievedChunks,
    Wrapped<int?>? topKRerankedChunks,
    Wrapped<bool?>? enableFilter,
    Wrapped<String?>? filterModel,
    Wrapped<bool?>? enableRerank,
    Wrapped<String?>? reranker,
    Wrapped<double?>? lexicalAlpha,
    Wrapped<double?>? semanticAlpha,
    Wrapped<String?>? rerankInstructions,
    Wrapped<double?>? rerankerScoreFilterThreshold,
  }) {
    return OverrideConfigurationQuery(
      systemPrompt: (systemPrompt != null
          ? systemPrompt.value
          : this.systemPrompt),
      filterPrompt: (filterPrompt != null
          ? filterPrompt.value
          : this.filterPrompt),
      model: (model != null ? model.value : this.model),
      maxNewTokens: (maxNewTokens != null
          ? maxNewTokens.value
          : this.maxNewTokens),
      topP: (topP != null ? topP.value : this.topP),
      temperature: (temperature != null ? temperature.value : this.temperature),
      topKRetrievedChunks: (topKRetrievedChunks != null
          ? topKRetrievedChunks.value
          : this.topKRetrievedChunks),
      topKRerankedChunks: (topKRerankedChunks != null
          ? topKRerankedChunks.value
          : this.topKRerankedChunks),
      enableFilter: (enableFilter != null
          ? enableFilter.value
          : this.enableFilter),
      filterModel: (filterModel != null ? filterModel.value : this.filterModel),
      enableRerank: (enableRerank != null
          ? enableRerank.value
          : this.enableRerank),
      reranker: (reranker != null ? reranker.value : this.reranker),
      lexicalAlpha: (lexicalAlpha != null
          ? lexicalAlpha.value
          : this.lexicalAlpha),
      semanticAlpha: (semanticAlpha != null
          ? semanticAlpha.value
          : this.semanticAlpha),
      rerankInstructions: (rerankInstructions != null
          ? rerankInstructions.value
          : this.rerankInstructions),
      rerankerScoreFilterThreshold: (rerankerScoreFilterThreshold != null
          ? rerankerScoreFilterThreshold.value
          : this.rerankerScoreFilterThreshold),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PageBlockBoundingBoxDto {
  const PageBlockBoundingBoxDto({
    required this.x0,
    required this.x1,
    required this.y0,
    required this.y1,
  });

  factory PageBlockBoundingBoxDto.fromJson(Map<String, dynamic> json) =>
      _$PageBlockBoundingBoxDtoFromJson(json);

  static const toJsonFactory = _$PageBlockBoundingBoxDtoToJson;
  Map<String, dynamic> toJson() => _$PageBlockBoundingBoxDtoToJson(this);

  @JsonKey(name: 'x0')
  final double x0;
  @JsonKey(name: 'x1')
  final double x1;
  @JsonKey(name: 'y0')
  final double y0;
  @JsonKey(name: 'y1')
  final double y1;
  static const fromJsonFactory = _$PageBlockBoundingBoxDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageBlockBoundingBoxDto &&
            (identical(other.x0, x0) ||
                const DeepCollectionEquality().equals(other.x0, x0)) &&
            (identical(other.x1, x1) ||
                const DeepCollectionEquality().equals(other.x1, x1)) &&
            (identical(other.y0, y0) ||
                const DeepCollectionEquality().equals(other.y0, y0)) &&
            (identical(other.y1, y1) ||
                const DeepCollectionEquality().equals(other.y1, y1)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(x0) ^
      const DeepCollectionEquality().hash(x1) ^
      const DeepCollectionEquality().hash(y0) ^
      const DeepCollectionEquality().hash(y1) ^
      runtimeType.hashCode;
}

extension $PageBlockBoundingBoxDtoExtension on PageBlockBoundingBoxDto {
  PageBlockBoundingBoxDto copyWith({
    double? x0,
    double? x1,
    double? y0,
    double? y1,
  }) {
    return PageBlockBoundingBoxDto(
      x0: x0 ?? this.x0,
      x1: x1 ?? this.x1,
      y0: y0 ?? this.y0,
      y1: y1 ?? this.y1,
    );
  }

  PageBlockBoundingBoxDto copyWithWrapped({
    Wrapped<double>? x0,
    Wrapped<double>? x1,
    Wrapped<double>? y0,
    Wrapped<double>? y1,
  }) {
    return PageBlockBoundingBoxDto(
      x0: (x0 != null ? x0.value : this.x0),
      x1: (x1 != null ? x1.value : this.x1),
      y0: (y0 != null ? y0.value : this.y0),
      y1: (y1 != null ? y1.value : this.y1),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PageBlockDto {
  const PageBlockDto({
    required this.id,
    required this.boundingBox,
    required this.markdown,
    required this.type,
    this.confidenceLevel,
    this.hierarchyLevel,
    this.pageIndex,
    this.parentIds,
  });

  factory PageBlockDto.fromJson(Map<String, dynamic> json) =>
      _$PageBlockDtoFromJson(json);

  static const toJsonFactory = _$PageBlockDtoToJson;
  Map<String, dynamic> toJson() => _$PageBlockDtoToJson(this);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'bounding_box')
  final PageBlockBoundingBoxDto boundingBox;
  @JsonKey(name: 'markdown')
  final String markdown;
  @JsonKey(
    name: 'type',
    toJson: pageBlockDtoTypeToJson,
    fromJson: pageBlockDtoTypeFromJson,
  )
  final enums.PageBlockDtoType type;
  @JsonKey(
    name: 'confidence_level',
    toJson: pageBlockDtoConfidenceLevelNullableToJson,
    fromJson: pageBlockDtoConfidenceLevelNullableFromJson,
  )
  final enums.PageBlockDtoConfidenceLevel? confidenceLevel;
  @JsonKey(name: 'hierarchy_level')
  final int? hierarchyLevel;
  @JsonKey(name: 'page_index')
  final int? pageIndex;
  @JsonKey(name: 'parent_ids', defaultValue: <String>[])
  final List<String>? parentIds;
  static const fromJsonFactory = _$PageBlockDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageBlockDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.boundingBox, boundingBox) ||
                const DeepCollectionEquality().equals(
                  other.boundingBox,
                  boundingBox,
                )) &&
            (identical(other.markdown, markdown) ||
                const DeepCollectionEquality().equals(
                  other.markdown,
                  markdown,
                )) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.confidenceLevel, confidenceLevel) ||
                const DeepCollectionEquality().equals(
                  other.confidenceLevel,
                  confidenceLevel,
                )) &&
            (identical(other.hierarchyLevel, hierarchyLevel) ||
                const DeepCollectionEquality().equals(
                  other.hierarchyLevel,
                  hierarchyLevel,
                )) &&
            (identical(other.pageIndex, pageIndex) ||
                const DeepCollectionEquality().equals(
                  other.pageIndex,
                  pageIndex,
                )) &&
            (identical(other.parentIds, parentIds) ||
                const DeepCollectionEquality().equals(
                  other.parentIds,
                  parentIds,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(boundingBox) ^
      const DeepCollectionEquality().hash(markdown) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(confidenceLevel) ^
      const DeepCollectionEquality().hash(hierarchyLevel) ^
      const DeepCollectionEquality().hash(pageIndex) ^
      const DeepCollectionEquality().hash(parentIds) ^
      runtimeType.hashCode;
}

extension $PageBlockDtoExtension on PageBlockDto {
  PageBlockDto copyWith({
    String? id,
    PageBlockBoundingBoxDto? boundingBox,
    String? markdown,
    enums.PageBlockDtoType? type,
    enums.PageBlockDtoConfidenceLevel? confidenceLevel,
    int? hierarchyLevel,
    int? pageIndex,
    List<String>? parentIds,
  }) {
    return PageBlockDto(
      id: id ?? this.id,
      boundingBox: boundingBox ?? this.boundingBox,
      markdown: markdown ?? this.markdown,
      type: type ?? this.type,
      confidenceLevel: confidenceLevel ?? this.confidenceLevel,
      hierarchyLevel: hierarchyLevel ?? this.hierarchyLevel,
      pageIndex: pageIndex ?? this.pageIndex,
      parentIds: parentIds ?? this.parentIds,
    );
  }

  PageBlockDto copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<PageBlockBoundingBoxDto>? boundingBox,
    Wrapped<String>? markdown,
    Wrapped<enums.PageBlockDtoType>? type,
    Wrapped<enums.PageBlockDtoConfidenceLevel?>? confidenceLevel,
    Wrapped<int?>? hierarchyLevel,
    Wrapped<int?>? pageIndex,
    Wrapped<List<String>?>? parentIds,
  }) {
    return PageBlockDto(
      id: (id != null ? id.value : this.id),
      boundingBox: (boundingBox != null ? boundingBox.value : this.boundingBox),
      markdown: (markdown != null ? markdown.value : this.markdown),
      type: (type != null ? type.value : this.type),
      confidenceLevel: (confidenceLevel != null
          ? confidenceLevel.value
          : this.confidenceLevel),
      hierarchyLevel: (hierarchyLevel != null
          ? hierarchyLevel.value
          : this.hierarchyLevel),
      pageIndex: (pageIndex != null ? pageIndex.value : this.pageIndex),
      parentIds: (parentIds != null ? parentIds.value : this.parentIds),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class PageDto {
  const PageDto({required this.index, this.blocks, this.markdown});

  factory PageDto.fromJson(Map<String, dynamic> json) =>
      _$PageDtoFromJson(json);

  static const toJsonFactory = _$PageDtoToJson;
  Map<String, dynamic> toJson() => _$PageDtoToJson(this);

  @JsonKey(name: 'index')
  final int index;
  @JsonKey(name: 'blocks', defaultValue: <PageBlockDto>[])
  final List<PageBlockDto>? blocks;
  @JsonKey(name: 'markdown')
  final String? markdown;
  static const fromJsonFactory = _$PageDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is PageDto &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.blocks, blocks) ||
                const DeepCollectionEquality().equals(other.blocks, blocks)) &&
            (identical(other.markdown, markdown) ||
                const DeepCollectionEquality().equals(
                  other.markdown,
                  markdown,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(blocks) ^
      const DeepCollectionEquality().hash(markdown) ^
      runtimeType.hashCode;
}

extension $PageDtoExtension on PageDto {
  PageDto copyWith({int? index, List<PageBlockDto>? blocks, String? markdown}) {
    return PageDto(
      index: index ?? this.index,
      blocks: blocks ?? this.blocks,
      markdown: markdown ?? this.markdown,
    );
  }

  PageDto copyWithWrapped({
    Wrapped<int>? index,
    Wrapped<List<PageBlockDto>?>? blocks,
    Wrapped<String?>? markdown,
  }) {
    return PageDto(
      index: (index != null ? index.value : this.index),
      blocks: (blocks != null ? blocks.value : this.blocks),
      markdown: (markdown != null ? markdown.value : this.markdown),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ParseCreateResponseDto {
  const ParseCreateResponseDto({required this.jobId});

  factory ParseCreateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ParseCreateResponseDtoFromJson(json);

  static const toJsonFactory = _$ParseCreateResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ParseCreateResponseDtoToJson(this);

  @JsonKey(name: 'job_id')
  final String jobId;
  static const fromJsonFactory = _$ParseCreateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ParseCreateResponseDto &&
            (identical(other.jobId, jobId) ||
                const DeepCollectionEquality().equals(other.jobId, jobId)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobId) ^ runtimeType.hashCode;
}

extension $ParseCreateResponseDtoExtension on ParseCreateResponseDto {
  ParseCreateResponseDto copyWith({String? jobId}) {
    return ParseCreateResponseDto(jobId: jobId ?? this.jobId);
  }

  ParseCreateResponseDto copyWithWrapped({Wrapped<String>? jobId}) {
    return ParseCreateResponseDto(
      jobId: (jobId != null ? jobId.value : this.jobId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ParseJobResultsResponseDto {
  const ParseJobResultsResponseDto({
    required this.fileName,
    required this.status,
    this.documentMetadata,
    this.markdownDocument,
    this.pages,
  });

  factory ParseJobResultsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ParseJobResultsResponseDtoFromJson(json);

  static const toJsonFactory = _$ParseJobResultsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ParseJobResultsResponseDtoToJson(this);

  @JsonKey(name: 'file_name')
  final String fileName;
  @JsonKey(
    name: 'status',
    toJson: parseJobResultsResponseDtoStatusToJson,
    fromJson: parseJobResultsResponseDtoStatusFromJson,
  )
  final enums.ParseJobResultsResponseDtoStatus status;
  @JsonKey(name: 'document_metadata')
  final SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto?
  documentMetadata;
  @JsonKey(name: 'markdown_document')
  final String? markdownDocument;
  @JsonKey(name: 'pages', defaultValue: <PageDto>[])
  final List<PageDto>? pages;
  static const fromJsonFactory = _$ParseJobResultsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ParseJobResultsResponseDto &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality().equals(
                  other.fileName,
                  fileName,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.documentMetadata, documentMetadata) ||
                const DeepCollectionEquality().equals(
                  other.documentMetadata,
                  documentMetadata,
                )) &&
            (identical(other.markdownDocument, markdownDocument) ||
                const DeepCollectionEquality().equals(
                  other.markdownDocument,
                  markdownDocument,
                )) &&
            (identical(other.pages, pages) ||
                const DeepCollectionEquality().equals(other.pages, pages)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(documentMetadata) ^
      const DeepCollectionEquality().hash(markdownDocument) ^
      const DeepCollectionEquality().hash(pages) ^
      runtimeType.hashCode;
}

extension $ParseJobResultsResponseDtoExtension on ParseJobResultsResponseDto {
  ParseJobResultsResponseDto copyWith({
    String? fileName,
    enums.ParseJobResultsResponseDtoStatus? status,
    SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto?
    documentMetadata,
    String? markdownDocument,
    List<PageDto>? pages,
  }) {
    return ParseJobResultsResponseDto(
      fileName: fileName ?? this.fileName,
      status: status ?? this.status,
      documentMetadata: documentMetadata ?? this.documentMetadata,
      markdownDocument: markdownDocument ?? this.markdownDocument,
      pages: pages ?? this.pages,
    );
  }

  ParseJobResultsResponseDto copyWithWrapped({
    Wrapped<String>? fileName,
    Wrapped<enums.ParseJobResultsResponseDtoStatus>? status,
    Wrapped<SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto?>?
    documentMetadata,
    Wrapped<String?>? markdownDocument,
    Wrapped<List<PageDto>?>? pages,
  }) {
    return ParseJobResultsResponseDto(
      fileName: (fileName != null ? fileName.value : this.fileName),
      status: (status != null ? status.value : this.status),
      documentMetadata: (documentMetadata != null
          ? documentMetadata.value
          : this.documentMetadata),
      markdownDocument: (markdownDocument != null
          ? markdownDocument.value
          : this.markdownDocument),
      pages: (pages != null ? pages.value : this.pages),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ParseJobStatusResponseDto {
  const ParseJobStatusResponseDto({
    required this.fileName,
    required this.status,
  });

  factory ParseJobStatusResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ParseJobStatusResponseDtoFromJson(json);

  static const toJsonFactory = _$ParseJobStatusResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ParseJobStatusResponseDtoToJson(this);

  @JsonKey(name: 'file_name')
  final String fileName;
  @JsonKey(
    name: 'status',
    toJson: parseJobStatusResponseDtoStatusToJson,
    fromJson: parseJobStatusResponseDtoStatusFromJson,
  )
  final enums.ParseJobStatusResponseDtoStatus status;
  static const fromJsonFactory = _$ParseJobStatusResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ParseJobStatusResponseDto &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality().equals(
                  other.fileName,
                  fileName,
                )) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(status) ^
      runtimeType.hashCode;
}

extension $ParseJobStatusResponseDtoExtension on ParseJobStatusResponseDto {
  ParseJobStatusResponseDto copyWith({
    String? fileName,
    enums.ParseJobStatusResponseDtoStatus? status,
  }) {
    return ParseJobStatusResponseDto(
      fileName: fileName ?? this.fileName,
      status: status ?? this.status,
    );
  }

  ParseJobStatusResponseDto copyWithWrapped({
    Wrapped<String>? fileName,
    Wrapped<enums.ParseJobStatusResponseDtoStatus>? status,
  }) {
    return ParseJobStatusResponseDto(
      fileName: (fileName != null ? fileName.value : this.fileName),
      status: (status != null ? status.value : this.status),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ParseJobsResponseDto {
  const ParseJobsResponseDto({
    required this.jobs,
    required this.totalJobs,
    this.nextCursor,
  });

  factory ParseJobsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ParseJobsResponseDtoFromJson(json);

  static const toJsonFactory = _$ParseJobsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ParseJobsResponseDtoToJson(this);

  @JsonKey(name: 'jobs', defaultValue: <JobDto>[])
  final List<JobDto> jobs;
  @JsonKey(name: 'total_jobs')
  final int totalJobs;
  @JsonKey(name: 'next_cursor')
  final String? nextCursor;
  static const fromJsonFactory = _$ParseJobsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ParseJobsResponseDto &&
            (identical(other.jobs, jobs) ||
                const DeepCollectionEquality().equals(other.jobs, jobs)) &&
            (identical(other.totalJobs, totalJobs) ||
                const DeepCollectionEquality().equals(
                  other.totalJobs,
                  totalJobs,
                )) &&
            (identical(other.nextCursor, nextCursor) ||
                const DeepCollectionEquality().equals(
                  other.nextCursor,
                  nextCursor,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(jobs) ^
      const DeepCollectionEquality().hash(totalJobs) ^
      const DeepCollectionEquality().hash(nextCursor) ^
      runtimeType.hashCode;
}

extension $ParseJobsResponseDtoExtension on ParseJobsResponseDto {
  ParseJobsResponseDto copyWith({
    List<JobDto>? jobs,
    int? totalJobs,
    String? nextCursor,
  }) {
    return ParseJobsResponseDto(
      jobs: jobs ?? this.jobs,
      totalJobs: totalJobs ?? this.totalJobs,
      nextCursor: nextCursor ?? this.nextCursor,
    );
  }

  ParseJobsResponseDto copyWithWrapped({
    Wrapped<List<JobDto>>? jobs,
    Wrapped<int>? totalJobs,
    Wrapped<String?>? nextCursor,
  }) {
    return ParseJobsResponseDto(
      jobs: (jobs != null ? jobs.value : this.jobs),
      totalJobs: (totalJobs != null ? totalJobs.value : this.totalJobs),
      nextCursor: (nextCursor != null ? nextCursor.value : this.nextCursor),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ParseResultResponseDto {
  const ParseResultResponseDto({required this.result});

  factory ParseResultResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ParseResultResponseDtoFromJson(json);

  static const toJsonFactory = _$ParseResultResponseDtoToJson;
  Map<String, dynamic> toJson() => _$ParseResultResponseDtoToJson(this);

  @JsonKey(name: 'result')
  final dynamic result;
  static const fromJsonFactory = _$ParseResultResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ParseResultResponseDto &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(result) ^ runtimeType.hashCode;
}

extension $ParseResultResponseDtoExtension on ParseResultResponseDto {
  ParseResultResponseDto copyWith({dynamic result}) {
    return ParseResultResponseDto(result: result ?? this.result);
  }

  ParseResultResponseDto copyWithWrapped({Wrapped<dynamic>? result}) {
    return ParseResultResponseDto(
      result: (result != null ? result.value : this.result),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class QueryMetricsResponseDto {
  const QueryMetricsResponseDto({
    required this.totalCount,
    this.messages,
    this.nextOffset,
  });

  factory QueryMetricsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$QueryMetricsResponseDtoFromJson(json);

  static const toJsonFactory = _$QueryMetricsResponseDtoToJson;
  Map<String, dynamic> toJson() => _$QueryMetricsResponseDtoToJson(this);

  @JsonKey(name: 'total_count')
  final int totalCount;
  @JsonKey(name: 'messages', defaultValue: <Object>[])
  final List<Object>? messages;
  @JsonKey(name: 'next_offset')
  final int? nextOffset;
  static const fromJsonFactory = _$QueryMetricsResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is QueryMetricsResponseDto &&
            (identical(other.totalCount, totalCount) ||
                const DeepCollectionEquality().equals(
                  other.totalCount,
                  totalCount,
                )) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality().equals(
                  other.messages,
                  messages,
                )) &&
            (identical(other.nextOffset, nextOffset) ||
                const DeepCollectionEquality().equals(
                  other.nextOffset,
                  nextOffset,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(totalCount) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(nextOffset) ^
      runtimeType.hashCode;
}

extension $QueryMetricsResponseDtoExtension on QueryMetricsResponseDto {
  QueryMetricsResponseDto copyWith({
    int? totalCount,
    List<Object>? messages,
    int? nextOffset,
  }) {
    return QueryMetricsResponseDto(
      totalCount: totalCount ?? this.totalCount,
      messages: messages ?? this.messages,
      nextOffset: nextOffset ?? this.nextOffset,
    );
  }

  QueryMetricsResponseDto copyWithWrapped({
    Wrapped<int>? totalCount,
    Wrapped<List<Object>?>? messages,
    Wrapped<int?>? nextOffset,
  }) {
    return QueryMetricsResponseDto(
      totalCount: (totalCount != null ? totalCount.value : this.totalCount),
      messages: (messages != null ? messages.value : this.messages),
      nextOffset: (nextOffset != null ? nextOffset.value : this.nextOffset),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class QueryRequest {
  const QueryRequest({
    required this.messages,
    this.stream,
    this.conversationId,
    this.llmModelId,
    this.structuredOutput,
    this.documentsFilters,
    this.overrideConfiguration,
  });

  factory QueryRequest.fromJson(Map<String, dynamic> json) =>
      _$QueryRequestFromJson(json);

  static const toJsonFactory = _$QueryRequestToJson;
  Map<String, dynamic> toJson() => _$QueryRequestToJson(this);

  @JsonKey(name: 'messages', defaultValue: <MessageQuery>[])
  final List<MessageQuery> messages;
  @JsonKey(name: 'stream', defaultValue: false)
  final bool? stream;
  @JsonKey(name: 'conversation_id')
  final String? conversationId;
  @JsonKey(name: 'llm_model_id')
  final String? llmModelId;
  @JsonKey(name: 'structured_output')
  final StructuredOutputQuery? structuredOutput;
  @JsonKey(name: 'documents_filters')
  final DocumentsFiltersQuery? documentsFilters;
  @JsonKey(name: 'override_configuration')
  final OverrideConfigurationQuery? overrideConfiguration;
  static const fromJsonFactory = _$QueryRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is QueryRequest &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality().equals(
                  other.messages,
                  messages,
                )) &&
            (identical(other.stream, stream) ||
                const DeepCollectionEquality().equals(other.stream, stream)) &&
            (identical(other.conversationId, conversationId) ||
                const DeepCollectionEquality().equals(
                  other.conversationId,
                  conversationId,
                )) &&
            (identical(other.llmModelId, llmModelId) ||
                const DeepCollectionEquality().equals(
                  other.llmModelId,
                  llmModelId,
                )) &&
            (identical(other.structuredOutput, structuredOutput) ||
                const DeepCollectionEquality().equals(
                  other.structuredOutput,
                  structuredOutput,
                )) &&
            (identical(other.documentsFilters, documentsFilters) ||
                const DeepCollectionEquality().equals(
                  other.documentsFilters,
                  documentsFilters,
                )) &&
            (identical(other.overrideConfiguration, overrideConfiguration) ||
                const DeepCollectionEquality().equals(
                  other.overrideConfiguration,
                  overrideConfiguration,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(stream) ^
      const DeepCollectionEquality().hash(conversationId) ^
      const DeepCollectionEquality().hash(llmModelId) ^
      const DeepCollectionEquality().hash(structuredOutput) ^
      const DeepCollectionEquality().hash(documentsFilters) ^
      const DeepCollectionEquality().hash(overrideConfiguration) ^
      runtimeType.hashCode;
}

extension $QueryRequestExtension on QueryRequest {
  QueryRequest copyWith({
    List<MessageQuery>? messages,
    bool? stream,
    String? conversationId,
    String? llmModelId,
    StructuredOutputQuery? structuredOutput,
    DocumentsFiltersQuery? documentsFilters,
    OverrideConfigurationQuery? overrideConfiguration,
  }) {
    return QueryRequest(
      messages: messages ?? this.messages,
      stream: stream ?? this.stream,
      conversationId: conversationId ?? this.conversationId,
      llmModelId: llmModelId ?? this.llmModelId,
      structuredOutput: structuredOutput ?? this.structuredOutput,
      documentsFilters: documentsFilters ?? this.documentsFilters,
      overrideConfiguration:
          overrideConfiguration ?? this.overrideConfiguration,
    );
  }

  QueryRequest copyWithWrapped({
    Wrapped<List<MessageQuery>>? messages,
    Wrapped<bool?>? stream,
    Wrapped<String?>? conversationId,
    Wrapped<String?>? llmModelId,
    Wrapped<StructuredOutputQuery?>? structuredOutput,
    Wrapped<DocumentsFiltersQuery?>? documentsFilters,
    Wrapped<OverrideConfigurationQuery?>? overrideConfiguration,
  }) {
    return QueryRequest(
      messages: (messages != null ? messages.value : this.messages),
      stream: (stream != null ? stream.value : this.stream),
      conversationId: (conversationId != null
          ? conversationId.value
          : this.conversationId),
      llmModelId: (llmModelId != null ? llmModelId.value : this.llmModelId),
      structuredOutput: (structuredOutput != null
          ? structuredOutput.value
          : this.structuredOutput),
      documentsFilters: (documentsFilters != null
          ? documentsFilters.value
          : this.documentsFilters),
      overrideConfiguration: (overrideConfiguration != null
          ? overrideConfiguration.value
          : this.overrideConfiguration),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class QueryResponseDto {
  const QueryResponseDto({
    required this.conversationId,
    required this.retrievalContents,
    this.attributions,
    this.groundednessScores,
    this.message,
    this.messageId,
  });

  factory QueryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$QueryResponseDtoFromJson(json);

  static const toJsonFactory = _$QueryResponseDtoToJson;
  Map<String, dynamic> toJson() => _$QueryResponseDtoToJson(this);

  @JsonKey(name: 'conversation_id')
  final String conversationId;
  @JsonKey(name: 'retrieval_contents', defaultValue: <RetrievalContentDto>[])
  final List<RetrievalContentDto> retrievalContents;
  @JsonKey(name: 'attributions', defaultValue: <AttributionDto>[])
  final List<AttributionDto>? attributions;
  @JsonKey(name: 'groundedness_scores', defaultValue: <GroundednessScoreDto>[])
  final List<GroundednessScoreDto>? groundednessScores;
  @JsonKey(name: 'message')
  final MessageDto? message;
  @JsonKey(name: 'message_id')
  final String? messageId;
  static const fromJsonFactory = _$QueryResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is QueryResponseDto &&
            (identical(other.conversationId, conversationId) ||
                const DeepCollectionEquality().equals(
                  other.conversationId,
                  conversationId,
                )) &&
            (identical(other.retrievalContents, retrievalContents) ||
                const DeepCollectionEquality().equals(
                  other.retrievalContents,
                  retrievalContents,
                )) &&
            (identical(other.attributions, attributions) ||
                const DeepCollectionEquality().equals(
                  other.attributions,
                  attributions,
                )) &&
            (identical(other.groundednessScores, groundednessScores) ||
                const DeepCollectionEquality().equals(
                  other.groundednessScores,
                  groundednessScores,
                )) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality().equals(
                  other.messageId,
                  messageId,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(conversationId) ^
      const DeepCollectionEquality().hash(retrievalContents) ^
      const DeepCollectionEquality().hash(attributions) ^
      const DeepCollectionEquality().hash(groundednessScores) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(messageId) ^
      runtimeType.hashCode;
}

extension $QueryResponseDtoExtension on QueryResponseDto {
  QueryResponseDto copyWith({
    String? conversationId,
    List<RetrievalContentDto>? retrievalContents,
    List<AttributionDto>? attributions,
    List<GroundednessScoreDto>? groundednessScores,
    MessageDto? message,
    String? messageId,
  }) {
    return QueryResponseDto(
      conversationId: conversationId ?? this.conversationId,
      retrievalContents: retrievalContents ?? this.retrievalContents,
      attributions: attributions ?? this.attributions,
      groundednessScores: groundednessScores ?? this.groundednessScores,
      message: message ?? this.message,
      messageId: messageId ?? this.messageId,
    );
  }

  QueryResponseDto copyWithWrapped({
    Wrapped<String>? conversationId,
    Wrapped<List<RetrievalContentDto>>? retrievalContents,
    Wrapped<List<AttributionDto>?>? attributions,
    Wrapped<List<GroundednessScoreDto>?>? groundednessScores,
    Wrapped<MessageDto?>? message,
    Wrapped<String?>? messageId,
  }) {
    return QueryResponseDto(
      conversationId: (conversationId != null
          ? conversationId.value
          : this.conversationId),
      retrievalContents: (retrievalContents != null
          ? retrievalContents.value
          : this.retrievalContents),
      attributions: (attributions != null
          ? attributions.value
          : this.attributions),
      groundednessScores: (groundednessScores != null
          ? groundednessScores.value
          : this.groundednessScores),
      message: (message != null ? message.value : this.message),
      messageId: (messageId != null ? messageId.value : this.messageId),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RerankCreateResponseDto {
  const RerankCreateResponseDto({required this.results});

  factory RerankCreateResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RerankCreateResponseDtoFromJson(json);

  static const toJsonFactory = _$RerankCreateResponseDtoToJson;
  Map<String, dynamic> toJson() => _$RerankCreateResponseDtoToJson(this);

  @JsonKey(name: 'results', defaultValue: <ResultDto>[])
  final List<ResultDto> results;
  static const fromJsonFactory = _$RerankCreateResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RerankCreateResponseDto &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(results) ^ runtimeType.hashCode;
}

extension $RerankCreateResponseDtoExtension on RerankCreateResponseDto {
  RerankCreateResponseDto copyWith({List<ResultDto>? results}) {
    return RerankCreateResponseDto(results: results ?? this.results);
  }

  RerankCreateResponseDto copyWithWrapped({Wrapped<List<ResultDto>>? results}) {
    return RerankCreateResponseDto(
      results: (results != null ? results.value : this.results),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RerankRequest {
  const RerankRequest({
    required this.query,
    required this.documents,
    this.model,
    this.topN,
    this.instruction,
    this.metadata,
  });

  factory RerankRequest.fromJson(Map<String, dynamic> json) =>
      _$RerankRequestFromJson(json);

  static const toJsonFactory = _$RerankRequestToJson;
  Map<String, dynamic> toJson() => _$RerankRequestToJson(this);

  @JsonKey(name: 'query')
  final String query;
  @JsonKey(name: 'documents', defaultValue: <String>[])
  final List<String> documents;
  @JsonKey(name: 'model')
  final String? model;
  @JsonKey(name: 'top_n')
  final int? topN;
  @JsonKey(name: 'instruction')
  final String? instruction;
  @JsonKey(name: 'metadata', defaultValue: <String>[])
  final List<String>? metadata;
  static const fromJsonFactory = _$RerankRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RerankRequest &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.documents, documents) ||
                const DeepCollectionEquality().equals(
                  other.documents,
                  documents,
                )) &&
            (identical(other.model, model) ||
                const DeepCollectionEquality().equals(other.model, model)) &&
            (identical(other.topN, topN) ||
                const DeepCollectionEquality().equals(other.topN, topN)) &&
            (identical(other.instruction, instruction) ||
                const DeepCollectionEquality().equals(
                  other.instruction,
                  instruction,
                )) &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality().equals(
                  other.metadata,
                  metadata,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(documents) ^
      const DeepCollectionEquality().hash(model) ^
      const DeepCollectionEquality().hash(topN) ^
      const DeepCollectionEquality().hash(instruction) ^
      const DeepCollectionEquality().hash(metadata) ^
      runtimeType.hashCode;
}

extension $RerankRequestExtension on RerankRequest {
  RerankRequest copyWith({
    String? query,
    List<String>? documents,
    String? model,
    int? topN,
    String? instruction,
    List<String>? metadata,
  }) {
    return RerankRequest(
      query: query ?? this.query,
      documents: documents ?? this.documents,
      model: model ?? this.model,
      topN: topN ?? this.topN,
      instruction: instruction ?? this.instruction,
      metadata: metadata ?? this.metadata,
    );
  }

  RerankRequest copyWithWrapped({
    Wrapped<String>? query,
    Wrapped<List<String>>? documents,
    Wrapped<String?>? model,
    Wrapped<int?>? topN,
    Wrapped<String?>? instruction,
    Wrapped<List<String>?>? metadata,
  }) {
    return RerankRequest(
      query: (query != null ? query.value : this.query),
      documents: (documents != null ? documents.value : this.documents),
      model: (model != null ? model.value : this.model),
      topN: (topN != null ? topN.value : this.topN),
      instruction: (instruction != null ? instruction.value : this.instruction),
      metadata: (metadata != null ? metadata.value : this.metadata),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ResultDto {
  const ResultDto({required this.index, required this.relevanceScore});

  factory ResultDto.fromJson(Map<String, dynamic> json) =>
      _$ResultDtoFromJson(json);

  static const toJsonFactory = _$ResultDtoToJson;
  Map<String, dynamic> toJson() => _$ResultDtoToJson(this);

  @JsonKey(name: 'index')
  final int index;
  @JsonKey(name: 'relevance_score')
  final double relevanceScore;
  static const fromJsonFactory = _$ResultDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ResultDto &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.relevanceScore, relevanceScore) ||
                const DeepCollectionEquality().equals(
                  other.relevanceScore,
                  relevanceScore,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(relevanceScore) ^
      runtimeType.hashCode;
}

extension $ResultDtoExtension on ResultDto {
  ResultDto copyWith({int? index, double? relevanceScore}) {
    return ResultDto(
      index: index ?? this.index,
      relevanceScore: relevanceScore ?? this.relevanceScore,
    );
  }

  ResultDto copyWithWrapped({
    Wrapped<int>? index,
    Wrapped<double>? relevanceScore,
  }) {
    return ResultDto(
      index: (index != null ? index.value : this.index),
      relevanceScore: (relevanceScore != null
          ? relevanceScore.value
          : this.relevanceScore),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RetrievalContentCtxlMetadataDto {
  const RetrievalContentCtxlMetadataDto({
    this.chunkId,
    this.chunkSize,
    this.dateCreated,
    this.documentTitle,
    this.fileFormat,
    this.fileName,
    this.isFigure,
    this.page,
    this.sectionId,
    this.sectionTitle,
  });

  factory RetrievalContentCtxlMetadataDto.fromJson(Map<String, dynamic> json) =>
      _$RetrievalContentCtxlMetadataDtoFromJson(json);

  static const toJsonFactory = _$RetrievalContentCtxlMetadataDtoToJson;
  Map<String, dynamic> toJson() =>
      _$RetrievalContentCtxlMetadataDtoToJson(this);

  @JsonKey(name: 'chunk_id')
  final String? chunkId;
  @JsonKey(name: 'chunk_size')
  final int? chunkSize;
  @JsonKey(name: 'date_created')
  final String? dateCreated;
  @JsonKey(name: 'document_title')
  final String? documentTitle;
  @JsonKey(name: 'file_format')
  final String? fileFormat;
  @JsonKey(name: 'file_name')
  final String? fileName;
  @JsonKey(name: 'is_figure')
  final bool? isFigure;
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'section_id')
  final String? sectionId;
  @JsonKey(name: 'section_title')
  final String? sectionTitle;
  static const fromJsonFactory = _$RetrievalContentCtxlMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RetrievalContentCtxlMetadataDto &&
            (identical(other.chunkId, chunkId) ||
                const DeepCollectionEquality().equals(
                  other.chunkId,
                  chunkId,
                )) &&
            (identical(other.chunkSize, chunkSize) ||
                const DeepCollectionEquality().equals(
                  other.chunkSize,
                  chunkSize,
                )) &&
            (identical(other.dateCreated, dateCreated) ||
                const DeepCollectionEquality().equals(
                  other.dateCreated,
                  dateCreated,
                )) &&
            (identical(other.documentTitle, documentTitle) ||
                const DeepCollectionEquality().equals(
                  other.documentTitle,
                  documentTitle,
                )) &&
            (identical(other.fileFormat, fileFormat) ||
                const DeepCollectionEquality().equals(
                  other.fileFormat,
                  fileFormat,
                )) &&
            (identical(other.fileName, fileName) ||
                const DeepCollectionEquality().equals(
                  other.fileName,
                  fileName,
                )) &&
            (identical(other.isFigure, isFigure) ||
                const DeepCollectionEquality().equals(
                  other.isFigure,
                  isFigure,
                )) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.sectionId, sectionId) ||
                const DeepCollectionEquality().equals(
                  other.sectionId,
                  sectionId,
                )) &&
            (identical(other.sectionTitle, sectionTitle) ||
                const DeepCollectionEquality().equals(
                  other.sectionTitle,
                  sectionTitle,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(chunkId) ^
      const DeepCollectionEquality().hash(chunkSize) ^
      const DeepCollectionEquality().hash(dateCreated) ^
      const DeepCollectionEquality().hash(documentTitle) ^
      const DeepCollectionEquality().hash(fileFormat) ^
      const DeepCollectionEquality().hash(fileName) ^
      const DeepCollectionEquality().hash(isFigure) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(sectionId) ^
      const DeepCollectionEquality().hash(sectionTitle) ^
      runtimeType.hashCode;
}

extension $RetrievalContentCtxlMetadataDtoExtension
    on RetrievalContentCtxlMetadataDto {
  RetrievalContentCtxlMetadataDto copyWith({
    String? chunkId,
    int? chunkSize,
    String? dateCreated,
    String? documentTitle,
    String? fileFormat,
    String? fileName,
    bool? isFigure,
    int? page,
    String? sectionId,
    String? sectionTitle,
  }) {
    return RetrievalContentCtxlMetadataDto(
      chunkId: chunkId ?? this.chunkId,
      chunkSize: chunkSize ?? this.chunkSize,
      dateCreated: dateCreated ?? this.dateCreated,
      documentTitle: documentTitle ?? this.documentTitle,
      fileFormat: fileFormat ?? this.fileFormat,
      fileName: fileName ?? this.fileName,
      isFigure: isFigure ?? this.isFigure,
      page: page ?? this.page,
      sectionId: sectionId ?? this.sectionId,
      sectionTitle: sectionTitle ?? this.sectionTitle,
    );
  }

  RetrievalContentCtxlMetadataDto copyWithWrapped({
    Wrapped<String?>? chunkId,
    Wrapped<int?>? chunkSize,
    Wrapped<String?>? dateCreated,
    Wrapped<String?>? documentTitle,
    Wrapped<String?>? fileFormat,
    Wrapped<String?>? fileName,
    Wrapped<bool?>? isFigure,
    Wrapped<int?>? page,
    Wrapped<String?>? sectionId,
    Wrapped<String?>? sectionTitle,
  }) {
    return RetrievalContentCtxlMetadataDto(
      chunkId: (chunkId != null ? chunkId.value : this.chunkId),
      chunkSize: (chunkSize != null ? chunkSize.value : this.chunkSize),
      dateCreated: (dateCreated != null ? dateCreated.value : this.dateCreated),
      documentTitle: (documentTitle != null
          ? documentTitle.value
          : this.documentTitle),
      fileFormat: (fileFormat != null ? fileFormat.value : this.fileFormat),
      fileName: (fileName != null ? fileName.value : this.fileName),
      isFigure: (isFigure != null ? isFigure.value : this.isFigure),
      page: (page != null ? page.value : this.page),
      sectionId: (sectionId != null ? sectionId.value : this.sectionId),
      sectionTitle: (sectionTitle != null
          ? sectionTitle.value
          : this.sectionTitle),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RetrievalContentCustomMetadataConfigDto {
  const RetrievalContentCustomMetadataConfigDto({
    this.filterable,
    this.inChunks,
    this.returnedInResponse,
  });

  factory RetrievalContentCustomMetadataConfigDto.fromJson(
    Map<String, dynamic> json,
  ) => _$RetrievalContentCustomMetadataConfigDtoFromJson(json);

  static const toJsonFactory = _$RetrievalContentCustomMetadataConfigDtoToJson;
  Map<String, dynamic> toJson() =>
      _$RetrievalContentCustomMetadataConfigDtoToJson(this);

  @JsonKey(name: 'filterable')
  final bool? filterable;
  @JsonKey(name: 'in_chunks')
  final bool? inChunks;
  @JsonKey(name: 'returned_in_response')
  final bool? returnedInResponse;
  static const fromJsonFactory =
      _$RetrievalContentCustomMetadataConfigDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RetrievalContentCustomMetadataConfigDto &&
            (identical(other.filterable, filterable) ||
                const DeepCollectionEquality().equals(
                  other.filterable,
                  filterable,
                )) &&
            (identical(other.inChunks, inChunks) ||
                const DeepCollectionEquality().equals(
                  other.inChunks,
                  inChunks,
                )) &&
            (identical(other.returnedInResponse, returnedInResponse) ||
                const DeepCollectionEquality().equals(
                  other.returnedInResponse,
                  returnedInResponse,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(filterable) ^
      const DeepCollectionEquality().hash(inChunks) ^
      const DeepCollectionEquality().hash(returnedInResponse) ^
      runtimeType.hashCode;
}

extension $RetrievalContentCustomMetadataConfigDtoExtension
    on RetrievalContentCustomMetadataConfigDto {
  RetrievalContentCustomMetadataConfigDto copyWith({
    bool? filterable,
    bool? inChunks,
    bool? returnedInResponse,
  }) {
    return RetrievalContentCustomMetadataConfigDto(
      filterable: filterable ?? this.filterable,
      inChunks: inChunks ?? this.inChunks,
      returnedInResponse: returnedInResponse ?? this.returnedInResponse,
    );
  }

  RetrievalContentCustomMetadataConfigDto copyWithWrapped({
    Wrapped<bool?>? filterable,
    Wrapped<bool?>? inChunks,
    Wrapped<bool?>? returnedInResponse,
  }) {
    return RetrievalContentCustomMetadataConfigDto(
      filterable: (filterable != null ? filterable.value : this.filterable),
      inChunks: (inChunks != null ? inChunks.value : this.inChunks),
      returnedInResponse: (returnedInResponse != null
          ? returnedInResponse.value
          : this.returnedInResponse),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RetrievalContentDto {
  const RetrievalContentDto({
    required this.contentId,
    required this.docId,
    required this.docName,
    required this.format,
    required this.type,
    this.contentText,
    this.ctxlMetadata,
    this.customMetadata,
    this.customMetadataConfig,
    this.number,
    this.page,
    this.score,
    this.url,
  });

  factory RetrievalContentDto.fromJson(Map<String, dynamic> json) =>
      _$RetrievalContentDtoFromJson(json);

  static const toJsonFactory = _$RetrievalContentDtoToJson;
  Map<String, dynamic> toJson() => _$RetrievalContentDtoToJson(this);

  @JsonKey(name: 'content_id')
  final String contentId;
  @JsonKey(name: 'doc_id')
  final String docId;
  @JsonKey(name: 'doc_name')
  final String docName;
  @JsonKey(
    name: 'format',
    toJson: retrievalContentDtoFormatToJson,
    fromJson: retrievalContentDtoFormatFromJson,
  )
  final enums.RetrievalContentDtoFormat format;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'content_text')
  final String? contentText;
  @JsonKey(name: 'ctxl_metadata')
  final RetrievalContentCtxlMetadataDto? ctxlMetadata;
  @JsonKey(name: 'custom_metadata')
  final Object? customMetadata;
  @JsonKey(name: 'custom_metadata_config')
  final Object? customMetadataConfig;
  @JsonKey(name: 'number')
  final int? number;
  @JsonKey(name: 'page')
  final int? page;
  @JsonKey(name: 'score')
  final double? score;
  @JsonKey(name: 'url')
  final String? url;
  static const fromJsonFactory = _$RetrievalContentDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RetrievalContentDto &&
            (identical(other.contentId, contentId) ||
                const DeepCollectionEquality().equals(
                  other.contentId,
                  contentId,
                )) &&
            (identical(other.docId, docId) ||
                const DeepCollectionEquality().equals(other.docId, docId)) &&
            (identical(other.docName, docName) ||
                const DeepCollectionEquality().equals(
                  other.docName,
                  docName,
                )) &&
            (identical(other.format, format) ||
                const DeepCollectionEquality().equals(other.format, format)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.contentText, contentText) ||
                const DeepCollectionEquality().equals(
                  other.contentText,
                  contentText,
                )) &&
            (identical(other.ctxlMetadata, ctxlMetadata) ||
                const DeepCollectionEquality().equals(
                  other.ctxlMetadata,
                  ctxlMetadata,
                )) &&
            (identical(other.customMetadata, customMetadata) ||
                const DeepCollectionEquality().equals(
                  other.customMetadata,
                  customMetadata,
                )) &&
            (identical(other.customMetadataConfig, customMetadataConfig) ||
                const DeepCollectionEquality().equals(
                  other.customMetadataConfig,
                  customMetadataConfig,
                )) &&
            (identical(other.number, number) ||
                const DeepCollectionEquality().equals(other.number, number)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentId) ^
      const DeepCollectionEquality().hash(docId) ^
      const DeepCollectionEquality().hash(docName) ^
      const DeepCollectionEquality().hash(format) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(contentText) ^
      const DeepCollectionEquality().hash(ctxlMetadata) ^
      const DeepCollectionEquality().hash(customMetadata) ^
      const DeepCollectionEquality().hash(customMetadataConfig) ^
      const DeepCollectionEquality().hash(number) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(url) ^
      runtimeType.hashCode;
}

extension $RetrievalContentDtoExtension on RetrievalContentDto {
  RetrievalContentDto copyWith({
    String? contentId,
    String? docId,
    String? docName,
    enums.RetrievalContentDtoFormat? format,
    String? type,
    String? contentText,
    RetrievalContentCtxlMetadataDto? ctxlMetadata,
    Object? customMetadata,
    Object? customMetadataConfig,
    int? number,
    int? page,
    double? score,
    String? url,
  }) {
    return RetrievalContentDto(
      contentId: contentId ?? this.contentId,
      docId: docId ?? this.docId,
      docName: docName ?? this.docName,
      format: format ?? this.format,
      type: type ?? this.type,
      contentText: contentText ?? this.contentText,
      ctxlMetadata: ctxlMetadata ?? this.ctxlMetadata,
      customMetadata: customMetadata ?? this.customMetadata,
      customMetadataConfig: customMetadataConfig ?? this.customMetadataConfig,
      number: number ?? this.number,
      page: page ?? this.page,
      score: score ?? this.score,
      url: url ?? this.url,
    );
  }

  RetrievalContentDto copyWithWrapped({
    Wrapped<String>? contentId,
    Wrapped<String>? docId,
    Wrapped<String>? docName,
    Wrapped<enums.RetrievalContentDtoFormat>? format,
    Wrapped<String>? type,
    Wrapped<String?>? contentText,
    Wrapped<RetrievalContentCtxlMetadataDto?>? ctxlMetadata,
    Wrapped<Object?>? customMetadata,
    Wrapped<Object?>? customMetadataConfig,
    Wrapped<int?>? number,
    Wrapped<int?>? page,
    Wrapped<double?>? score,
    Wrapped<String?>? url,
  }) {
    return RetrievalContentDto(
      contentId: (contentId != null ? contentId.value : this.contentId),
      docId: (docId != null ? docId.value : this.docId),
      docName: (docName != null ? docName.value : this.docName),
      format: (format != null ? format.value : this.format),
      type: (type != null ? type.value : this.type),
      contentText: (contentText != null ? contentText.value : this.contentText),
      ctxlMetadata: (ctxlMetadata != null
          ? ctxlMetadata.value
          : this.ctxlMetadata),
      customMetadata: (customMetadata != null
          ? customMetadata.value
          : this.customMetadata),
      customMetadataConfig: (customMetadataConfig != null
          ? customMetadataConfig.value
          : this.customMetadataConfig),
      number: (number != null ? number.value : this.number),
      page: (page != null ? page.value : this.page),
      score: (score != null ? score.value : this.score),
      url: (url != null ? url.value : this.url),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class RetrievalInfoResponseDto {
  const RetrievalInfoResponseDto({this.contentMetadatas});

  factory RetrievalInfoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$RetrievalInfoResponseDtoFromJson(json);

  static const toJsonFactory = _$RetrievalInfoResponseDtoToJson;
  Map<String, dynamic> toJson() => _$RetrievalInfoResponseDtoToJson(this);

  @JsonKey(name: 'content_metadatas', defaultValue: <Object>[])
  final List<Object>? contentMetadatas;
  static const fromJsonFactory = _$RetrievalInfoResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is RetrievalInfoResponseDto &&
            (identical(other.contentMetadatas, contentMetadatas) ||
                const DeepCollectionEquality().equals(
                  other.contentMetadatas,
                  contentMetadatas,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(contentMetadatas) ^
      runtimeType.hashCode;
}

extension $RetrievalInfoResponseDtoExtension on RetrievalInfoResponseDto {
  RetrievalInfoResponseDto copyWith({List<Object>? contentMetadatas}) {
    return RetrievalInfoResponseDto(
      contentMetadatas: contentMetadatas ?? this.contentMetadatas,
    );
  }

  RetrievalInfoResponseDto copyWithWrapped({
    Wrapped<List<Object>?>? contentMetadatas,
  }) {
    return RetrievalInfoResponseDto(
      contentMetadatas: (contentMetadatas != null
          ? contentMetadatas.value
          : this.contentMetadatas),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SetDocumentMetadataRequest {
  const SetDocumentMetadataRequest({required this.metadata});

  factory SetDocumentMetadataRequest.fromJson(Map<String, dynamic> json) =>
      _$SetDocumentMetadataRequestFromJson(json);

  static const toJsonFactory = _$SetDocumentMetadataRequestToJson;
  Map<String, dynamic> toJson() => _$SetDocumentMetadataRequestToJson(this);

  @JsonKey(name: 'metadata')
  final Map<String, dynamic> metadata;
  static const fromJsonFactory = _$SetDocumentMetadataRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SetDocumentMetadataRequest &&
            (identical(other.metadata, metadata) ||
                const DeepCollectionEquality().equals(
                  other.metadata,
                  metadata,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(metadata) ^ runtimeType.hashCode;
}

extension $SetDocumentMetadataRequestExtension on SetDocumentMetadataRequest {
  SetDocumentMetadataRequest copyWith({Map<String, dynamic>? metadata}) {
    return SetDocumentMetadataRequest(metadata: metadata ?? this.metadata);
  }

  SetDocumentMetadataRequest copyWithWrapped({
    Wrapped<Map<String, dynamic>>? metadata,
  }) {
    return SetDocumentMetadataRequest(
      metadata: (metadata != null ? metadata.value : this.metadata),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class StructuredOutputQuery {
  const StructuredOutputQuery({required this.type, required this.jsonSchema});

  factory StructuredOutputQuery.fromJson(Map<String, dynamic> json) =>
      _$StructuredOutputQueryFromJson(json);

  static const toJsonFactory = _$StructuredOutputQueryToJson;
  Map<String, dynamic> toJson() => _$StructuredOutputQueryToJson(this);

  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'json_schema')
  final Map<String, dynamic> jsonSchema;
  static const fromJsonFactory = _$StructuredOutputQueryFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is StructuredOutputQuery &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.jsonSchema, jsonSchema) ||
                const DeepCollectionEquality().equals(
                  other.jsonSchema,
                  jsonSchema,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(jsonSchema) ^
      runtimeType.hashCode;
}

extension $StructuredOutputQueryExtension on StructuredOutputQuery {
  StructuredOutputQuery copyWith({
    String? type,
    Map<String, dynamic>? jsonSchema,
  }) {
    return StructuredOutputQuery(
      type: type ?? this.type,
      jsonSchema: jsonSchema ?? this.jsonSchema,
    );
  }

  StructuredOutputQuery copyWithWrapped({
    Wrapped<String>? type,
    Wrapped<Map<String, dynamic>>? jsonSchema,
  }) {
    return StructuredOutputQuery(
      type: (type != null ? type.value : this.type),
      jsonSchema: (jsonSchema != null ? jsonSchema.value : this.jsonSchema),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class TopUpHistoryResponseDto {
  const TopUpHistoryResponseDto({required this.history});

  factory TopUpHistoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TopUpHistoryResponseDtoFromJson(json);

  static const toJsonFactory = _$TopUpHistoryResponseDtoToJson;
  Map<String, dynamic> toJson() => _$TopUpHistoryResponseDtoToJson(this);

  @JsonKey(name: 'history')
  final dynamic history;
  static const fromJsonFactory = _$TopUpHistoryResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is TopUpHistoryResponseDto &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(history) ^ runtimeType.hashCode;
}

extension $TopUpHistoryResponseDtoExtension on TopUpHistoryResponseDto {
  TopUpHistoryResponseDto copyWith({dynamic history}) {
    return TopUpHistoryResponseDto(history: history ?? this.history);
  }

  TopUpHistoryResponseDto copyWithWrapped({Wrapped<dynamic>? history}) {
    return TopUpHistoryResponseDto(
      history: (history != null ? history.value : this.history),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateAgentRequest {
  const UpdateAgentRequest({this.name, this.systemPrompt, this.description});

  factory UpdateAgentRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAgentRequestFromJson(json);

  static const toJsonFactory = _$UpdateAgentRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateAgentRequestToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'system_prompt')
  final String? systemPrompt;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$UpdateAgentRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateAgentRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.systemPrompt, systemPrompt) ||
                const DeepCollectionEquality().equals(
                  other.systemPrompt,
                  systemPrompt,
                )) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(systemPrompt) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $UpdateAgentRequestExtension on UpdateAgentRequest {
  UpdateAgentRequest copyWith({
    String? name,
    String? systemPrompt,
    String? description,
  }) {
    return UpdateAgentRequest(
      name: name ?? this.name,
      systemPrompt: systemPrompt ?? this.systemPrompt,
      description: description ?? this.description,
    );
  }

  UpdateAgentRequest copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? systemPrompt,
    Wrapped<String?>? description,
  }) {
    return UpdateAgentRequest(
      name: (name != null ? name.value : this.name),
      systemPrompt: (systemPrompt != null
          ? systemPrompt.value
          : this.systemPrompt),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class UpdateDatastoreRequest {
  const UpdateDatastoreRequest({this.name, this.description});

  factory UpdateDatastoreRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateDatastoreRequestFromJson(json);

  static const toJsonFactory = _$UpdateDatastoreRequestToJson;
  Map<String, dynamic> toJson() => _$UpdateDatastoreRequestToJson(this);

  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'description')
  final String? description;
  static const fromJsonFactory = _$UpdateDatastoreRequestFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is UpdateDatastoreRequest &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality().equals(
                  other.description,
                  description,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      runtimeType.hashCode;
}

extension $UpdateDatastoreRequestExtension on UpdateDatastoreRequest {
  UpdateDatastoreRequest copyWith({String? name, String? description}) {
    return UpdateDatastoreRequest(
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  UpdateDatastoreRequest copyWithWrapped({
    Wrapped<String?>? name,
    Wrapped<String?>? description,
  }) {
    return UpdateDatastoreRequest(
      name: (name != null ? name.value : this.name),
      description: (description != null ? description.value : this.description),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class ValidationError {
  const ValidationError({
    required this.loc,
    required this.msg,
    required this.type,
  });

  factory ValidationError.fromJson(Map<String, dynamic> json) =>
      _$ValidationErrorFromJson(json);

  static const toJsonFactory = _$ValidationErrorToJson;
  Map<String, dynamic> toJson() => _$ValidationErrorToJson(this);

  @JsonKey(name: 'loc', defaultValue: <Object>[])
  final List<Object> loc;
  @JsonKey(name: 'msg')
  final String msg;
  @JsonKey(name: 'type')
  final String type;
  static const fromJsonFactory = _$ValidationErrorFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is ValidationError &&
            (identical(other.loc, loc) ||
                const DeepCollectionEquality().equals(other.loc, loc)) &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(loc) ^
      const DeepCollectionEquality().hash(msg) ^
      const DeepCollectionEquality().hash(type) ^
      runtimeType.hashCode;
}

extension $ValidationErrorExtension on ValidationError {
  ValidationError copyWith({List<Object>? loc, String? msg, String? type}) {
    return ValidationError(
      loc: loc ?? this.loc,
      msg: msg ?? this.msg,
      type: type ?? this.type,
    );
  }

  ValidationError copyWithWrapped({
    Wrapped<List<Object>>? loc,
    Wrapped<String>? msg,
    Wrapped<String>? type,
  }) {
    return ValidationError(
      loc: (loc != null ? loc.value : this.loc),
      msg: (msg != null ? msg.value : this.msg),
      type: (type != null ? type.value : this.type),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto {
  const SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto();

  factory SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcContextualRagModelsComponentsBillingDtoEmptyResponseDtoFromJson(
    json,
  );

  static const toJsonFactory =
      _$SrcContextualRagModelsComponentsBillingDtoEmptyResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$SrcContextualRagModelsComponentsBillingDtoEmptyResponseDtoToJson(this);

  static const fromJsonFactory =
      _$SrcContextualRagModelsComponentsBillingDtoEmptyResponseDtoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto {
  const SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto({
    this.hierarchy,
  });

  factory SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcContextualRagModelsComponentsParseDtoDocumentMetadataDtoFromJson(
    json,
  );

  static const toJsonFactory =
      _$SrcContextualRagModelsComponentsParseDtoDocumentMetadataDtoToJson;
  Map<String, dynamic> toJson() =>
      _$SrcContextualRagModelsComponentsParseDtoDocumentMetadataDtoToJson(this);

  @JsonKey(name: 'hierarchy')
  final DocumentMetadataHierarchyDto? hierarchy;
  static const fromJsonFactory =
      _$SrcContextualRagModelsComponentsParseDtoDocumentMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto &&
            (identical(other.hierarchy, hierarchy) ||
                const DeepCollectionEquality().equals(
                  other.hierarchy,
                  hierarchy,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(hierarchy) ^ runtimeType.hashCode;
}

extension $SrcContextualRagModelsComponentsParseDtoDocumentMetadataDtoExtension
    on SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto {
  SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto copyWith({
    DocumentMetadataHierarchyDto? hierarchy,
  }) {
    return SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto(
      hierarchy: hierarchy ?? this.hierarchy,
    );
  }

  SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto copyWithWrapped({
    Wrapped<DocumentMetadataHierarchyDto?>? hierarchy,
  }) {
    return SrcContextualRagModelsComponentsParseDtoDocumentMetadataDto(
      hierarchy: (hierarchy != null ? hierarchy.value : this.hierarchy),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto {
  const SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto({
    required this.id,
    required this.createdAt,
    required this.name,
    required this.status,
    this.customMetadata,
    this.customMetadataConfig,
    this.hasAccess,
    this.ingestionConfig,
    this.updatedAt,
  });

  factory SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoFromJson(
        json,
      );

  static const toJsonFactory =
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoToJson;
  Map<String, dynamic> toJson() =>
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoToJson(
        this,
      );

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(
    name: 'status',
    toJson:
        srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusToJson,
    fromJson:
        srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusFromJson,
  )
  final enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
  status;
  @JsonKey(name: 'custom_metadata')
  final Object? customMetadata;
  @JsonKey(name: 'custom_metadata_config')
  final Object? customMetadataConfig;
  @JsonKey(name: 'has_access')
  final bool? hasAccess;
  @JsonKey(name: 'ingestion_config')
  final Object? ingestionConfig;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  static const fromJsonFactory =
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other
                is SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality().equals(
                  other.createdAt,
                  createdAt,
                )) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.customMetadata, customMetadata) ||
                const DeepCollectionEquality().equals(
                  other.customMetadata,
                  customMetadata,
                )) &&
            (identical(other.customMetadataConfig, customMetadataConfig) ||
                const DeepCollectionEquality().equals(
                  other.customMetadataConfig,
                  customMetadataConfig,
                )) &&
            (identical(other.hasAccess, hasAccess) ||
                const DeepCollectionEquality().equals(
                  other.hasAccess,
                  hasAccess,
                )) &&
            (identical(other.ingestionConfig, ingestionConfig) ||
                const DeepCollectionEquality().equals(
                  other.ingestionConfig,
                  ingestionConfig,
                )) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(
                  other.updatedAt,
                  updatedAt,
                )));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(customMetadata) ^
      const DeepCollectionEquality().hash(customMetadataConfig) ^
      const DeepCollectionEquality().hash(hasAccess) ^
      const DeepCollectionEquality().hash(ingestionConfig) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      runtimeType.hashCode;
}

extension $SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoExtension
    on SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto {
  SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
  copyWith({
    String? id,
    String? createdAt,
    String? name,
    enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus?
    status,
    Object? customMetadata,
    Object? customMetadataConfig,
    bool? hasAccess,
    Object? ingestionConfig,
    String? updatedAt,
  }) {
    return SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      name: name ?? this.name,
      status: status ?? this.status,
      customMetadata: customMetadata ?? this.customMetadata,
      customMetadataConfig: customMetadataConfig ?? this.customMetadataConfig,
      hasAccess: hasAccess ?? this.hasAccess,
      ingestionConfig: ingestionConfig ?? this.ingestionConfig,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto
  copyWithWrapped({
    Wrapped<String>? id,
    Wrapped<String>? createdAt,
    Wrapped<String>? name,
    Wrapped<
      enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
    >?
    status,
    Wrapped<Object?>? customMetadata,
    Wrapped<Object?>? customMetadataConfig,
    Wrapped<bool?>? hasAccess,
    Wrapped<Object?>? ingestionConfig,
    Wrapped<String?>? updatedAt,
  }) {
    return SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDto(
      id: (id != null ? id.value : this.id),
      createdAt: (createdAt != null ? createdAt.value : this.createdAt),
      name: (name != null ? name.value : this.name),
      status: (status != null ? status.value : this.status),
      customMetadata: (customMetadata != null
          ? customMetadata.value
          : this.customMetadata),
      customMetadataConfig: (customMetadataConfig != null
          ? customMetadataConfig.value
          : this.customMetadataConfig),
      hasAccess: (hasAccess != null ? hasAccess.value : this.hasAccess),
      ingestionConfig: (ingestionConfig != null
          ? ingestionConfig.value
          : this.ingestionConfig),
      updatedAt: (updatedAt != null ? updatedAt.value : this.updatedAt),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto {
  const SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto();

  factory SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDtoFromJson(
        json,
      );

  static const toJsonFactory =
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDtoToJson(
        this,
      );

  static const fromJsonFactory =
      _$SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDtoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto {
  const SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto();

  factory SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDtoFromJson(
    json,
  );

  static const toJsonFactory =
      _$SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDtoToJson(
        this,
      );

  static const fromJsonFactory =
      _$SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDtoFromJson;

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode => runtimeType.hashCode;
}

@JsonSerializable(explicitToJson: true)
class SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1 {
  const SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1FromJson(json);

  static const toJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1ToJson;
  Map<String, dynamic> toJson() =>
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1ToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SrcCoreSharedConstantsDtoEmptyResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1FromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1 &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1Extension
    on SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1 {
  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1 copyWith({
    enums.ResponseStatus? status,
    String? message,
    SrcCoreSharedConstantsDtoEmptyResponseDto? data,
    String? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1 copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<SrcCoreSharedConstantsDtoEmptyResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto1(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2 {
  const SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2FromJson(json);

  static const toJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2ToJson;
  Map<String, dynamic> toJson() =>
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2ToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2FromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2 &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2Extension
    on SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2 {
  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2 copyWith({
    enums.ResponseStatus? status,
    String? message,
    SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto? data,
    String? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2 copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<SrcContextualRagModelsDatastoresDatastoreDtoEmptyResponseDto?>?
    data,
    Wrapped<String?>? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto2(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3 {
  const SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3FromJson(json);

  static const toJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3ToJson;
  Map<String, dynamic> toJson() =>
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3ToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto?
  data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3FromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3 &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3Extension
    on SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3 {
  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3 copyWith({
    enums.ResponseStatus? status,
    String? message,
    SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto? data,
    String? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3 copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<
      SrcContextualRagModelsDatastoresDatastoreDocumentDtoEmptyResponseDto?
    >?
    data,
    Wrapped<String?>? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto3(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4 {
  const SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4({
    this.status,
    this.message,
    this.data,
    this.error,
  });

  factory SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4FromJson(json);

  static const toJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4ToJson;
  Map<String, dynamic> toJson() =>
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4ToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto? data;
  @JsonKey(name: 'error')
  final String? error;
  static const fromJsonFactory =
      _$SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4FromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4 &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(
                  other.message,
                  message,
                )) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error) ^
      runtimeType.hashCode;
}

extension $SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4Extension
    on SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4 {
  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4 copyWith({
    enums.ResponseStatus? status,
    String? message,
    SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto? data,
    String? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      error: error ?? this.error,
    );
  }

  SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4 copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
    Wrapped<String?>? message,
    Wrapped<SrcContextualRagModelsComponentsBillingDtoEmptyResponseDto?>? data,
    Wrapped<String?>? error,
  }) {
    return SrcCoreSharedConstantsDtoDataResponseEmptyResponseDto4(
      status: (status != null ? status.value : this.status),
      message: (message != null ? message.value : this.message),
      data: (data != null ? data.value : this.data),
      error: (error != null ? error.value : this.error),
    );
  }
}

@JsonSerializable(explicitToJson: true)
class SrcCoreSharedConstantsDtoEmptyResponseDto {
  const SrcCoreSharedConstantsDtoEmptyResponseDto({this.status});

  factory SrcCoreSharedConstantsDtoEmptyResponseDto.fromJson(
    Map<String, dynamic> json,
  ) => _$SrcCoreSharedConstantsDtoEmptyResponseDtoFromJson(json);

  static const toJsonFactory =
      _$SrcCoreSharedConstantsDtoEmptyResponseDtoToJson;
  Map<String, dynamic> toJson() =>
      _$SrcCoreSharedConstantsDtoEmptyResponseDtoToJson(this);

  @JsonKey(
    name: 'status',
    toJson: responseStatusNullableToJson,
    fromJson: responseStatusStatusNullableFromJson,
  )
  final enums.ResponseStatus? status;
  static enums.ResponseStatus? responseStatusStatusNullableFromJson(
    Object? value,
  ) => responseStatusNullableFromJson(value, enums.ResponseStatus.success);

  static const fromJsonFactory =
      _$SrcCoreSharedConstantsDtoEmptyResponseDtoFromJson;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is SrcCoreSharedConstantsDtoEmptyResponseDto &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(status) ^ runtimeType.hashCode;
}

extension $SrcCoreSharedConstantsDtoEmptyResponseDtoExtension
    on SrcCoreSharedConstantsDtoEmptyResponseDto {
  SrcCoreSharedConstantsDtoEmptyResponseDto copyWith({
    enums.ResponseStatus? status,
  }) {
    return SrcCoreSharedConstantsDtoEmptyResponseDto(
      status: status ?? this.status,
    );
  }

  SrcCoreSharedConstantsDtoEmptyResponseDto copyWithWrapped({
    Wrapped<enums.ResponseStatus?>? status,
  }) {
    return SrcCoreSharedConstantsDtoEmptyResponseDto(
      status: (status != null ? status.value : this.status),
    );
  }
}

String? configurationChunkingDtoChunkingModeNullableToJson(
  enums.ConfigurationChunkingDtoChunkingMode?
  configurationChunkingDtoChunkingMode,
) {
  return configurationChunkingDtoChunkingMode?.value;
}

String? configurationChunkingDtoChunkingModeToJson(
  enums.ConfigurationChunkingDtoChunkingMode
  configurationChunkingDtoChunkingMode,
) {
  return configurationChunkingDtoChunkingMode.value;
}

enums.ConfigurationChunkingDtoChunkingMode
configurationChunkingDtoChunkingModeFromJson(
  Object? configurationChunkingDtoChunkingMode, [
  enums.ConfigurationChunkingDtoChunkingMode? defaultValue,
]) {
  return enums.ConfigurationChunkingDtoChunkingMode.values.firstWhereOrNull(
        (e) => e.value == configurationChunkingDtoChunkingMode,
      ) ??
      defaultValue ??
      enums.ConfigurationChunkingDtoChunkingMode.swaggerGeneratedUnknown;
}

enums.ConfigurationChunkingDtoChunkingMode?
configurationChunkingDtoChunkingModeNullableFromJson(
  Object? configurationChunkingDtoChunkingMode, [
  enums.ConfigurationChunkingDtoChunkingMode? defaultValue,
]) {
  if (configurationChunkingDtoChunkingMode == null) {
    return null;
  }
  return enums.ConfigurationChunkingDtoChunkingMode.values.firstWhereOrNull(
        (e) => e.value == configurationChunkingDtoChunkingMode,
      ) ??
      defaultValue;
}

String configurationChunkingDtoChunkingModeExplodedListToJson(
  List<enums.ConfigurationChunkingDtoChunkingMode>?
  configurationChunkingDtoChunkingMode,
) {
  return configurationChunkingDtoChunkingMode?.map((e) => e.value!).join(',') ??
      '';
}

List<String> configurationChunkingDtoChunkingModeListToJson(
  List<enums.ConfigurationChunkingDtoChunkingMode>?
  configurationChunkingDtoChunkingMode,
) {
  if (configurationChunkingDtoChunkingMode == null) {
    return [];
  }

  return configurationChunkingDtoChunkingMode.map((e) => e.value!).toList();
}

List<enums.ConfigurationChunkingDtoChunkingMode>
configurationChunkingDtoChunkingModeListFromJson(
  List? configurationChunkingDtoChunkingMode, [
  List<enums.ConfigurationChunkingDtoChunkingMode>? defaultValue,
]) {
  if (configurationChunkingDtoChunkingMode == null) {
    return defaultValue ?? [];
  }

  return configurationChunkingDtoChunkingMode
      .map((e) => configurationChunkingDtoChunkingModeFromJson(e.toString()))
      .toList();
}

List<enums.ConfigurationChunkingDtoChunkingMode>?
configurationChunkingDtoChunkingModeNullableListFromJson(
  List? configurationChunkingDtoChunkingMode, [
  List<enums.ConfigurationChunkingDtoChunkingMode>? defaultValue,
]) {
  if (configurationChunkingDtoChunkingMode == null) {
    return defaultValue;
  }

  return configurationChunkingDtoChunkingMode
      .map((e) => configurationChunkingDtoChunkingModeFromJson(e.toString()))
      .toList();
}

String? configurationParsingDtoFigureCaptionModeNullableToJson(
  enums.ConfigurationParsingDtoFigureCaptionMode?
  configurationParsingDtoFigureCaptionMode,
) {
  return configurationParsingDtoFigureCaptionMode?.value;
}

String? configurationParsingDtoFigureCaptionModeToJson(
  enums.ConfigurationParsingDtoFigureCaptionMode
  configurationParsingDtoFigureCaptionMode,
) {
  return configurationParsingDtoFigureCaptionMode.value;
}

enums.ConfigurationParsingDtoFigureCaptionMode
configurationParsingDtoFigureCaptionModeFromJson(
  Object? configurationParsingDtoFigureCaptionMode, [
  enums.ConfigurationParsingDtoFigureCaptionMode? defaultValue,
]) {
  return enums.ConfigurationParsingDtoFigureCaptionMode.values.firstWhereOrNull(
        (e) => e.value == configurationParsingDtoFigureCaptionMode,
      ) ??
      defaultValue ??
      enums.ConfigurationParsingDtoFigureCaptionMode.swaggerGeneratedUnknown;
}

enums.ConfigurationParsingDtoFigureCaptionMode?
configurationParsingDtoFigureCaptionModeNullableFromJson(
  Object? configurationParsingDtoFigureCaptionMode, [
  enums.ConfigurationParsingDtoFigureCaptionMode? defaultValue,
]) {
  if (configurationParsingDtoFigureCaptionMode == null) {
    return null;
  }
  return enums.ConfigurationParsingDtoFigureCaptionMode.values.firstWhereOrNull(
        (e) => e.value == configurationParsingDtoFigureCaptionMode,
      ) ??
      defaultValue;
}

String configurationParsingDtoFigureCaptionModeExplodedListToJson(
  List<enums.ConfigurationParsingDtoFigureCaptionMode>?
  configurationParsingDtoFigureCaptionMode,
) {
  return configurationParsingDtoFigureCaptionMode
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> configurationParsingDtoFigureCaptionModeListToJson(
  List<enums.ConfigurationParsingDtoFigureCaptionMode>?
  configurationParsingDtoFigureCaptionMode,
) {
  if (configurationParsingDtoFigureCaptionMode == null) {
    return [];
  }

  return configurationParsingDtoFigureCaptionMode.map((e) => e.value!).toList();
}

List<enums.ConfigurationParsingDtoFigureCaptionMode>
configurationParsingDtoFigureCaptionModeListFromJson(
  List? configurationParsingDtoFigureCaptionMode, [
  List<enums.ConfigurationParsingDtoFigureCaptionMode>? defaultValue,
]) {
  if (configurationParsingDtoFigureCaptionMode == null) {
    return defaultValue ?? [];
  }

  return configurationParsingDtoFigureCaptionMode
      .map(
        (e) => configurationParsingDtoFigureCaptionModeFromJson(e.toString()),
      )
      .toList();
}

List<enums.ConfigurationParsingDtoFigureCaptionMode>?
configurationParsingDtoFigureCaptionModeNullableListFromJson(
  List? configurationParsingDtoFigureCaptionMode, [
  List<enums.ConfigurationParsingDtoFigureCaptionMode>? defaultValue,
]) {
  if (configurationParsingDtoFigureCaptionMode == null) {
    return defaultValue;
  }

  return configurationParsingDtoFigureCaptionMode
      .map(
        (e) => configurationParsingDtoFigureCaptionModeFromJson(e.toString()),
      )
      .toList();
}

String? documentFilterQueryOperatorNullableToJson(
  enums.DocumentFilterQueryOperator? documentFilterQueryOperator,
) {
  return documentFilterQueryOperator?.value;
}

String? documentFilterQueryOperatorToJson(
  enums.DocumentFilterQueryOperator documentFilterQueryOperator,
) {
  return documentFilterQueryOperator.value;
}

enums.DocumentFilterQueryOperator documentFilterQueryOperatorFromJson(
  Object? documentFilterQueryOperator, [
  enums.DocumentFilterQueryOperator? defaultValue,
]) {
  return enums.DocumentFilterQueryOperator.values.firstWhereOrNull(
        (e) => e.value == documentFilterQueryOperator,
      ) ??
      defaultValue ??
      enums.DocumentFilterQueryOperator.swaggerGeneratedUnknown;
}

enums.DocumentFilterQueryOperator? documentFilterQueryOperatorNullableFromJson(
  Object? documentFilterQueryOperator, [
  enums.DocumentFilterQueryOperator? defaultValue,
]) {
  if (documentFilterQueryOperator == null) {
    return null;
  }
  return enums.DocumentFilterQueryOperator.values.firstWhereOrNull(
        (e) => e.value == documentFilterQueryOperator,
      ) ??
      defaultValue;
}

String documentFilterQueryOperatorExplodedListToJson(
  List<enums.DocumentFilterQueryOperator>? documentFilterQueryOperator,
) {
  return documentFilterQueryOperator?.map((e) => e.value!).join(',') ?? '';
}

List<String> documentFilterQueryOperatorListToJson(
  List<enums.DocumentFilterQueryOperator>? documentFilterQueryOperator,
) {
  if (documentFilterQueryOperator == null) {
    return [];
  }

  return documentFilterQueryOperator.map((e) => e.value!).toList();
}

List<enums.DocumentFilterQueryOperator> documentFilterQueryOperatorListFromJson(
  List? documentFilterQueryOperator, [
  List<enums.DocumentFilterQueryOperator>? defaultValue,
]) {
  if (documentFilterQueryOperator == null) {
    return defaultValue ?? [];
  }

  return documentFilterQueryOperator
      .map((e) => documentFilterQueryOperatorFromJson(e.toString()))
      .toList();
}

List<enums.DocumentFilterQueryOperator>?
documentFilterQueryOperatorNullableListFromJson(
  List? documentFilterQueryOperator, [
  List<enums.DocumentFilterQueryOperator>? defaultValue,
]) {
  if (documentFilterQueryOperator == null) {
    return defaultValue;
  }

  return documentFilterQueryOperator
      .map((e) => documentFilterQueryOperatorFromJson(e.toString()))
      .toList();
}

String? documentMetadataHierarchyBlockDtoTypeNullableToJson(
  enums.DocumentMetadataHierarchyBlockDtoType?
  documentMetadataHierarchyBlockDtoType,
) {
  return documentMetadataHierarchyBlockDtoType?.value;
}

String? documentMetadataHierarchyBlockDtoTypeToJson(
  enums.DocumentMetadataHierarchyBlockDtoType
  documentMetadataHierarchyBlockDtoType,
) {
  return documentMetadataHierarchyBlockDtoType.value;
}

enums.DocumentMetadataHierarchyBlockDtoType
documentMetadataHierarchyBlockDtoTypeFromJson(
  Object? documentMetadataHierarchyBlockDtoType, [
  enums.DocumentMetadataHierarchyBlockDtoType? defaultValue,
]) {
  return enums.DocumentMetadataHierarchyBlockDtoType.values.firstWhereOrNull(
        (e) => e.value == documentMetadataHierarchyBlockDtoType,
      ) ??
      defaultValue ??
      enums.DocumentMetadataHierarchyBlockDtoType.swaggerGeneratedUnknown;
}

enums.DocumentMetadataHierarchyBlockDtoType?
documentMetadataHierarchyBlockDtoTypeNullableFromJson(
  Object? documentMetadataHierarchyBlockDtoType, [
  enums.DocumentMetadataHierarchyBlockDtoType? defaultValue,
]) {
  if (documentMetadataHierarchyBlockDtoType == null) {
    return null;
  }
  return enums.DocumentMetadataHierarchyBlockDtoType.values.firstWhereOrNull(
        (e) => e.value == documentMetadataHierarchyBlockDtoType,
      ) ??
      defaultValue;
}

String documentMetadataHierarchyBlockDtoTypeExplodedListToJson(
  List<enums.DocumentMetadataHierarchyBlockDtoType>?
  documentMetadataHierarchyBlockDtoType,
) {
  return documentMetadataHierarchyBlockDtoType
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> documentMetadataHierarchyBlockDtoTypeListToJson(
  List<enums.DocumentMetadataHierarchyBlockDtoType>?
  documentMetadataHierarchyBlockDtoType,
) {
  if (documentMetadataHierarchyBlockDtoType == null) {
    return [];
  }

  return documentMetadataHierarchyBlockDtoType.map((e) => e.value!).toList();
}

List<enums.DocumentMetadataHierarchyBlockDtoType>
documentMetadataHierarchyBlockDtoTypeListFromJson(
  List? documentMetadataHierarchyBlockDtoType, [
  List<enums.DocumentMetadataHierarchyBlockDtoType>? defaultValue,
]) {
  if (documentMetadataHierarchyBlockDtoType == null) {
    return defaultValue ?? [];
  }

  return documentMetadataHierarchyBlockDtoType
      .map((e) => documentMetadataHierarchyBlockDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.DocumentMetadataHierarchyBlockDtoType>?
documentMetadataHierarchyBlockDtoTypeNullableListFromJson(
  List? documentMetadataHierarchyBlockDtoType, [
  List<enums.DocumentMetadataHierarchyBlockDtoType>? defaultValue,
]) {
  if (documentMetadataHierarchyBlockDtoType == null) {
    return defaultValue;
  }

  return documentMetadataHierarchyBlockDtoType
      .map((e) => documentMetadataHierarchyBlockDtoTypeFromJson(e.toString()))
      .toList();
}

String? documentMetadataHierarchyBlockDtoConfidenceLevelNullableToJson(
  enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel?
  documentMetadataHierarchyBlockDtoConfidenceLevel,
) {
  return documentMetadataHierarchyBlockDtoConfidenceLevel?.value;
}

String? documentMetadataHierarchyBlockDtoConfidenceLevelToJson(
  enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel
  documentMetadataHierarchyBlockDtoConfidenceLevel,
) {
  return documentMetadataHierarchyBlockDtoConfidenceLevel.value;
}

enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel
documentMetadataHierarchyBlockDtoConfidenceLevelFromJson(
  Object? documentMetadataHierarchyBlockDtoConfidenceLevel, [
  enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel? defaultValue,
]) {
  return enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel.values
          .firstWhereOrNull(
            (e) => e.value == documentMetadataHierarchyBlockDtoConfidenceLevel,
          ) ??
      defaultValue ??
      enums
          .DocumentMetadataHierarchyBlockDtoConfidenceLevel
          .swaggerGeneratedUnknown;
}

enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel?
documentMetadataHierarchyBlockDtoConfidenceLevelNullableFromJson(
  Object? documentMetadataHierarchyBlockDtoConfidenceLevel, [
  enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel? defaultValue,
]) {
  if (documentMetadataHierarchyBlockDtoConfidenceLevel == null) {
    return null;
  }
  return enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel.values
          .firstWhereOrNull(
            (e) => e.value == documentMetadataHierarchyBlockDtoConfidenceLevel,
          ) ??
      defaultValue;
}

String documentMetadataHierarchyBlockDtoConfidenceLevelExplodedListToJson(
  List<enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel>?
  documentMetadataHierarchyBlockDtoConfidenceLevel,
) {
  return documentMetadataHierarchyBlockDtoConfidenceLevel
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String> documentMetadataHierarchyBlockDtoConfidenceLevelListToJson(
  List<enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel>?
  documentMetadataHierarchyBlockDtoConfidenceLevel,
) {
  if (documentMetadataHierarchyBlockDtoConfidenceLevel == null) {
    return [];
  }

  return documentMetadataHierarchyBlockDtoConfidenceLevel
      .map((e) => e.value!)
      .toList();
}

List<enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel>
documentMetadataHierarchyBlockDtoConfidenceLevelListFromJson(
  List? documentMetadataHierarchyBlockDtoConfidenceLevel, [
  List<enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel>? defaultValue,
]) {
  if (documentMetadataHierarchyBlockDtoConfidenceLevel == null) {
    return defaultValue ?? [];
  }

  return documentMetadataHierarchyBlockDtoConfidenceLevel
      .map(
        (e) => documentMetadataHierarchyBlockDtoConfidenceLevelFromJson(
          e.toString(),
        ),
      )
      .toList();
}

List<enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel>?
documentMetadataHierarchyBlockDtoConfidenceLevelNullableListFromJson(
  List? documentMetadataHierarchyBlockDtoConfidenceLevel, [
  List<enums.DocumentMetadataHierarchyBlockDtoConfidenceLevel>? defaultValue,
]) {
  if (documentMetadataHierarchyBlockDtoConfidenceLevel == null) {
    return defaultValue;
  }

  return documentMetadataHierarchyBlockDtoConfidenceLevel
      .map(
        (e) => documentMetadataHierarchyBlockDtoConfidenceLevelFromJson(
          e.toString(),
        ),
      )
      .toList();
}

String? documentsFiltersQueryOperatorNullableToJson(
  enums.DocumentsFiltersQueryOperator? documentsFiltersQueryOperator,
) {
  return documentsFiltersQueryOperator?.value;
}

String? documentsFiltersQueryOperatorToJson(
  enums.DocumentsFiltersQueryOperator documentsFiltersQueryOperator,
) {
  return documentsFiltersQueryOperator.value;
}

enums.DocumentsFiltersQueryOperator documentsFiltersQueryOperatorFromJson(
  Object? documentsFiltersQueryOperator, [
  enums.DocumentsFiltersQueryOperator? defaultValue,
]) {
  return enums.DocumentsFiltersQueryOperator.values.firstWhereOrNull(
        (e) => e.value == documentsFiltersQueryOperator,
      ) ??
      defaultValue ??
      enums.DocumentsFiltersQueryOperator.swaggerGeneratedUnknown;
}

enums.DocumentsFiltersQueryOperator?
documentsFiltersQueryOperatorNullableFromJson(
  Object? documentsFiltersQueryOperator, [
  enums.DocumentsFiltersQueryOperator? defaultValue,
]) {
  if (documentsFiltersQueryOperator == null) {
    return null;
  }
  return enums.DocumentsFiltersQueryOperator.values.firstWhereOrNull(
        (e) => e.value == documentsFiltersQueryOperator,
      ) ??
      defaultValue;
}

String documentsFiltersQueryOperatorExplodedListToJson(
  List<enums.DocumentsFiltersQueryOperator>? documentsFiltersQueryOperator,
) {
  return documentsFiltersQueryOperator?.map((e) => e.value!).join(',') ?? '';
}

List<String> documentsFiltersQueryOperatorListToJson(
  List<enums.DocumentsFiltersQueryOperator>? documentsFiltersQueryOperator,
) {
  if (documentsFiltersQueryOperator == null) {
    return [];
  }

  return documentsFiltersQueryOperator.map((e) => e.value!).toList();
}

List<enums.DocumentsFiltersQueryOperator>
documentsFiltersQueryOperatorListFromJson(
  List? documentsFiltersQueryOperator, [
  List<enums.DocumentsFiltersQueryOperator>? defaultValue,
]) {
  if (documentsFiltersQueryOperator == null) {
    return defaultValue ?? [];
  }

  return documentsFiltersQueryOperator
      .map((e) => documentsFiltersQueryOperatorFromJson(e.toString()))
      .toList();
}

List<enums.DocumentsFiltersQueryOperator>?
documentsFiltersQueryOperatorNullableListFromJson(
  List? documentsFiltersQueryOperator, [
  List<enums.DocumentsFiltersQueryOperator>? defaultValue,
]) {
  if (documentsFiltersQueryOperator == null) {
    return defaultValue;
  }

  return documentsFiltersQueryOperator
      .map((e) => documentsFiltersQueryOperatorFromJson(e.toString()))
      .toList();
}

String? jobDtoStatusNullableToJson(enums.JobDtoStatus? jobDtoStatus) {
  return jobDtoStatus?.value;
}

String? jobDtoStatusToJson(enums.JobDtoStatus jobDtoStatus) {
  return jobDtoStatus.value;
}

enums.JobDtoStatus jobDtoStatusFromJson(
  Object? jobDtoStatus, [
  enums.JobDtoStatus? defaultValue,
]) {
  return enums.JobDtoStatus.values.firstWhereOrNull(
        (e) => e.value == jobDtoStatus,
      ) ??
      defaultValue ??
      enums.JobDtoStatus.swaggerGeneratedUnknown;
}

enums.JobDtoStatus? jobDtoStatusNullableFromJson(
  Object? jobDtoStatus, [
  enums.JobDtoStatus? defaultValue,
]) {
  if (jobDtoStatus == null) {
    return null;
  }
  return enums.JobDtoStatus.values.firstWhereOrNull(
        (e) => e.value == jobDtoStatus,
      ) ??
      defaultValue;
}

String jobDtoStatusExplodedListToJson(List<enums.JobDtoStatus>? jobDtoStatus) {
  return jobDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> jobDtoStatusListToJson(List<enums.JobDtoStatus>? jobDtoStatus) {
  if (jobDtoStatus == null) {
    return [];
  }

  return jobDtoStatus.map((e) => e.value!).toList();
}

List<enums.JobDtoStatus> jobDtoStatusListFromJson(
  List? jobDtoStatus, [
  List<enums.JobDtoStatus>? defaultValue,
]) {
  if (jobDtoStatus == null) {
    return defaultValue ?? [];
  }

  return jobDtoStatus.map((e) => jobDtoStatusFromJson(e.toString())).toList();
}

List<enums.JobDtoStatus>? jobDtoStatusNullableListFromJson(
  List? jobDtoStatus, [
  List<enums.JobDtoStatus>? defaultValue,
]) {
  if (jobDtoStatus == null) {
    return defaultValue;
  }

  return jobDtoStatus.map((e) => jobDtoStatusFromJson(e.toString())).toList();
}

String? messageDtoRoleNullableToJson(enums.MessageDtoRole? messageDtoRole) {
  return messageDtoRole?.value;
}

String? messageDtoRoleToJson(enums.MessageDtoRole messageDtoRole) {
  return messageDtoRole.value;
}

enums.MessageDtoRole messageDtoRoleFromJson(
  Object? messageDtoRole, [
  enums.MessageDtoRole? defaultValue,
]) {
  return enums.MessageDtoRole.values.firstWhereOrNull(
        (e) => e.value == messageDtoRole,
      ) ??
      defaultValue ??
      enums.MessageDtoRole.swaggerGeneratedUnknown;
}

enums.MessageDtoRole? messageDtoRoleNullableFromJson(
  Object? messageDtoRole, [
  enums.MessageDtoRole? defaultValue,
]) {
  if (messageDtoRole == null) {
    return null;
  }
  return enums.MessageDtoRole.values.firstWhereOrNull(
        (e) => e.value == messageDtoRole,
      ) ??
      defaultValue;
}

String messageDtoRoleExplodedListToJson(
  List<enums.MessageDtoRole>? messageDtoRole,
) {
  return messageDtoRole?.map((e) => e.value!).join(',') ?? '';
}

List<String> messageDtoRoleListToJson(
  List<enums.MessageDtoRole>? messageDtoRole,
) {
  if (messageDtoRole == null) {
    return [];
  }

  return messageDtoRole.map((e) => e.value!).toList();
}

List<enums.MessageDtoRole> messageDtoRoleListFromJson(
  List? messageDtoRole, [
  List<enums.MessageDtoRole>? defaultValue,
]) {
  if (messageDtoRole == null) {
    return defaultValue ?? [];
  }

  return messageDtoRole
      .map((e) => messageDtoRoleFromJson(e.toString()))
      .toList();
}

List<enums.MessageDtoRole>? messageDtoRoleNullableListFromJson(
  List? messageDtoRole, [
  List<enums.MessageDtoRole>? defaultValue,
]) {
  if (messageDtoRole == null) {
    return defaultValue;
  }

  return messageDtoRole
      .map((e) => messageDtoRoleFromJson(e.toString()))
      .toList();
}

String? messageQueryRoleNullableToJson(
  enums.MessageQueryRole? messageQueryRole,
) {
  return messageQueryRole?.value;
}

String? messageQueryRoleToJson(enums.MessageQueryRole messageQueryRole) {
  return messageQueryRole.value;
}

enums.MessageQueryRole messageQueryRoleFromJson(
  Object? messageQueryRole, [
  enums.MessageQueryRole? defaultValue,
]) {
  return enums.MessageQueryRole.values.firstWhereOrNull(
        (e) => e.value == messageQueryRole,
      ) ??
      defaultValue ??
      enums.MessageQueryRole.swaggerGeneratedUnknown;
}

enums.MessageQueryRole? messageQueryRoleNullableFromJson(
  Object? messageQueryRole, [
  enums.MessageQueryRole? defaultValue,
]) {
  if (messageQueryRole == null) {
    return null;
  }
  return enums.MessageQueryRole.values.firstWhereOrNull(
        (e) => e.value == messageQueryRole,
      ) ??
      defaultValue;
}

String messageQueryRoleExplodedListToJson(
  List<enums.MessageQueryRole>? messageQueryRole,
) {
  return messageQueryRole?.map((e) => e.value!).join(',') ?? '';
}

List<String> messageQueryRoleListToJson(
  List<enums.MessageQueryRole>? messageQueryRole,
) {
  if (messageQueryRole == null) {
    return [];
  }

  return messageQueryRole.map((e) => e.value!).toList();
}

List<enums.MessageQueryRole> messageQueryRoleListFromJson(
  List? messageQueryRole, [
  List<enums.MessageQueryRole>? defaultValue,
]) {
  if (messageQueryRole == null) {
    return defaultValue ?? [];
  }

  return messageQueryRole
      .map((e) => messageQueryRoleFromJson(e.toString()))
      .toList();
}

List<enums.MessageQueryRole>? messageQueryRoleNullableListFromJson(
  List? messageQueryRole, [
  List<enums.MessageQueryRole>? defaultValue,
]) {
  if (messageQueryRole == null) {
    return defaultValue;
  }

  return messageQueryRole
      .map((e) => messageQueryRoleFromJson(e.toString()))
      .toList();
}

String? pageBlockDtoTypeNullableToJson(
  enums.PageBlockDtoType? pageBlockDtoType,
) {
  return pageBlockDtoType?.value;
}

String? pageBlockDtoTypeToJson(enums.PageBlockDtoType pageBlockDtoType) {
  return pageBlockDtoType.value;
}

enums.PageBlockDtoType pageBlockDtoTypeFromJson(
  Object? pageBlockDtoType, [
  enums.PageBlockDtoType? defaultValue,
]) {
  return enums.PageBlockDtoType.values.firstWhereOrNull(
        (e) => e.value == pageBlockDtoType,
      ) ??
      defaultValue ??
      enums.PageBlockDtoType.swaggerGeneratedUnknown;
}

enums.PageBlockDtoType? pageBlockDtoTypeNullableFromJson(
  Object? pageBlockDtoType, [
  enums.PageBlockDtoType? defaultValue,
]) {
  if (pageBlockDtoType == null) {
    return null;
  }
  return enums.PageBlockDtoType.values.firstWhereOrNull(
        (e) => e.value == pageBlockDtoType,
      ) ??
      defaultValue;
}

String pageBlockDtoTypeExplodedListToJson(
  List<enums.PageBlockDtoType>? pageBlockDtoType,
) {
  return pageBlockDtoType?.map((e) => e.value!).join(',') ?? '';
}

List<String> pageBlockDtoTypeListToJson(
  List<enums.PageBlockDtoType>? pageBlockDtoType,
) {
  if (pageBlockDtoType == null) {
    return [];
  }

  return pageBlockDtoType.map((e) => e.value!).toList();
}

List<enums.PageBlockDtoType> pageBlockDtoTypeListFromJson(
  List? pageBlockDtoType, [
  List<enums.PageBlockDtoType>? defaultValue,
]) {
  if (pageBlockDtoType == null) {
    return defaultValue ?? [];
  }

  return pageBlockDtoType
      .map((e) => pageBlockDtoTypeFromJson(e.toString()))
      .toList();
}

List<enums.PageBlockDtoType>? pageBlockDtoTypeNullableListFromJson(
  List? pageBlockDtoType, [
  List<enums.PageBlockDtoType>? defaultValue,
]) {
  if (pageBlockDtoType == null) {
    return defaultValue;
  }

  return pageBlockDtoType
      .map((e) => pageBlockDtoTypeFromJson(e.toString()))
      .toList();
}

String? pageBlockDtoConfidenceLevelNullableToJson(
  enums.PageBlockDtoConfidenceLevel? pageBlockDtoConfidenceLevel,
) {
  return pageBlockDtoConfidenceLevel?.value;
}

String? pageBlockDtoConfidenceLevelToJson(
  enums.PageBlockDtoConfidenceLevel pageBlockDtoConfidenceLevel,
) {
  return pageBlockDtoConfidenceLevel.value;
}

enums.PageBlockDtoConfidenceLevel pageBlockDtoConfidenceLevelFromJson(
  Object? pageBlockDtoConfidenceLevel, [
  enums.PageBlockDtoConfidenceLevel? defaultValue,
]) {
  return enums.PageBlockDtoConfidenceLevel.values.firstWhereOrNull(
        (e) => e.value == pageBlockDtoConfidenceLevel,
      ) ??
      defaultValue ??
      enums.PageBlockDtoConfidenceLevel.swaggerGeneratedUnknown;
}

enums.PageBlockDtoConfidenceLevel? pageBlockDtoConfidenceLevelNullableFromJson(
  Object? pageBlockDtoConfidenceLevel, [
  enums.PageBlockDtoConfidenceLevel? defaultValue,
]) {
  if (pageBlockDtoConfidenceLevel == null) {
    return null;
  }
  return enums.PageBlockDtoConfidenceLevel.values.firstWhereOrNull(
        (e) => e.value == pageBlockDtoConfidenceLevel,
      ) ??
      defaultValue;
}

String pageBlockDtoConfidenceLevelExplodedListToJson(
  List<enums.PageBlockDtoConfidenceLevel>? pageBlockDtoConfidenceLevel,
) {
  return pageBlockDtoConfidenceLevel?.map((e) => e.value!).join(',') ?? '';
}

List<String> pageBlockDtoConfidenceLevelListToJson(
  List<enums.PageBlockDtoConfidenceLevel>? pageBlockDtoConfidenceLevel,
) {
  if (pageBlockDtoConfidenceLevel == null) {
    return [];
  }

  return pageBlockDtoConfidenceLevel.map((e) => e.value!).toList();
}

List<enums.PageBlockDtoConfidenceLevel> pageBlockDtoConfidenceLevelListFromJson(
  List? pageBlockDtoConfidenceLevel, [
  List<enums.PageBlockDtoConfidenceLevel>? defaultValue,
]) {
  if (pageBlockDtoConfidenceLevel == null) {
    return defaultValue ?? [];
  }

  return pageBlockDtoConfidenceLevel
      .map((e) => pageBlockDtoConfidenceLevelFromJson(e.toString()))
      .toList();
}

List<enums.PageBlockDtoConfidenceLevel>?
pageBlockDtoConfidenceLevelNullableListFromJson(
  List? pageBlockDtoConfidenceLevel, [
  List<enums.PageBlockDtoConfidenceLevel>? defaultValue,
]) {
  if (pageBlockDtoConfidenceLevel == null) {
    return defaultValue;
  }

  return pageBlockDtoConfidenceLevel
      .map((e) => pageBlockDtoConfidenceLevelFromJson(e.toString()))
      .toList();
}

String? parseJobResultsResponseDtoStatusNullableToJson(
  enums.ParseJobResultsResponseDtoStatus? parseJobResultsResponseDtoStatus,
) {
  return parseJobResultsResponseDtoStatus?.value;
}

String? parseJobResultsResponseDtoStatusToJson(
  enums.ParseJobResultsResponseDtoStatus parseJobResultsResponseDtoStatus,
) {
  return parseJobResultsResponseDtoStatus.value;
}

enums.ParseJobResultsResponseDtoStatus parseJobResultsResponseDtoStatusFromJson(
  Object? parseJobResultsResponseDtoStatus, [
  enums.ParseJobResultsResponseDtoStatus? defaultValue,
]) {
  return enums.ParseJobResultsResponseDtoStatus.values.firstWhereOrNull(
        (e) => e.value == parseJobResultsResponseDtoStatus,
      ) ??
      defaultValue ??
      enums.ParseJobResultsResponseDtoStatus.swaggerGeneratedUnknown;
}

enums.ParseJobResultsResponseDtoStatus?
parseJobResultsResponseDtoStatusNullableFromJson(
  Object? parseJobResultsResponseDtoStatus, [
  enums.ParseJobResultsResponseDtoStatus? defaultValue,
]) {
  if (parseJobResultsResponseDtoStatus == null) {
    return null;
  }
  return enums.ParseJobResultsResponseDtoStatus.values.firstWhereOrNull(
        (e) => e.value == parseJobResultsResponseDtoStatus,
      ) ??
      defaultValue;
}

String parseJobResultsResponseDtoStatusExplodedListToJson(
  List<enums.ParseJobResultsResponseDtoStatus>?
  parseJobResultsResponseDtoStatus,
) {
  return parseJobResultsResponseDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> parseJobResultsResponseDtoStatusListToJson(
  List<enums.ParseJobResultsResponseDtoStatus>?
  parseJobResultsResponseDtoStatus,
) {
  if (parseJobResultsResponseDtoStatus == null) {
    return [];
  }

  return parseJobResultsResponseDtoStatus.map((e) => e.value!).toList();
}

List<enums.ParseJobResultsResponseDtoStatus>
parseJobResultsResponseDtoStatusListFromJson(
  List? parseJobResultsResponseDtoStatus, [
  List<enums.ParseJobResultsResponseDtoStatus>? defaultValue,
]) {
  if (parseJobResultsResponseDtoStatus == null) {
    return defaultValue ?? [];
  }

  return parseJobResultsResponseDtoStatus
      .map((e) => parseJobResultsResponseDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.ParseJobResultsResponseDtoStatus>?
parseJobResultsResponseDtoStatusNullableListFromJson(
  List? parseJobResultsResponseDtoStatus, [
  List<enums.ParseJobResultsResponseDtoStatus>? defaultValue,
]) {
  if (parseJobResultsResponseDtoStatus == null) {
    return defaultValue;
  }

  return parseJobResultsResponseDtoStatus
      .map((e) => parseJobResultsResponseDtoStatusFromJson(e.toString()))
      .toList();
}

String? parseJobStatusResponseDtoStatusNullableToJson(
  enums.ParseJobStatusResponseDtoStatus? parseJobStatusResponseDtoStatus,
) {
  return parseJobStatusResponseDtoStatus?.value;
}

String? parseJobStatusResponseDtoStatusToJson(
  enums.ParseJobStatusResponseDtoStatus parseJobStatusResponseDtoStatus,
) {
  return parseJobStatusResponseDtoStatus.value;
}

enums.ParseJobStatusResponseDtoStatus parseJobStatusResponseDtoStatusFromJson(
  Object? parseJobStatusResponseDtoStatus, [
  enums.ParseJobStatusResponseDtoStatus? defaultValue,
]) {
  return enums.ParseJobStatusResponseDtoStatus.values.firstWhereOrNull(
        (e) => e.value == parseJobStatusResponseDtoStatus,
      ) ??
      defaultValue ??
      enums.ParseJobStatusResponseDtoStatus.swaggerGeneratedUnknown;
}

enums.ParseJobStatusResponseDtoStatus?
parseJobStatusResponseDtoStatusNullableFromJson(
  Object? parseJobStatusResponseDtoStatus, [
  enums.ParseJobStatusResponseDtoStatus? defaultValue,
]) {
  if (parseJobStatusResponseDtoStatus == null) {
    return null;
  }
  return enums.ParseJobStatusResponseDtoStatus.values.firstWhereOrNull(
        (e) => e.value == parseJobStatusResponseDtoStatus,
      ) ??
      defaultValue;
}

String parseJobStatusResponseDtoStatusExplodedListToJson(
  List<enums.ParseJobStatusResponseDtoStatus>? parseJobStatusResponseDtoStatus,
) {
  return parseJobStatusResponseDtoStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> parseJobStatusResponseDtoStatusListToJson(
  List<enums.ParseJobStatusResponseDtoStatus>? parseJobStatusResponseDtoStatus,
) {
  if (parseJobStatusResponseDtoStatus == null) {
    return [];
  }

  return parseJobStatusResponseDtoStatus.map((e) => e.value!).toList();
}

List<enums.ParseJobStatusResponseDtoStatus>
parseJobStatusResponseDtoStatusListFromJson(
  List? parseJobStatusResponseDtoStatus, [
  List<enums.ParseJobStatusResponseDtoStatus>? defaultValue,
]) {
  if (parseJobStatusResponseDtoStatus == null) {
    return defaultValue ?? [];
  }

  return parseJobStatusResponseDtoStatus
      .map((e) => parseJobStatusResponseDtoStatusFromJson(e.toString()))
      .toList();
}

List<enums.ParseJobStatusResponseDtoStatus>?
parseJobStatusResponseDtoStatusNullableListFromJson(
  List? parseJobStatusResponseDtoStatus, [
  List<enums.ParseJobStatusResponseDtoStatus>? defaultValue,
]) {
  if (parseJobStatusResponseDtoStatus == null) {
    return defaultValue;
  }

  return parseJobStatusResponseDtoStatus
      .map((e) => parseJobStatusResponseDtoStatusFromJson(e.toString()))
      .toList();
}

String? responseStatusNullableToJson(enums.ResponseStatus? responseStatus) {
  return responseStatus?.value;
}

String? responseStatusToJson(enums.ResponseStatus responseStatus) {
  return responseStatus.value;
}

enums.ResponseStatus responseStatusFromJson(
  Object? responseStatus, [
  enums.ResponseStatus? defaultValue,
]) {
  return enums.ResponseStatus.values.firstWhereOrNull(
        (e) => e.value == responseStatus,
      ) ??
      defaultValue ??
      enums.ResponseStatus.swaggerGeneratedUnknown;
}

enums.ResponseStatus? responseStatusNullableFromJson(
  Object? responseStatus, [
  enums.ResponseStatus? defaultValue,
]) {
  if (responseStatus == null) {
    return null;
  }
  return enums.ResponseStatus.values.firstWhereOrNull(
        (e) => e.value == responseStatus,
      ) ??
      defaultValue;
}

String responseStatusExplodedListToJson(
  List<enums.ResponseStatus>? responseStatus,
) {
  return responseStatus?.map((e) => e.value!).join(',') ?? '';
}

List<String> responseStatusListToJson(
  List<enums.ResponseStatus>? responseStatus,
) {
  if (responseStatus == null) {
    return [];
  }

  return responseStatus.map((e) => e.value!).toList();
}

List<enums.ResponseStatus> responseStatusListFromJson(
  List? responseStatus, [
  List<enums.ResponseStatus>? defaultValue,
]) {
  if (responseStatus == null) {
    return defaultValue ?? [];
  }

  return responseStatus
      .map((e) => responseStatusFromJson(e.toString()))
      .toList();
}

List<enums.ResponseStatus>? responseStatusNullableListFromJson(
  List? responseStatus, [
  List<enums.ResponseStatus>? defaultValue,
]) {
  if (responseStatus == null) {
    return defaultValue;
  }

  return responseStatus
      .map((e) => responseStatusFromJson(e.toString()))
      .toList();
}

String? retrievalContentDtoFormatNullableToJson(
  enums.RetrievalContentDtoFormat? retrievalContentDtoFormat,
) {
  return retrievalContentDtoFormat?.value;
}

String? retrievalContentDtoFormatToJson(
  enums.RetrievalContentDtoFormat retrievalContentDtoFormat,
) {
  return retrievalContentDtoFormat.value;
}

enums.RetrievalContentDtoFormat retrievalContentDtoFormatFromJson(
  Object? retrievalContentDtoFormat, [
  enums.RetrievalContentDtoFormat? defaultValue,
]) {
  return enums.RetrievalContentDtoFormat.values.firstWhereOrNull(
        (e) => e.value == retrievalContentDtoFormat,
      ) ??
      defaultValue ??
      enums.RetrievalContentDtoFormat.swaggerGeneratedUnknown;
}

enums.RetrievalContentDtoFormat? retrievalContentDtoFormatNullableFromJson(
  Object? retrievalContentDtoFormat, [
  enums.RetrievalContentDtoFormat? defaultValue,
]) {
  if (retrievalContentDtoFormat == null) {
    return null;
  }
  return enums.RetrievalContentDtoFormat.values.firstWhereOrNull(
        (e) => e.value == retrievalContentDtoFormat,
      ) ??
      defaultValue;
}

String retrievalContentDtoFormatExplodedListToJson(
  List<enums.RetrievalContentDtoFormat>? retrievalContentDtoFormat,
) {
  return retrievalContentDtoFormat?.map((e) => e.value!).join(',') ?? '';
}

List<String> retrievalContentDtoFormatListToJson(
  List<enums.RetrievalContentDtoFormat>? retrievalContentDtoFormat,
) {
  if (retrievalContentDtoFormat == null) {
    return [];
  }

  return retrievalContentDtoFormat.map((e) => e.value!).toList();
}

List<enums.RetrievalContentDtoFormat> retrievalContentDtoFormatListFromJson(
  List? retrievalContentDtoFormat, [
  List<enums.RetrievalContentDtoFormat>? defaultValue,
]) {
  if (retrievalContentDtoFormat == null) {
    return defaultValue ?? [];
  }

  return retrievalContentDtoFormat
      .map((e) => retrievalContentDtoFormatFromJson(e.toString()))
      .toList();
}

List<enums.RetrievalContentDtoFormat>?
retrievalContentDtoFormatNullableListFromJson(
  List? retrievalContentDtoFormat, [
  List<enums.RetrievalContentDtoFormat>? defaultValue,
]) {
  if (retrievalContentDtoFormat == null) {
    return defaultValue;
  }

  return retrievalContentDtoFormat
      .map((e) => retrievalContentDtoFormatFromJson(e.toString()))
      .toList();
}

String?
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusNullableToJson(
  enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus?
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus,
) {
  return srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
      ?.value;
}

String?
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusToJson(
  enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus,
) {
  return srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
      .value;
}

enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusFromJson(
  Object?
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus, [
  enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus?
  defaultValue,
]) {
  return enums
          .SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus,
          ) ??
      defaultValue ??
      enums
          .SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
          .swaggerGeneratedUnknown;
}

enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus?
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusNullableFromJson(
  Object?
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus, [
  enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus?
  defaultValue,
]) {
  if (srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus ==
      null) {
    return null;
  }
  return enums
          .SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
          .values
          .firstWhereOrNull(
            (e) =>
                e.value ==
                srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus,
          ) ??
      defaultValue;
}

String
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusExplodedListToJson(
  List<
    enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
  >?
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus,
) {
  return srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
          ?.map((e) => e.value!)
          .join(',') ??
      '';
}

List<String>
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusListToJson(
  List<
    enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
  >?
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus,
) {
  if (srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus ==
      null) {
    return [];
  }

  return srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
      .map((e) => e.value!)
      .toList();
}

List<
  enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
>
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusListFromJson(
  List?
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus, [
  List<
    enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
  >?
  defaultValue,
]) {
  if (srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus ==
      null) {
    return defaultValue ?? [];
  }

  return srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
      .map(
        (e) =>
            srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusFromJson(
              e.toString(),
            ),
      )
      .toList();
}

List<
  enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
>?
srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusNullableListFromJson(
  List?
  srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus, [
  List<
    enums.SrcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
  >?
  defaultValue,
]) {
  if (srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus ==
      null) {
    return defaultValue;
  }

  return srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatus
      .map(
        (e) =>
            srcContextualRagModelsDatastoresDatastoreDocumentDtoDocumentMetadataDtoStatusFromJson(
              e.toString(),
            ),
      )
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
