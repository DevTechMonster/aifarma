// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Message {

 String get id; String get content; MessageType get type; DateTime get timestamp; bool get isStreaming; String? get conversationId; String? get serverMessageId;
/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageCopyWith<Message> get copyWith => _$MessageCopyWithImpl<Message>(this as Message, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Message&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isStreaming, isStreaming) || other.isStreaming == isStreaming)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.serverMessageId, serverMessageId) || other.serverMessageId == serverMessageId));
}


@override
int get hashCode => Object.hash(runtimeType,id,content,type,timestamp,isStreaming,conversationId,serverMessageId);

@override
String toString() {
  return 'Message(id: $id, content: $content, type: $type, timestamp: $timestamp, isStreaming: $isStreaming, conversationId: $conversationId, serverMessageId: $serverMessageId)';
}


}

/// @nodoc
abstract mixin class $MessageCopyWith<$Res>  {
  factory $MessageCopyWith(Message value, $Res Function(Message) _then) = _$MessageCopyWithImpl;
@useResult
$Res call({
 String id, String content, MessageType type, DateTime timestamp, bool isStreaming, String? conversationId, String? serverMessageId
});




}
/// @nodoc
class _$MessageCopyWithImpl<$Res>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._self, this._then);

  final Message _self;
  final $Res Function(Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? content = null,Object? type = null,Object? timestamp = null,Object? isStreaming = null,Object? conversationId = freezed,Object? serverMessageId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isStreaming: null == isStreaming ? _self.isStreaming : isStreaming // ignore: cast_nullable_to_non_nullable
as bool,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,serverMessageId: freezed == serverMessageId ? _self.serverMessageId : serverMessageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Message].
extension MessagePatterns on Message {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Message value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Message value)  $default,){
final _that = this;
switch (_that) {
case _Message():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Message value)?  $default,){
final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String content,  MessageType type,  DateTime timestamp,  bool isStreaming,  String? conversationId,  String? serverMessageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.content,_that.type,_that.timestamp,_that.isStreaming,_that.conversationId,_that.serverMessageId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String content,  MessageType type,  DateTime timestamp,  bool isStreaming,  String? conversationId,  String? serverMessageId)  $default,) {final _that = this;
switch (_that) {
case _Message():
return $default(_that.id,_that.content,_that.type,_that.timestamp,_that.isStreaming,_that.conversationId,_that.serverMessageId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String content,  MessageType type,  DateTime timestamp,  bool isStreaming,  String? conversationId,  String? serverMessageId)?  $default,) {final _that = this;
switch (_that) {
case _Message() when $default != null:
return $default(_that.id,_that.content,_that.type,_that.timestamp,_that.isStreaming,_that.conversationId,_that.serverMessageId);case _:
  return null;

}
}

}

/// @nodoc


class _Message implements Message {
  const _Message({required this.id, required this.content, required this.type, required this.timestamp, this.isStreaming = false, this.conversationId, this.serverMessageId});
  

@override final  String id;
@override final  String content;
@override final  MessageType type;
@override final  DateTime timestamp;
@override@JsonKey() final  bool isStreaming;
@override final  String? conversationId;
@override final  String? serverMessageId;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageCopyWith<_Message> get copyWith => __$MessageCopyWithImpl<_Message>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Message&&(identical(other.id, id) || other.id == id)&&(identical(other.content, content) || other.content == content)&&(identical(other.type, type) || other.type == type)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.isStreaming, isStreaming) || other.isStreaming == isStreaming)&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.serverMessageId, serverMessageId) || other.serverMessageId == serverMessageId));
}


@override
int get hashCode => Object.hash(runtimeType,id,content,type,timestamp,isStreaming,conversationId,serverMessageId);

@override
String toString() {
  return 'Message(id: $id, content: $content, type: $type, timestamp: $timestamp, isStreaming: $isStreaming, conversationId: $conversationId, serverMessageId: $serverMessageId)';
}


}

/// @nodoc
abstract mixin class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) _then) = __$MessageCopyWithImpl;
@override @useResult
$Res call({
 String id, String content, MessageType type, DateTime timestamp, bool isStreaming, String? conversationId, String? serverMessageId
});




}
/// @nodoc
class __$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(this._self, this._then);

  final _Message _self;
  final $Res Function(_Message) _then;

/// Create a copy of Message
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? content = null,Object? type = null,Object? timestamp = null,Object? isStreaming = null,Object? conversationId = freezed,Object? serverMessageId = freezed,}) {
  return _then(_Message(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,timestamp: null == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime,isStreaming: null == isStreaming ? _self.isStreaming : isStreaming // ignore: cast_nullable_to_non_nullable
as bool,conversationId: freezed == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String?,serverMessageId: freezed == serverMessageId ? _self.serverMessageId : serverMessageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StreamMetadata {

@JsonKey(name: 'conversation_id') String get conversationId;@JsonKey(name: 'request_id') String get requestId;@JsonKey(name: 'message_id') String get messageId;
/// Create a copy of StreamMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamMetadataCopyWith<StreamMetadata> get copyWith => _$StreamMetadataCopyWithImpl<StreamMetadata>(this as StreamMetadata, _$identity);

  /// Serializes this StreamMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamMetadata&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversationId,requestId,messageId);

@override
String toString() {
  return 'StreamMetadata(conversationId: $conversationId, requestId: $requestId, messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $StreamMetadataCopyWith<$Res>  {
  factory $StreamMetadataCopyWith(StreamMetadata value, $Res Function(StreamMetadata) _then) = _$StreamMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'request_id') String requestId,@JsonKey(name: 'message_id') String messageId
});




}
/// @nodoc
class _$StreamMetadataCopyWithImpl<$Res>
    implements $StreamMetadataCopyWith<$Res> {
  _$StreamMetadataCopyWithImpl(this._self, this._then);

  final StreamMetadata _self;
  final $Res Function(StreamMetadata) _then;

/// Create a copy of StreamMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversationId = null,Object? requestId = null,Object? messageId = null,}) {
  return _then(_self.copyWith(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StreamMetadata].
extension StreamMetadataPatterns on StreamMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamMetadata value)  $default,){
final _that = this;
switch (_that) {
case _StreamMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _StreamMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'request_id')  String requestId, @JsonKey(name: 'message_id')  String messageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamMetadata() when $default != null:
return $default(_that.conversationId,_that.requestId,_that.messageId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'request_id')  String requestId, @JsonKey(name: 'message_id')  String messageId)  $default,) {final _that = this;
switch (_that) {
case _StreamMetadata():
return $default(_that.conversationId,_that.requestId,_that.messageId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'conversation_id')  String conversationId, @JsonKey(name: 'request_id')  String requestId, @JsonKey(name: 'message_id')  String messageId)?  $default,) {final _that = this;
switch (_that) {
case _StreamMetadata() when $default != null:
return $default(_that.conversationId,_that.requestId,_that.messageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamMetadata implements StreamMetadata {
  const _StreamMetadata({@JsonKey(name: 'conversation_id') required this.conversationId, @JsonKey(name: 'request_id') required this.requestId, @JsonKey(name: 'message_id') required this.messageId});
  factory _StreamMetadata.fromJson(Map<String, dynamic> json) => _$StreamMetadataFromJson(json);

@override@JsonKey(name: 'conversation_id') final  String conversationId;
@override@JsonKey(name: 'request_id') final  String requestId;
@override@JsonKey(name: 'message_id') final  String messageId;

/// Create a copy of StreamMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamMetadataCopyWith<_StreamMetadata> get copyWith => __$StreamMetadataCopyWithImpl<_StreamMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamMetadata&&(identical(other.conversationId, conversationId) || other.conversationId == conversationId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversationId,requestId,messageId);

@override
String toString() {
  return 'StreamMetadata(conversationId: $conversationId, requestId: $requestId, messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class _$StreamMetadataCopyWith<$Res> implements $StreamMetadataCopyWith<$Res> {
  factory _$StreamMetadataCopyWith(_StreamMetadata value, $Res Function(_StreamMetadata) _then) = __$StreamMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'conversation_id') String conversationId,@JsonKey(name: 'request_id') String requestId,@JsonKey(name: 'message_id') String messageId
});




}
/// @nodoc
class __$StreamMetadataCopyWithImpl<$Res>
    implements _$StreamMetadataCopyWith<$Res> {
  __$StreamMetadataCopyWithImpl(this._self, this._then);

  final _StreamMetadata _self;
  final $Res Function(_StreamMetadata) _then;

/// Create a copy of StreamMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversationId = null,Object? requestId = null,Object? messageId = null,}) {
  return _then(_StreamMetadata(
conversationId: null == conversationId ? _self.conversationId : conversationId // ignore: cast_nullable_to_non_nullable
as String,requestId: null == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String,messageId: null == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RetrievalContent {

@JsonKey(name: 'custom_metadata') dynamic get customMetadata;@JsonKey(name: 'custom_metadata_config') dynamic get customMetadataConfig; int get number; String get type; String get format;@JsonKey(name: 'content_id') String get contentId;@JsonKey(name: 'datastore_id') String get datastoreId;@JsonKey(name: 'doc_id') String get docId;@JsonKey(name: 'doc_name') String get docName; int get page;@JsonKey(name: 'content_text') String? get contentText; String? get url;@JsonKey(name: 'ctxl_metadata') CtxlMetadata get ctxlMetadata; double get score;
/// Create a copy of RetrievalContent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RetrievalContentCopyWith<RetrievalContent> get copyWith => _$RetrievalContentCopyWithImpl<RetrievalContent>(this as RetrievalContent, _$identity);

  /// Serializes this RetrievalContent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RetrievalContent&&const DeepCollectionEquality().equals(other.customMetadata, customMetadata)&&const DeepCollectionEquality().equals(other.customMetadataConfig, customMetadataConfig)&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.datastoreId, datastoreId) || other.datastoreId == datastoreId)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.page, page) || other.page == page)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&(identical(other.url, url) || other.url == url)&&(identical(other.ctxlMetadata, ctxlMetadata) || other.ctxlMetadata == ctxlMetadata)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(customMetadata),const DeepCollectionEquality().hash(customMetadataConfig),number,type,format,contentId,datastoreId,docId,docName,page,contentText,url,ctxlMetadata,score);

@override
String toString() {
  return 'RetrievalContent(customMetadata: $customMetadata, customMetadataConfig: $customMetadataConfig, number: $number, type: $type, format: $format, contentId: $contentId, datastoreId: $datastoreId, docId: $docId, docName: $docName, page: $page, contentText: $contentText, url: $url, ctxlMetadata: $ctxlMetadata, score: $score)';
}


}

/// @nodoc
abstract mixin class $RetrievalContentCopyWith<$Res>  {
  factory $RetrievalContentCopyWith(RetrievalContent value, $Res Function(RetrievalContent) _then) = _$RetrievalContentCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'custom_metadata') dynamic customMetadata,@JsonKey(name: 'custom_metadata_config') dynamic customMetadataConfig, int number, String type, String format,@JsonKey(name: 'content_id') String contentId,@JsonKey(name: 'datastore_id') String datastoreId,@JsonKey(name: 'doc_id') String docId,@JsonKey(name: 'doc_name') String docName, int page,@JsonKey(name: 'content_text') String? contentText, String? url,@JsonKey(name: 'ctxl_metadata') CtxlMetadata ctxlMetadata, double score
});


$CtxlMetadataCopyWith<$Res> get ctxlMetadata;

}
/// @nodoc
class _$RetrievalContentCopyWithImpl<$Res>
    implements $RetrievalContentCopyWith<$Res> {
  _$RetrievalContentCopyWithImpl(this._self, this._then);

  final RetrievalContent _self;
  final $Res Function(RetrievalContent) _then;

/// Create a copy of RetrievalContent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customMetadata = freezed,Object? customMetadataConfig = freezed,Object? number = null,Object? type = null,Object? format = null,Object? contentId = null,Object? datastoreId = null,Object? docId = null,Object? docName = null,Object? page = null,Object? contentText = freezed,Object? url = freezed,Object? ctxlMetadata = null,Object? score = null,}) {
  return _then(_self.copyWith(
customMetadata: freezed == customMetadata ? _self.customMetadata : customMetadata // ignore: cast_nullable_to_non_nullable
as dynamic,customMetadataConfig: freezed == customMetadataConfig ? _self.customMetadataConfig : customMetadataConfig // ignore: cast_nullable_to_non_nullable
as dynamic,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String,datastoreId: null == datastoreId ? _self.datastoreId : datastoreId // ignore: cast_nullable_to_non_nullable
as String,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as String,docName: null == docName ? _self.docName : docName // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,ctxlMetadata: null == ctxlMetadata ? _self.ctxlMetadata : ctxlMetadata // ignore: cast_nullable_to_non_nullable
as CtxlMetadata,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,
  ));
}
/// Create a copy of RetrievalContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CtxlMetadataCopyWith<$Res> get ctxlMetadata {
  
  return $CtxlMetadataCopyWith<$Res>(_self.ctxlMetadata, (value) {
    return _then(_self.copyWith(ctxlMetadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [RetrievalContent].
extension RetrievalContentPatterns on RetrievalContent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RetrievalContent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RetrievalContent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RetrievalContent value)  $default,){
final _that = this;
switch (_that) {
case _RetrievalContent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RetrievalContent value)?  $default,){
final _that = this;
switch (_that) {
case _RetrievalContent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'custom_metadata')  dynamic customMetadata, @JsonKey(name: 'custom_metadata_config')  dynamic customMetadataConfig,  int number,  String type,  String format, @JsonKey(name: 'content_id')  String contentId, @JsonKey(name: 'datastore_id')  String datastoreId, @JsonKey(name: 'doc_id')  String docId, @JsonKey(name: 'doc_name')  String docName,  int page, @JsonKey(name: 'content_text')  String? contentText,  String? url, @JsonKey(name: 'ctxl_metadata')  CtxlMetadata ctxlMetadata,  double score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RetrievalContent() when $default != null:
return $default(_that.customMetadata,_that.customMetadataConfig,_that.number,_that.type,_that.format,_that.contentId,_that.datastoreId,_that.docId,_that.docName,_that.page,_that.contentText,_that.url,_that.ctxlMetadata,_that.score);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'custom_metadata')  dynamic customMetadata, @JsonKey(name: 'custom_metadata_config')  dynamic customMetadataConfig,  int number,  String type,  String format, @JsonKey(name: 'content_id')  String contentId, @JsonKey(name: 'datastore_id')  String datastoreId, @JsonKey(name: 'doc_id')  String docId, @JsonKey(name: 'doc_name')  String docName,  int page, @JsonKey(name: 'content_text')  String? contentText,  String? url, @JsonKey(name: 'ctxl_metadata')  CtxlMetadata ctxlMetadata,  double score)  $default,) {final _that = this;
switch (_that) {
case _RetrievalContent():
return $default(_that.customMetadata,_that.customMetadataConfig,_that.number,_that.type,_that.format,_that.contentId,_that.datastoreId,_that.docId,_that.docName,_that.page,_that.contentText,_that.url,_that.ctxlMetadata,_that.score);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'custom_metadata')  dynamic customMetadata, @JsonKey(name: 'custom_metadata_config')  dynamic customMetadataConfig,  int number,  String type,  String format, @JsonKey(name: 'content_id')  String contentId, @JsonKey(name: 'datastore_id')  String datastoreId, @JsonKey(name: 'doc_id')  String docId, @JsonKey(name: 'doc_name')  String docName,  int page, @JsonKey(name: 'content_text')  String? contentText,  String? url, @JsonKey(name: 'ctxl_metadata')  CtxlMetadata ctxlMetadata,  double score)?  $default,) {final _that = this;
switch (_that) {
case _RetrievalContent() when $default != null:
return $default(_that.customMetadata,_that.customMetadataConfig,_that.number,_that.type,_that.format,_that.contentId,_that.datastoreId,_that.docId,_that.docName,_that.page,_that.contentText,_that.url,_that.ctxlMetadata,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RetrievalContent implements RetrievalContent {
  const _RetrievalContent({@JsonKey(name: 'custom_metadata') this.customMetadata, @JsonKey(name: 'custom_metadata_config') this.customMetadataConfig, required this.number, required this.type, required this.format, @JsonKey(name: 'content_id') required this.contentId, @JsonKey(name: 'datastore_id') required this.datastoreId, @JsonKey(name: 'doc_id') required this.docId, @JsonKey(name: 'doc_name') required this.docName, required this.page, @JsonKey(name: 'content_text') this.contentText, this.url, @JsonKey(name: 'ctxl_metadata') required this.ctxlMetadata, required this.score});
  factory _RetrievalContent.fromJson(Map<String, dynamic> json) => _$RetrievalContentFromJson(json);

@override@JsonKey(name: 'custom_metadata') final  dynamic customMetadata;
@override@JsonKey(name: 'custom_metadata_config') final  dynamic customMetadataConfig;
@override final  int number;
@override final  String type;
@override final  String format;
@override@JsonKey(name: 'content_id') final  String contentId;
@override@JsonKey(name: 'datastore_id') final  String datastoreId;
@override@JsonKey(name: 'doc_id') final  String docId;
@override@JsonKey(name: 'doc_name') final  String docName;
@override final  int page;
@override@JsonKey(name: 'content_text') final  String? contentText;
@override final  String? url;
@override@JsonKey(name: 'ctxl_metadata') final  CtxlMetadata ctxlMetadata;
@override final  double score;

/// Create a copy of RetrievalContent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RetrievalContentCopyWith<_RetrievalContent> get copyWith => __$RetrievalContentCopyWithImpl<_RetrievalContent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RetrievalContentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RetrievalContent&&const DeepCollectionEquality().equals(other.customMetadata, customMetadata)&&const DeepCollectionEquality().equals(other.customMetadataConfig, customMetadataConfig)&&(identical(other.number, number) || other.number == number)&&(identical(other.type, type) || other.type == type)&&(identical(other.format, format) || other.format == format)&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.datastoreId, datastoreId) || other.datastoreId == datastoreId)&&(identical(other.docId, docId) || other.docId == docId)&&(identical(other.docName, docName) || other.docName == docName)&&(identical(other.page, page) || other.page == page)&&(identical(other.contentText, contentText) || other.contentText == contentText)&&(identical(other.url, url) || other.url == url)&&(identical(other.ctxlMetadata, ctxlMetadata) || other.ctxlMetadata == ctxlMetadata)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(customMetadata),const DeepCollectionEquality().hash(customMetadataConfig),number,type,format,contentId,datastoreId,docId,docName,page,contentText,url,ctxlMetadata,score);

@override
String toString() {
  return 'RetrievalContent(customMetadata: $customMetadata, customMetadataConfig: $customMetadataConfig, number: $number, type: $type, format: $format, contentId: $contentId, datastoreId: $datastoreId, docId: $docId, docName: $docName, page: $page, contentText: $contentText, url: $url, ctxlMetadata: $ctxlMetadata, score: $score)';
}


}

/// @nodoc
abstract mixin class _$RetrievalContentCopyWith<$Res> implements $RetrievalContentCopyWith<$Res> {
  factory _$RetrievalContentCopyWith(_RetrievalContent value, $Res Function(_RetrievalContent) _then) = __$RetrievalContentCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'custom_metadata') dynamic customMetadata,@JsonKey(name: 'custom_metadata_config') dynamic customMetadataConfig, int number, String type, String format,@JsonKey(name: 'content_id') String contentId,@JsonKey(name: 'datastore_id') String datastoreId,@JsonKey(name: 'doc_id') String docId,@JsonKey(name: 'doc_name') String docName, int page,@JsonKey(name: 'content_text') String? contentText, String? url,@JsonKey(name: 'ctxl_metadata') CtxlMetadata ctxlMetadata, double score
});


@override $CtxlMetadataCopyWith<$Res> get ctxlMetadata;

}
/// @nodoc
class __$RetrievalContentCopyWithImpl<$Res>
    implements _$RetrievalContentCopyWith<$Res> {
  __$RetrievalContentCopyWithImpl(this._self, this._then);

  final _RetrievalContent _self;
  final $Res Function(_RetrievalContent) _then;

/// Create a copy of RetrievalContent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customMetadata = freezed,Object? customMetadataConfig = freezed,Object? number = null,Object? type = null,Object? format = null,Object? contentId = null,Object? datastoreId = null,Object? docId = null,Object? docName = null,Object? page = null,Object? contentText = freezed,Object? url = freezed,Object? ctxlMetadata = null,Object? score = null,}) {
  return _then(_RetrievalContent(
customMetadata: freezed == customMetadata ? _self.customMetadata : customMetadata // ignore: cast_nullable_to_non_nullable
as dynamic,customMetadataConfig: freezed == customMetadataConfig ? _self.customMetadataConfig : customMetadataConfig // ignore: cast_nullable_to_non_nullable
as dynamic,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,format: null == format ? _self.format : format // ignore: cast_nullable_to_non_nullable
as String,contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as String,datastoreId: null == datastoreId ? _self.datastoreId : datastoreId // ignore: cast_nullable_to_non_nullable
as String,docId: null == docId ? _self.docId : docId // ignore: cast_nullable_to_non_nullable
as String,docName: null == docName ? _self.docName : docName // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,contentText: freezed == contentText ? _self.contentText : contentText // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,ctxlMetadata: null == ctxlMetadata ? _self.ctxlMetadata : ctxlMetadata // ignore: cast_nullable_to_non_nullable
as CtxlMetadata,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

/// Create a copy of RetrievalContent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CtxlMetadataCopyWith<$Res> get ctxlMetadata {
  
  return $CtxlMetadataCopyWith<$Res>(_self.ctxlMetadata, (value) {
    return _then(_self.copyWith(ctxlMetadata: value));
  });
}
}


/// @nodoc
mixin _$CtxlMetadata {

@JsonKey(name: 'document_title') String get documentTitle;@JsonKey(name: 'section_title') String get sectionTitle;@JsonKey(name: 'is_figure') bool get isFigure;@JsonKey(name: 'file_name') String get fileName;@JsonKey(name: 'chunk_size') int get chunkSize;@JsonKey(name: 'file_format') String get fileFormat; int get page;@JsonKey(name: 'chunk_id') String get chunkId;@JsonKey(name: 'date_created') String get dateCreated;@JsonKey(name: 'section_id') String? get sectionId;
/// Create a copy of CtxlMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CtxlMetadataCopyWith<CtxlMetadata> get copyWith => _$CtxlMetadataCopyWithImpl<CtxlMetadata>(this as CtxlMetadata, _$identity);

  /// Serializes this CtxlMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CtxlMetadata&&(identical(other.documentTitle, documentTitle) || other.documentTitle == documentTitle)&&(identical(other.sectionTitle, sectionTitle) || other.sectionTitle == sectionTitle)&&(identical(other.isFigure, isFigure) || other.isFigure == isFigure)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.chunkSize, chunkSize) || other.chunkSize == chunkSize)&&(identical(other.fileFormat, fileFormat) || other.fileFormat == fileFormat)&&(identical(other.page, page) || other.page == page)&&(identical(other.chunkId, chunkId) || other.chunkId == chunkId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,documentTitle,sectionTitle,isFigure,fileName,chunkSize,fileFormat,page,chunkId,dateCreated,sectionId);

@override
String toString() {
  return 'CtxlMetadata(documentTitle: $documentTitle, sectionTitle: $sectionTitle, isFigure: $isFigure, fileName: $fileName, chunkSize: $chunkSize, fileFormat: $fileFormat, page: $page, chunkId: $chunkId, dateCreated: $dateCreated, sectionId: $sectionId)';
}


}

/// @nodoc
abstract mixin class $CtxlMetadataCopyWith<$Res>  {
  factory $CtxlMetadataCopyWith(CtxlMetadata value, $Res Function(CtxlMetadata) _then) = _$CtxlMetadataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'document_title') String documentTitle,@JsonKey(name: 'section_title') String sectionTitle,@JsonKey(name: 'is_figure') bool isFigure,@JsonKey(name: 'file_name') String fileName,@JsonKey(name: 'chunk_size') int chunkSize,@JsonKey(name: 'file_format') String fileFormat, int page,@JsonKey(name: 'chunk_id') String chunkId,@JsonKey(name: 'date_created') String dateCreated,@JsonKey(name: 'section_id') String? sectionId
});




}
/// @nodoc
class _$CtxlMetadataCopyWithImpl<$Res>
    implements $CtxlMetadataCopyWith<$Res> {
  _$CtxlMetadataCopyWithImpl(this._self, this._then);

  final CtxlMetadata _self;
  final $Res Function(CtxlMetadata) _then;

/// Create a copy of CtxlMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? documentTitle = null,Object? sectionTitle = null,Object? isFigure = null,Object? fileName = null,Object? chunkSize = null,Object? fileFormat = null,Object? page = null,Object? chunkId = null,Object? dateCreated = null,Object? sectionId = freezed,}) {
  return _then(_self.copyWith(
documentTitle: null == documentTitle ? _self.documentTitle : documentTitle // ignore: cast_nullable_to_non_nullable
as String,sectionTitle: null == sectionTitle ? _self.sectionTitle : sectionTitle // ignore: cast_nullable_to_non_nullable
as String,isFigure: null == isFigure ? _self.isFigure : isFigure // ignore: cast_nullable_to_non_nullable
as bool,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,chunkSize: null == chunkSize ? _self.chunkSize : chunkSize // ignore: cast_nullable_to_non_nullable
as int,fileFormat: null == fileFormat ? _self.fileFormat : fileFormat // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,chunkId: null == chunkId ? _self.chunkId : chunkId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CtxlMetadata].
extension CtxlMetadataPatterns on CtxlMetadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CtxlMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CtxlMetadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CtxlMetadata value)  $default,){
final _that = this;
switch (_that) {
case _CtxlMetadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CtxlMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _CtxlMetadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_title')  String documentTitle, @JsonKey(name: 'section_title')  String sectionTitle, @JsonKey(name: 'is_figure')  bool isFigure, @JsonKey(name: 'file_name')  String fileName, @JsonKey(name: 'chunk_size')  int chunkSize, @JsonKey(name: 'file_format')  String fileFormat,  int page, @JsonKey(name: 'chunk_id')  String chunkId, @JsonKey(name: 'date_created')  String dateCreated, @JsonKey(name: 'section_id')  String? sectionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CtxlMetadata() when $default != null:
return $default(_that.documentTitle,_that.sectionTitle,_that.isFigure,_that.fileName,_that.chunkSize,_that.fileFormat,_that.page,_that.chunkId,_that.dateCreated,_that.sectionId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'document_title')  String documentTitle, @JsonKey(name: 'section_title')  String sectionTitle, @JsonKey(name: 'is_figure')  bool isFigure, @JsonKey(name: 'file_name')  String fileName, @JsonKey(name: 'chunk_size')  int chunkSize, @JsonKey(name: 'file_format')  String fileFormat,  int page, @JsonKey(name: 'chunk_id')  String chunkId, @JsonKey(name: 'date_created')  String dateCreated, @JsonKey(name: 'section_id')  String? sectionId)  $default,) {final _that = this;
switch (_that) {
case _CtxlMetadata():
return $default(_that.documentTitle,_that.sectionTitle,_that.isFigure,_that.fileName,_that.chunkSize,_that.fileFormat,_that.page,_that.chunkId,_that.dateCreated,_that.sectionId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'document_title')  String documentTitle, @JsonKey(name: 'section_title')  String sectionTitle, @JsonKey(name: 'is_figure')  bool isFigure, @JsonKey(name: 'file_name')  String fileName, @JsonKey(name: 'chunk_size')  int chunkSize, @JsonKey(name: 'file_format')  String fileFormat,  int page, @JsonKey(name: 'chunk_id')  String chunkId, @JsonKey(name: 'date_created')  String dateCreated, @JsonKey(name: 'section_id')  String? sectionId)?  $default,) {final _that = this;
switch (_that) {
case _CtxlMetadata() when $default != null:
return $default(_that.documentTitle,_that.sectionTitle,_that.isFigure,_that.fileName,_that.chunkSize,_that.fileFormat,_that.page,_that.chunkId,_that.dateCreated,_that.sectionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CtxlMetadata implements CtxlMetadata {
  const _CtxlMetadata({@JsonKey(name: 'document_title') required this.documentTitle, @JsonKey(name: 'section_title') required this.sectionTitle, @JsonKey(name: 'is_figure') required this.isFigure, @JsonKey(name: 'file_name') required this.fileName, @JsonKey(name: 'chunk_size') required this.chunkSize, @JsonKey(name: 'file_format') required this.fileFormat, required this.page, @JsonKey(name: 'chunk_id') required this.chunkId, @JsonKey(name: 'date_created') required this.dateCreated, @JsonKey(name: 'section_id') this.sectionId});
  factory _CtxlMetadata.fromJson(Map<String, dynamic> json) => _$CtxlMetadataFromJson(json);

@override@JsonKey(name: 'document_title') final  String documentTitle;
@override@JsonKey(name: 'section_title') final  String sectionTitle;
@override@JsonKey(name: 'is_figure') final  bool isFigure;
@override@JsonKey(name: 'file_name') final  String fileName;
@override@JsonKey(name: 'chunk_size') final  int chunkSize;
@override@JsonKey(name: 'file_format') final  String fileFormat;
@override final  int page;
@override@JsonKey(name: 'chunk_id') final  String chunkId;
@override@JsonKey(name: 'date_created') final  String dateCreated;
@override@JsonKey(name: 'section_id') final  String? sectionId;

/// Create a copy of CtxlMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CtxlMetadataCopyWith<_CtxlMetadata> get copyWith => __$CtxlMetadataCopyWithImpl<_CtxlMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CtxlMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CtxlMetadata&&(identical(other.documentTitle, documentTitle) || other.documentTitle == documentTitle)&&(identical(other.sectionTitle, sectionTitle) || other.sectionTitle == sectionTitle)&&(identical(other.isFigure, isFigure) || other.isFigure == isFigure)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.chunkSize, chunkSize) || other.chunkSize == chunkSize)&&(identical(other.fileFormat, fileFormat) || other.fileFormat == fileFormat)&&(identical(other.page, page) || other.page == page)&&(identical(other.chunkId, chunkId) || other.chunkId == chunkId)&&(identical(other.dateCreated, dateCreated) || other.dateCreated == dateCreated)&&(identical(other.sectionId, sectionId) || other.sectionId == sectionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,documentTitle,sectionTitle,isFigure,fileName,chunkSize,fileFormat,page,chunkId,dateCreated,sectionId);

@override
String toString() {
  return 'CtxlMetadata(documentTitle: $documentTitle, sectionTitle: $sectionTitle, isFigure: $isFigure, fileName: $fileName, chunkSize: $chunkSize, fileFormat: $fileFormat, page: $page, chunkId: $chunkId, dateCreated: $dateCreated, sectionId: $sectionId)';
}


}

/// @nodoc
abstract mixin class _$CtxlMetadataCopyWith<$Res> implements $CtxlMetadataCopyWith<$Res> {
  factory _$CtxlMetadataCopyWith(_CtxlMetadata value, $Res Function(_CtxlMetadata) _then) = __$CtxlMetadataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'document_title') String documentTitle,@JsonKey(name: 'section_title') String sectionTitle,@JsonKey(name: 'is_figure') bool isFigure,@JsonKey(name: 'file_name') String fileName,@JsonKey(name: 'chunk_size') int chunkSize,@JsonKey(name: 'file_format') String fileFormat, int page,@JsonKey(name: 'chunk_id') String chunkId,@JsonKey(name: 'date_created') String dateCreated,@JsonKey(name: 'section_id') String? sectionId
});




}
/// @nodoc
class __$CtxlMetadataCopyWithImpl<$Res>
    implements _$CtxlMetadataCopyWith<$Res> {
  __$CtxlMetadataCopyWithImpl(this._self, this._then);

  final _CtxlMetadata _self;
  final $Res Function(_CtxlMetadata) _then;

/// Create a copy of CtxlMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? documentTitle = null,Object? sectionTitle = null,Object? isFigure = null,Object? fileName = null,Object? chunkSize = null,Object? fileFormat = null,Object? page = null,Object? chunkId = null,Object? dateCreated = null,Object? sectionId = freezed,}) {
  return _then(_CtxlMetadata(
documentTitle: null == documentTitle ? _self.documentTitle : documentTitle // ignore: cast_nullable_to_non_nullable
as String,sectionTitle: null == sectionTitle ? _self.sectionTitle : sectionTitle // ignore: cast_nullable_to_non_nullable
as String,isFigure: null == isFigure ? _self.isFigure : isFigure // ignore: cast_nullable_to_non_nullable
as bool,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,chunkSize: null == chunkSize ? _self.chunkSize : chunkSize // ignore: cast_nullable_to_non_nullable
as int,fileFormat: null == fileFormat ? _self.fileFormat : fileFormat // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,chunkId: null == chunkId ? _self.chunkId : chunkId // ignore: cast_nullable_to_non_nullable
as String,dateCreated: null == dateCreated ? _self.dateCreated : dateCreated // ignore: cast_nullable_to_non_nullable
as String,sectionId: freezed == sectionId ? _self.sectionId : sectionId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$StreamRetrievals {

 List<RetrievalContent> get contents;
/// Create a copy of StreamRetrievals
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamRetrievalsCopyWith<StreamRetrievals> get copyWith => _$StreamRetrievalsCopyWithImpl<StreamRetrievals>(this as StreamRetrievals, _$identity);

  /// Serializes this StreamRetrievals to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamRetrievals&&const DeepCollectionEquality().equals(other.contents, contents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(contents));

@override
String toString() {
  return 'StreamRetrievals(contents: $contents)';
}


}

/// @nodoc
abstract mixin class $StreamRetrievalsCopyWith<$Res>  {
  factory $StreamRetrievalsCopyWith(StreamRetrievals value, $Res Function(StreamRetrievals) _then) = _$StreamRetrievalsCopyWithImpl;
@useResult
$Res call({
 List<RetrievalContent> contents
});




}
/// @nodoc
class _$StreamRetrievalsCopyWithImpl<$Res>
    implements $StreamRetrievalsCopyWith<$Res> {
  _$StreamRetrievalsCopyWithImpl(this._self, this._then);

  final StreamRetrievals _self;
  final $Res Function(StreamRetrievals) _then;

/// Create a copy of StreamRetrievals
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contents = null,}) {
  return _then(_self.copyWith(
contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as List<RetrievalContent>,
  ));
}

}


/// Adds pattern-matching-related methods to [StreamRetrievals].
extension StreamRetrievalsPatterns on StreamRetrievals {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamRetrievals value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamRetrievals() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamRetrievals value)  $default,){
final _that = this;
switch (_that) {
case _StreamRetrievals():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamRetrievals value)?  $default,){
final _that = this;
switch (_that) {
case _StreamRetrievals() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RetrievalContent> contents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamRetrievals() when $default != null:
return $default(_that.contents);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RetrievalContent> contents)  $default,) {final _that = this;
switch (_that) {
case _StreamRetrievals():
return $default(_that.contents);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RetrievalContent> contents)?  $default,) {final _that = this;
switch (_that) {
case _StreamRetrievals() when $default != null:
return $default(_that.contents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamRetrievals implements StreamRetrievals {
  const _StreamRetrievals({required final  List<RetrievalContent> contents}): _contents = contents;
  factory _StreamRetrievals.fromJson(Map<String, dynamic> json) => _$StreamRetrievalsFromJson(json);

 final  List<RetrievalContent> _contents;
@override List<RetrievalContent> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}


/// Create a copy of StreamRetrievals
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamRetrievalsCopyWith<_StreamRetrievals> get copyWith => __$StreamRetrievalsCopyWithImpl<_StreamRetrievals>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamRetrievalsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamRetrievals&&const DeepCollectionEquality().equals(other._contents, _contents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_contents));

@override
String toString() {
  return 'StreamRetrievals(contents: $contents)';
}


}

/// @nodoc
abstract mixin class _$StreamRetrievalsCopyWith<$Res> implements $StreamRetrievalsCopyWith<$Res> {
  factory _$StreamRetrievalsCopyWith(_StreamRetrievals value, $Res Function(_StreamRetrievals) _then) = __$StreamRetrievalsCopyWithImpl;
@override @useResult
$Res call({
 List<RetrievalContent> contents
});




}
/// @nodoc
class __$StreamRetrievalsCopyWithImpl<$Res>
    implements _$StreamRetrievalsCopyWith<$Res> {
  __$StreamRetrievalsCopyWithImpl(this._self, this._then);

  final _StreamRetrievals _self;
  final $Res Function(_StreamRetrievals) _then;

/// Create a copy of StreamRetrievals
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contents = null,}) {
  return _then(_StreamRetrievals(
contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<RetrievalContent>,
  ));
}


}


/// @nodoc
mixin _$Attribution {

@JsonKey(name: 'start_idx') int get startIdx;@JsonKey(name: 'end_idx') int get endIdx;@JsonKey(name: 'content_ids') List<String> get contentIds;
/// Create a copy of Attribution
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttributionCopyWith<Attribution> get copyWith => _$AttributionCopyWithImpl<Attribution>(this as Attribution, _$identity);

  /// Serializes this Attribution to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attribution&&(identical(other.startIdx, startIdx) || other.startIdx == startIdx)&&(identical(other.endIdx, endIdx) || other.endIdx == endIdx)&&const DeepCollectionEquality().equals(other.contentIds, contentIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startIdx,endIdx,const DeepCollectionEquality().hash(contentIds));

@override
String toString() {
  return 'Attribution(startIdx: $startIdx, endIdx: $endIdx, contentIds: $contentIds)';
}


}

/// @nodoc
abstract mixin class $AttributionCopyWith<$Res>  {
  factory $AttributionCopyWith(Attribution value, $Res Function(Attribution) _then) = _$AttributionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'start_idx') int startIdx,@JsonKey(name: 'end_idx') int endIdx,@JsonKey(name: 'content_ids') List<String> contentIds
});




}
/// @nodoc
class _$AttributionCopyWithImpl<$Res>
    implements $AttributionCopyWith<$Res> {
  _$AttributionCopyWithImpl(this._self, this._then);

  final Attribution _self;
  final $Res Function(Attribution) _then;

/// Create a copy of Attribution
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? startIdx = null,Object? endIdx = null,Object? contentIds = null,}) {
  return _then(_self.copyWith(
startIdx: null == startIdx ? _self.startIdx : startIdx // ignore: cast_nullable_to_non_nullable
as int,endIdx: null == endIdx ? _self.endIdx : endIdx // ignore: cast_nullable_to_non_nullable
as int,contentIds: null == contentIds ? _self.contentIds : contentIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Attribution].
extension AttributionPatterns on Attribution {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attribution value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attribution() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attribution value)  $default,){
final _that = this;
switch (_that) {
case _Attribution():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attribution value)?  $default,){
final _that = this;
switch (_that) {
case _Attribution() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'start_idx')  int startIdx, @JsonKey(name: 'end_idx')  int endIdx, @JsonKey(name: 'content_ids')  List<String> contentIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attribution() when $default != null:
return $default(_that.startIdx,_that.endIdx,_that.contentIds);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'start_idx')  int startIdx, @JsonKey(name: 'end_idx')  int endIdx, @JsonKey(name: 'content_ids')  List<String> contentIds)  $default,) {final _that = this;
switch (_that) {
case _Attribution():
return $default(_that.startIdx,_that.endIdx,_that.contentIds);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'start_idx')  int startIdx, @JsonKey(name: 'end_idx')  int endIdx, @JsonKey(name: 'content_ids')  List<String> contentIds)?  $default,) {final _that = this;
switch (_that) {
case _Attribution() when $default != null:
return $default(_that.startIdx,_that.endIdx,_that.contentIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Attribution implements Attribution {
  const _Attribution({@JsonKey(name: 'start_idx') required this.startIdx, @JsonKey(name: 'end_idx') required this.endIdx, @JsonKey(name: 'content_ids') required final  List<String> contentIds}): _contentIds = contentIds;
  factory _Attribution.fromJson(Map<String, dynamic> json) => _$AttributionFromJson(json);

@override@JsonKey(name: 'start_idx') final  int startIdx;
@override@JsonKey(name: 'end_idx') final  int endIdx;
 final  List<String> _contentIds;
@override@JsonKey(name: 'content_ids') List<String> get contentIds {
  if (_contentIds is EqualUnmodifiableListView) return _contentIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contentIds);
}


/// Create a copy of Attribution
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttributionCopyWith<_Attribution> get copyWith => __$AttributionCopyWithImpl<_Attribution>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttributionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attribution&&(identical(other.startIdx, startIdx) || other.startIdx == startIdx)&&(identical(other.endIdx, endIdx) || other.endIdx == endIdx)&&const DeepCollectionEquality().equals(other._contentIds, _contentIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,startIdx,endIdx,const DeepCollectionEquality().hash(_contentIds));

@override
String toString() {
  return 'Attribution(startIdx: $startIdx, endIdx: $endIdx, contentIds: $contentIds)';
}


}

/// @nodoc
abstract mixin class _$AttributionCopyWith<$Res> implements $AttributionCopyWith<$Res> {
  factory _$AttributionCopyWith(_Attribution value, $Res Function(_Attribution) _then) = __$AttributionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'start_idx') int startIdx,@JsonKey(name: 'end_idx') int endIdx,@JsonKey(name: 'content_ids') List<String> contentIds
});




}
/// @nodoc
class __$AttributionCopyWithImpl<$Res>
    implements _$AttributionCopyWith<$Res> {
  __$AttributionCopyWithImpl(this._self, this._then);

  final _Attribution _self;
  final $Res Function(_Attribution) _then;

/// Create a copy of Attribution
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? startIdx = null,Object? endIdx = null,Object? contentIds = null,}) {
  return _then(_Attribution(
startIdx: null == startIdx ? _self.startIdx : startIdx // ignore: cast_nullable_to_non_nullable
as int,endIdx: null == endIdx ? _self.endIdx : endIdx // ignore: cast_nullable_to_non_nullable
as int,contentIds: null == contentIds ? _self._contentIds : contentIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$StreamAttributions {

 List<Attribution> get attributions;
/// Create a copy of StreamAttributions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamAttributionsCopyWith<StreamAttributions> get copyWith => _$StreamAttributionsCopyWithImpl<StreamAttributions>(this as StreamAttributions, _$identity);

  /// Serializes this StreamAttributions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamAttributions&&const DeepCollectionEquality().equals(other.attributions, attributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(attributions));

@override
String toString() {
  return 'StreamAttributions(attributions: $attributions)';
}


}

/// @nodoc
abstract mixin class $StreamAttributionsCopyWith<$Res>  {
  factory $StreamAttributionsCopyWith(StreamAttributions value, $Res Function(StreamAttributions) _then) = _$StreamAttributionsCopyWithImpl;
@useResult
$Res call({
 List<Attribution> attributions
});




}
/// @nodoc
class _$StreamAttributionsCopyWithImpl<$Res>
    implements $StreamAttributionsCopyWith<$Res> {
  _$StreamAttributionsCopyWithImpl(this._self, this._then);

  final StreamAttributions _self;
  final $Res Function(StreamAttributions) _then;

/// Create a copy of StreamAttributions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attributions = null,}) {
  return _then(_self.copyWith(
attributions: null == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as List<Attribution>,
  ));
}

}


/// Adds pattern-matching-related methods to [StreamAttributions].
extension StreamAttributionsPatterns on StreamAttributions {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamAttributions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamAttributions() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamAttributions value)  $default,){
final _that = this;
switch (_that) {
case _StreamAttributions():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamAttributions value)?  $default,){
final _that = this;
switch (_that) {
case _StreamAttributions() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Attribution> attributions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamAttributions() when $default != null:
return $default(_that.attributions);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Attribution> attributions)  $default,) {final _that = this;
switch (_that) {
case _StreamAttributions():
return $default(_that.attributions);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Attribution> attributions)?  $default,) {final _that = this;
switch (_that) {
case _StreamAttributions() when $default != null:
return $default(_that.attributions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamAttributions implements StreamAttributions {
  const _StreamAttributions({required final  List<Attribution> attributions}): _attributions = attributions;
  factory _StreamAttributions.fromJson(Map<String, dynamic> json) => _$StreamAttributionsFromJson(json);

 final  List<Attribution> _attributions;
@override List<Attribution> get attributions {
  if (_attributions is EqualUnmodifiableListView) return _attributions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attributions);
}


/// Create a copy of StreamAttributions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamAttributionsCopyWith<_StreamAttributions> get copyWith => __$StreamAttributionsCopyWithImpl<_StreamAttributions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamAttributionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamAttributions&&const DeepCollectionEquality().equals(other._attributions, _attributions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_attributions));

@override
String toString() {
  return 'StreamAttributions(attributions: $attributions)';
}


}

/// @nodoc
abstract mixin class _$StreamAttributionsCopyWith<$Res> implements $StreamAttributionsCopyWith<$Res> {
  factory _$StreamAttributionsCopyWith(_StreamAttributions value, $Res Function(_StreamAttributions) _then) = __$StreamAttributionsCopyWithImpl;
@override @useResult
$Res call({
 List<Attribution> attributions
});




}
/// @nodoc
class __$StreamAttributionsCopyWithImpl<$Res>
    implements _$StreamAttributionsCopyWith<$Res> {
  __$StreamAttributionsCopyWithImpl(this._self, this._then);

  final _StreamAttributions _self;
  final $Res Function(_StreamAttributions) _then;

/// Create a copy of StreamAttributions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attributions = null,}) {
  return _then(_StreamAttributions(
attributions: null == attributions ? _self._attributions : attributions // ignore: cast_nullable_to_non_nullable
as List<Attribution>,
  ));
}


}


/// @nodoc
mixin _$StreamMessageComplete {

@JsonKey(name: 'final_message') String get finalMessage;
/// Create a copy of StreamMessageComplete
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamMessageCompleteCopyWith<StreamMessageComplete> get copyWith => _$StreamMessageCompleteCopyWithImpl<StreamMessageComplete>(this as StreamMessageComplete, _$identity);

  /// Serializes this StreamMessageComplete to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamMessageComplete&&(identical(other.finalMessage, finalMessage) || other.finalMessage == finalMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,finalMessage);

@override
String toString() {
  return 'StreamMessageComplete(finalMessage: $finalMessage)';
}


}

/// @nodoc
abstract mixin class $StreamMessageCompleteCopyWith<$Res>  {
  factory $StreamMessageCompleteCopyWith(StreamMessageComplete value, $Res Function(StreamMessageComplete) _then) = _$StreamMessageCompleteCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'final_message') String finalMessage
});




}
/// @nodoc
class _$StreamMessageCompleteCopyWithImpl<$Res>
    implements $StreamMessageCompleteCopyWith<$Res> {
  _$StreamMessageCompleteCopyWithImpl(this._self, this._then);

  final StreamMessageComplete _self;
  final $Res Function(StreamMessageComplete) _then;

/// Create a copy of StreamMessageComplete
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? finalMessage = null,}) {
  return _then(_self.copyWith(
finalMessage: null == finalMessage ? _self.finalMessage : finalMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StreamMessageComplete].
extension StreamMessageCompletePatterns on StreamMessageComplete {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamMessageComplete value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamMessageComplete() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamMessageComplete value)  $default,){
final _that = this;
switch (_that) {
case _StreamMessageComplete():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamMessageComplete value)?  $default,){
final _that = this;
switch (_that) {
case _StreamMessageComplete() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'final_message')  String finalMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamMessageComplete() when $default != null:
return $default(_that.finalMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'final_message')  String finalMessage)  $default,) {final _that = this;
switch (_that) {
case _StreamMessageComplete():
return $default(_that.finalMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'final_message')  String finalMessage)?  $default,) {final _that = this;
switch (_that) {
case _StreamMessageComplete() when $default != null:
return $default(_that.finalMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamMessageComplete implements StreamMessageComplete {
  const _StreamMessageComplete({@JsonKey(name: 'final_message') required this.finalMessage});
  factory _StreamMessageComplete.fromJson(Map<String, dynamic> json) => _$StreamMessageCompleteFromJson(json);

@override@JsonKey(name: 'final_message') final  String finalMessage;

/// Create a copy of StreamMessageComplete
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamMessageCompleteCopyWith<_StreamMessageComplete> get copyWith => __$StreamMessageCompleteCopyWithImpl<_StreamMessageComplete>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamMessageCompleteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamMessageComplete&&(identical(other.finalMessage, finalMessage) || other.finalMessage == finalMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,finalMessage);

@override
String toString() {
  return 'StreamMessageComplete(finalMessage: $finalMessage)';
}


}

/// @nodoc
abstract mixin class _$StreamMessageCompleteCopyWith<$Res> implements $StreamMessageCompleteCopyWith<$Res> {
  factory _$StreamMessageCompleteCopyWith(_StreamMessageComplete value, $Res Function(_StreamMessageComplete) _then) = __$StreamMessageCompleteCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'final_message') String finalMessage
});




}
/// @nodoc
class __$StreamMessageCompleteCopyWithImpl<$Res>
    implements _$StreamMessageCompleteCopyWith<$Res> {
  __$StreamMessageCompleteCopyWithImpl(this._self, this._then);

  final _StreamMessageComplete _self;
  final $Res Function(_StreamMessageComplete) _then;

/// Create a copy of StreamMessageComplete
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? finalMessage = null,}) {
  return _then(_StreamMessageComplete(
finalMessage: null == finalMessage ? _self.finalMessage : finalMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$StreamMessageDelta {

 String get delta;
/// Create a copy of StreamMessageDelta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamMessageDeltaCopyWith<StreamMessageDelta> get copyWith => _$StreamMessageDeltaCopyWithImpl<StreamMessageDelta>(this as StreamMessageDelta, _$identity);

  /// Serializes this StreamMessageDelta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamMessageDelta&&(identical(other.delta, delta) || other.delta == delta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,delta);

@override
String toString() {
  return 'StreamMessageDelta(delta: $delta)';
}


}

/// @nodoc
abstract mixin class $StreamMessageDeltaCopyWith<$Res>  {
  factory $StreamMessageDeltaCopyWith(StreamMessageDelta value, $Res Function(StreamMessageDelta) _then) = _$StreamMessageDeltaCopyWithImpl;
@useResult
$Res call({
 String delta
});




}
/// @nodoc
class _$StreamMessageDeltaCopyWithImpl<$Res>
    implements $StreamMessageDeltaCopyWith<$Res> {
  _$StreamMessageDeltaCopyWithImpl(this._self, this._then);

  final StreamMessageDelta _self;
  final $Res Function(StreamMessageDelta) _then;

/// Create a copy of StreamMessageDelta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? delta = null,}) {
  return _then(_self.copyWith(
delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StreamMessageDelta].
extension StreamMessageDeltaPatterns on StreamMessageDelta {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamMessageDelta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamMessageDelta() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamMessageDelta value)  $default,){
final _that = this;
switch (_that) {
case _StreamMessageDelta():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamMessageDelta value)?  $default,){
final _that = this;
switch (_that) {
case _StreamMessageDelta() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String delta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamMessageDelta() when $default != null:
return $default(_that.delta);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String delta)  $default,) {final _that = this;
switch (_that) {
case _StreamMessageDelta():
return $default(_that.delta);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String delta)?  $default,) {final _that = this;
switch (_that) {
case _StreamMessageDelta() when $default != null:
return $default(_that.delta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StreamMessageDelta implements StreamMessageDelta {
  const _StreamMessageDelta({required this.delta});
  factory _StreamMessageDelta.fromJson(Map<String, dynamic> json) => _$StreamMessageDeltaFromJson(json);

@override final  String delta;

/// Create a copy of StreamMessageDelta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamMessageDeltaCopyWith<_StreamMessageDelta> get copyWith => __$StreamMessageDeltaCopyWithImpl<_StreamMessageDelta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StreamMessageDeltaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamMessageDelta&&(identical(other.delta, delta) || other.delta == delta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,delta);

@override
String toString() {
  return 'StreamMessageDelta(delta: $delta)';
}


}

/// @nodoc
abstract mixin class _$StreamMessageDeltaCopyWith<$Res> implements $StreamMessageDeltaCopyWith<$Res> {
  factory _$StreamMessageDeltaCopyWith(_StreamMessageDelta value, $Res Function(_StreamMessageDelta) _then) = __$StreamMessageDeltaCopyWithImpl;
@override @useResult
$Res call({
 String delta
});




}
/// @nodoc
class __$StreamMessageDeltaCopyWithImpl<$Res>
    implements _$StreamMessageDeltaCopyWith<$Res> {
  __$StreamMessageDeltaCopyWithImpl(this._self, this._then);

  final _StreamMessageDelta _self;
  final $Res Function(_StreamMessageDelta) _then;

/// Create a copy of StreamMessageDelta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? delta = null,}) {
  return _then(_StreamMessageDelta(
delta: null == delta ? _self.delta : delta // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SseEvent {

 String get event; Map<String, dynamic> get data;
/// Create a copy of SseEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SseEventCopyWith<SseEvent> get copyWith => _$SseEventCopyWithImpl<SseEvent>(this as SseEvent, _$identity);

  /// Serializes this SseEvent to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SseEvent&&(identical(other.event, event) || other.event == event)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SseEvent(event: $event, data: $data)';
}


}

/// @nodoc
abstract mixin class $SseEventCopyWith<$Res>  {
  factory $SseEventCopyWith(SseEvent value, $Res Function(SseEvent) _then) = _$SseEventCopyWithImpl;
@useResult
$Res call({
 String event, Map<String, dynamic> data
});




}
/// @nodoc
class _$SseEventCopyWithImpl<$Res>
    implements $SseEventCopyWith<$Res> {
  _$SseEventCopyWithImpl(this._self, this._then);

  final SseEvent _self;
  final $Res Function(SseEvent) _then;

/// Create a copy of SseEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? event = null,Object? data = null,}) {
  return _then(_self.copyWith(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [SseEvent].
extension SseEventPatterns on SseEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SseEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SseEvent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SseEvent value)  $default,){
final _that = this;
switch (_that) {
case _SseEvent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SseEvent value)?  $default,){
final _that = this;
switch (_that) {
case _SseEvent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String event,  Map<String, dynamic> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SseEvent() when $default != null:
return $default(_that.event,_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String event,  Map<String, dynamic> data)  $default,) {final _that = this;
switch (_that) {
case _SseEvent():
return $default(_that.event,_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String event,  Map<String, dynamic> data)?  $default,) {final _that = this;
switch (_that) {
case _SseEvent() when $default != null:
return $default(_that.event,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SseEvent implements SseEvent {
  const _SseEvent({required this.event, required final  Map<String, dynamic> data}): _data = data;
  factory _SseEvent.fromJson(Map<String, dynamic> json) => _$SseEventFromJson(json);

@override final  String event;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of SseEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SseEventCopyWith<_SseEvent> get copyWith => __$SseEventCopyWithImpl<_SseEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SseEventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SseEvent&&(identical(other.event, event) || other.event == event)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,event,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'SseEvent(event: $event, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SseEventCopyWith<$Res> implements $SseEventCopyWith<$Res> {
  factory _$SseEventCopyWith(_SseEvent value, $Res Function(_SseEvent) _then) = __$SseEventCopyWithImpl;
@override @useResult
$Res call({
 String event, Map<String, dynamic> data
});




}
/// @nodoc
class __$SseEventCopyWithImpl<$Res>
    implements _$SseEventCopyWith<$Res> {
  __$SseEventCopyWithImpl(this._self, this._then);

  final _SseEvent _self;
  final $Res Function(_SseEvent) _then;

/// Create a copy of SseEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? event = null,Object? data = null,}) {
  return _then(_SseEvent(
event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc
mixin _$StreamEventData {

 StreamMetadata? get metadata; StreamRetrievals? get retrievals; StreamAttributions? get attributions; StreamMessageComplete? get messageComplete;
/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamEventDataCopyWith<StreamEventData> get copyWith => _$StreamEventDataCopyWithImpl<StreamEventData>(this as StreamEventData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamEventData&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.retrievals, retrievals) || other.retrievals == retrievals)&&(identical(other.attributions, attributions) || other.attributions == attributions)&&(identical(other.messageComplete, messageComplete) || other.messageComplete == messageComplete));
}


@override
int get hashCode => Object.hash(runtimeType,metadata,retrievals,attributions,messageComplete);

@override
String toString() {
  return 'StreamEventData(metadata: $metadata, retrievals: $retrievals, attributions: $attributions, messageComplete: $messageComplete)';
}


}

/// @nodoc
abstract mixin class $StreamEventDataCopyWith<$Res>  {
  factory $StreamEventDataCopyWith(StreamEventData value, $Res Function(StreamEventData) _then) = _$StreamEventDataCopyWithImpl;
@useResult
$Res call({
 StreamMetadata? metadata, StreamRetrievals? retrievals, StreamAttributions? attributions, StreamMessageComplete? messageComplete
});


$StreamMetadataCopyWith<$Res>? get metadata;$StreamRetrievalsCopyWith<$Res>? get retrievals;$StreamAttributionsCopyWith<$Res>? get attributions;$StreamMessageCompleteCopyWith<$Res>? get messageComplete;

}
/// @nodoc
class _$StreamEventDataCopyWithImpl<$Res>
    implements $StreamEventDataCopyWith<$Res> {
  _$StreamEventDataCopyWithImpl(this._self, this._then);

  final StreamEventData _self;
  final $Res Function(StreamEventData) _then;

/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = freezed,Object? retrievals = freezed,Object? attributions = freezed,Object? messageComplete = freezed,}) {
  return _then(_self.copyWith(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as StreamMetadata?,retrievals: freezed == retrievals ? _self.retrievals : retrievals // ignore: cast_nullable_to_non_nullable
as StreamRetrievals?,attributions: freezed == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as StreamAttributions?,messageComplete: freezed == messageComplete ? _self.messageComplete : messageComplete // ignore: cast_nullable_to_non_nullable
as StreamMessageComplete?,
  ));
}
/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $StreamMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamRetrievalsCopyWith<$Res>? get retrievals {
    if (_self.retrievals == null) {
    return null;
  }

  return $StreamRetrievalsCopyWith<$Res>(_self.retrievals!, (value) {
    return _then(_self.copyWith(retrievals: value));
  });
}/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamAttributionsCopyWith<$Res>? get attributions {
    if (_self.attributions == null) {
    return null;
  }

  return $StreamAttributionsCopyWith<$Res>(_self.attributions!, (value) {
    return _then(_self.copyWith(attributions: value));
  });
}/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamMessageCompleteCopyWith<$Res>? get messageComplete {
    if (_self.messageComplete == null) {
    return null;
  }

  return $StreamMessageCompleteCopyWith<$Res>(_self.messageComplete!, (value) {
    return _then(_self.copyWith(messageComplete: value));
  });
}
}


/// Adds pattern-matching-related methods to [StreamEventData].
extension StreamEventDataPatterns on StreamEventData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamEventData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamEventData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamEventData value)  $default,){
final _that = this;
switch (_that) {
case _StreamEventData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamEventData value)?  $default,){
final _that = this;
switch (_that) {
case _StreamEventData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StreamMetadata? metadata,  StreamRetrievals? retrievals,  StreamAttributions? attributions,  StreamMessageComplete? messageComplete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamEventData() when $default != null:
return $default(_that.metadata,_that.retrievals,_that.attributions,_that.messageComplete);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StreamMetadata? metadata,  StreamRetrievals? retrievals,  StreamAttributions? attributions,  StreamMessageComplete? messageComplete)  $default,) {final _that = this;
switch (_that) {
case _StreamEventData():
return $default(_that.metadata,_that.retrievals,_that.attributions,_that.messageComplete);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StreamMetadata? metadata,  StreamRetrievals? retrievals,  StreamAttributions? attributions,  StreamMessageComplete? messageComplete)?  $default,) {final _that = this;
switch (_that) {
case _StreamEventData() when $default != null:
return $default(_that.metadata,_that.retrievals,_that.attributions,_that.messageComplete);case _:
  return null;

}
}

}

/// @nodoc


class _StreamEventData implements StreamEventData {
  const _StreamEventData({this.metadata, this.retrievals, this.attributions, this.messageComplete});
  

@override final  StreamMetadata? metadata;
@override final  StreamRetrievals? retrievals;
@override final  StreamAttributions? attributions;
@override final  StreamMessageComplete? messageComplete;

/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamEventDataCopyWith<_StreamEventData> get copyWith => __$StreamEventDataCopyWithImpl<_StreamEventData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamEventData&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.retrievals, retrievals) || other.retrievals == retrievals)&&(identical(other.attributions, attributions) || other.attributions == attributions)&&(identical(other.messageComplete, messageComplete) || other.messageComplete == messageComplete));
}


@override
int get hashCode => Object.hash(runtimeType,metadata,retrievals,attributions,messageComplete);

@override
String toString() {
  return 'StreamEventData(metadata: $metadata, retrievals: $retrievals, attributions: $attributions, messageComplete: $messageComplete)';
}


}

/// @nodoc
abstract mixin class _$StreamEventDataCopyWith<$Res> implements $StreamEventDataCopyWith<$Res> {
  factory _$StreamEventDataCopyWith(_StreamEventData value, $Res Function(_StreamEventData) _then) = __$StreamEventDataCopyWithImpl;
@override @useResult
$Res call({
 StreamMetadata? metadata, StreamRetrievals? retrievals, StreamAttributions? attributions, StreamMessageComplete? messageComplete
});


@override $StreamMetadataCopyWith<$Res>? get metadata;@override $StreamRetrievalsCopyWith<$Res>? get retrievals;@override $StreamAttributionsCopyWith<$Res>? get attributions;@override $StreamMessageCompleteCopyWith<$Res>? get messageComplete;

}
/// @nodoc
class __$StreamEventDataCopyWithImpl<$Res>
    implements _$StreamEventDataCopyWith<$Res> {
  __$StreamEventDataCopyWithImpl(this._self, this._then);

  final _StreamEventData _self;
  final $Res Function(_StreamEventData) _then;

/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = freezed,Object? retrievals = freezed,Object? attributions = freezed,Object? messageComplete = freezed,}) {
  return _then(_StreamEventData(
metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as StreamMetadata?,retrievals: freezed == retrievals ? _self.retrievals : retrievals // ignore: cast_nullable_to_non_nullable
as StreamRetrievals?,attributions: freezed == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as StreamAttributions?,messageComplete: freezed == messageComplete ? _self.messageComplete : messageComplete // ignore: cast_nullable_to_non_nullable
as StreamMessageComplete?,
  ));
}

/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $StreamMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamRetrievalsCopyWith<$Res>? get retrievals {
    if (_self.retrievals == null) {
    return null;
  }

  return $StreamRetrievalsCopyWith<$Res>(_self.retrievals!, (value) {
    return _then(_self.copyWith(retrievals: value));
  });
}/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamAttributionsCopyWith<$Res>? get attributions {
    if (_self.attributions == null) {
    return null;
  }

  return $StreamAttributionsCopyWith<$Res>(_self.attributions!, (value) {
    return _then(_self.copyWith(attributions: value));
  });
}/// Create a copy of StreamEventData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamMessageCompleteCopyWith<$Res>? get messageComplete {
    if (_self.messageComplete == null) {
    return null;
  }

  return $StreamMessageCompleteCopyWith<$Res>(_self.messageComplete!, (value) {
    return _then(_self.copyWith(messageComplete: value));
  });
}
}

/// @nodoc
mixin _$StreamResponse {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamResponse);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StreamResponse()';
}


}

/// @nodoc
class $StreamResponseCopyWith<$Res>  {
$StreamResponseCopyWith(StreamResponse _, $Res Function(StreamResponse) __);
}


/// Adds pattern-matching-related methods to [StreamResponse].
extension StreamResponsePatterns on StreamResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StreamResponseTextDelta value)?  textDelta,TResult Function( StreamResponseMetadata value)?  metadata,TResult Function( StreamResponseRetrievals value)?  retrieval,TResult Function( StreamResponseAttributions value)?  attributions,TResult Function( StreamResponseDone value)?  done,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StreamResponseTextDelta() when textDelta != null:
return textDelta(_that);case StreamResponseMetadata() when metadata != null:
return metadata(_that);case StreamResponseRetrievals() when retrieval != null:
return retrieval(_that);case StreamResponseAttributions() when attributions != null:
return attributions(_that);case StreamResponseDone() when done != null:
return done(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StreamResponseTextDelta value)  textDelta,required TResult Function( StreamResponseMetadata value)  metadata,required TResult Function( StreamResponseRetrievals value)  retrieval,required TResult Function( StreamResponseAttributions value)  attributions,required TResult Function( StreamResponseDone value)  done,}){
final _that = this;
switch (_that) {
case StreamResponseTextDelta():
return textDelta(_that);case StreamResponseMetadata():
return metadata(_that);case StreamResponseRetrievals():
return retrieval(_that);case StreamResponseAttributions():
return attributions(_that);case StreamResponseDone():
return done(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StreamResponseTextDelta value)?  textDelta,TResult? Function( StreamResponseMetadata value)?  metadata,TResult? Function( StreamResponseRetrievals value)?  retrieval,TResult? Function( StreamResponseAttributions value)?  attributions,TResult? Function( StreamResponseDone value)?  done,}){
final _that = this;
switch (_that) {
case StreamResponseTextDelta() when textDelta != null:
return textDelta(_that);case StreamResponseMetadata() when metadata != null:
return metadata(_that);case StreamResponseRetrievals() when retrieval != null:
return retrieval(_that);case StreamResponseAttributions() when attributions != null:
return attributions(_that);case StreamResponseDone() when done != null:
return done(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String text)?  textDelta,TResult Function( StreamMetadata metadata)?  metadata,TResult Function( StreamRetrievals retrievals)?  retrieval,TResult Function( StreamAttributions? attributions)?  attributions,TResult Function( String? content,  StreamMetadata? metadata,  StreamRetrievals? retrievals,  StreamAttributions? attributions,  StreamMessageComplete? messageComplete)?  done,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StreamResponseTextDelta() when textDelta != null:
return textDelta(_that.text);case StreamResponseMetadata() when metadata != null:
return metadata(_that.metadata);case StreamResponseRetrievals() when retrieval != null:
return retrieval(_that.retrievals);case StreamResponseAttributions() when attributions != null:
return attributions(_that.attributions);case StreamResponseDone() when done != null:
return done(_that.content,_that.metadata,_that.retrievals,_that.attributions,_that.messageComplete);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String text)  textDelta,required TResult Function( StreamMetadata metadata)  metadata,required TResult Function( StreamRetrievals retrievals)  retrieval,required TResult Function( StreamAttributions? attributions)  attributions,required TResult Function( String? content,  StreamMetadata? metadata,  StreamRetrievals? retrievals,  StreamAttributions? attributions,  StreamMessageComplete? messageComplete)  done,}) {final _that = this;
switch (_that) {
case StreamResponseTextDelta():
return textDelta(_that.text);case StreamResponseMetadata():
return metadata(_that.metadata);case StreamResponseRetrievals():
return retrieval(_that.retrievals);case StreamResponseAttributions():
return attributions(_that.attributions);case StreamResponseDone():
return done(_that.content,_that.metadata,_that.retrievals,_that.attributions,_that.messageComplete);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String text)?  textDelta,TResult? Function( StreamMetadata metadata)?  metadata,TResult? Function( StreamRetrievals retrievals)?  retrieval,TResult? Function( StreamAttributions? attributions)?  attributions,TResult? Function( String? content,  StreamMetadata? metadata,  StreamRetrievals? retrievals,  StreamAttributions? attributions,  StreamMessageComplete? messageComplete)?  done,}) {final _that = this;
switch (_that) {
case StreamResponseTextDelta() when textDelta != null:
return textDelta(_that.text);case StreamResponseMetadata() when metadata != null:
return metadata(_that.metadata);case StreamResponseRetrievals() when retrieval != null:
return retrieval(_that.retrievals);case StreamResponseAttributions() when attributions != null:
return attributions(_that.attributions);case StreamResponseDone() when done != null:
return done(_that.content,_that.metadata,_that.retrievals,_that.attributions,_that.messageComplete);case _:
  return null;

}
}

}

/// @nodoc


class StreamResponseTextDelta extends StreamResponse {
  const StreamResponseTextDelta(this.text): super._();
  

 final  String text;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamResponseTextDeltaCopyWith<StreamResponseTextDelta> get copyWith => _$StreamResponseTextDeltaCopyWithImpl<StreamResponseTextDelta>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamResponseTextDelta&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'StreamResponse.textDelta(text: $text)';
}


}

/// @nodoc
abstract mixin class $StreamResponseTextDeltaCopyWith<$Res> implements $StreamResponseCopyWith<$Res> {
  factory $StreamResponseTextDeltaCopyWith(StreamResponseTextDelta value, $Res Function(StreamResponseTextDelta) _then) = _$StreamResponseTextDeltaCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$StreamResponseTextDeltaCopyWithImpl<$Res>
    implements $StreamResponseTextDeltaCopyWith<$Res> {
  _$StreamResponseTextDeltaCopyWithImpl(this._self, this._then);

  final StreamResponseTextDelta _self;
  final $Res Function(StreamResponseTextDelta) _then;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(StreamResponseTextDelta(
null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StreamResponseMetadata extends StreamResponse {
  const StreamResponseMetadata(this.metadata): super._();
  

 final  StreamMetadata metadata;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamResponseMetadataCopyWith<StreamResponseMetadata> get copyWith => _$StreamResponseMetadataCopyWithImpl<StreamResponseMetadata>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamResponseMetadata&&(identical(other.metadata, metadata) || other.metadata == metadata));
}


@override
int get hashCode => Object.hash(runtimeType,metadata);

@override
String toString() {
  return 'StreamResponse.metadata(metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $StreamResponseMetadataCopyWith<$Res> implements $StreamResponseCopyWith<$Res> {
  factory $StreamResponseMetadataCopyWith(StreamResponseMetadata value, $Res Function(StreamResponseMetadata) _then) = _$StreamResponseMetadataCopyWithImpl;
@useResult
$Res call({
 StreamMetadata metadata
});


$StreamMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$StreamResponseMetadataCopyWithImpl<$Res>
    implements $StreamResponseMetadataCopyWith<$Res> {
  _$StreamResponseMetadataCopyWithImpl(this._self, this._then);

  final StreamResponseMetadata _self;
  final $Res Function(StreamResponseMetadata) _then;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? metadata = null,}) {
  return _then(StreamResponseMetadata(
null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as StreamMetadata,
  ));
}

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamMetadataCopyWith<$Res> get metadata {
  
  return $StreamMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

/// @nodoc


class StreamResponseRetrievals extends StreamResponse {
  const StreamResponseRetrievals(this.retrievals): super._();
  

 final  StreamRetrievals retrievals;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamResponseRetrievalsCopyWith<StreamResponseRetrievals> get copyWith => _$StreamResponseRetrievalsCopyWithImpl<StreamResponseRetrievals>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamResponseRetrievals&&(identical(other.retrievals, retrievals) || other.retrievals == retrievals));
}


@override
int get hashCode => Object.hash(runtimeType,retrievals);

@override
String toString() {
  return 'StreamResponse.retrieval(retrievals: $retrievals)';
}


}

/// @nodoc
abstract mixin class $StreamResponseRetrievalsCopyWith<$Res> implements $StreamResponseCopyWith<$Res> {
  factory $StreamResponseRetrievalsCopyWith(StreamResponseRetrievals value, $Res Function(StreamResponseRetrievals) _then) = _$StreamResponseRetrievalsCopyWithImpl;
@useResult
$Res call({
 StreamRetrievals retrievals
});


$StreamRetrievalsCopyWith<$Res> get retrievals;

}
/// @nodoc
class _$StreamResponseRetrievalsCopyWithImpl<$Res>
    implements $StreamResponseRetrievalsCopyWith<$Res> {
  _$StreamResponseRetrievalsCopyWithImpl(this._self, this._then);

  final StreamResponseRetrievals _self;
  final $Res Function(StreamResponseRetrievals) _then;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? retrievals = null,}) {
  return _then(StreamResponseRetrievals(
null == retrievals ? _self.retrievals : retrievals // ignore: cast_nullable_to_non_nullable
as StreamRetrievals,
  ));
}

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamRetrievalsCopyWith<$Res> get retrievals {
  
  return $StreamRetrievalsCopyWith<$Res>(_self.retrievals, (value) {
    return _then(_self.copyWith(retrievals: value));
  });
}
}

/// @nodoc


class StreamResponseAttributions extends StreamResponse {
  const StreamResponseAttributions(this.attributions): super._();
  

 final  StreamAttributions? attributions;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamResponseAttributionsCopyWith<StreamResponseAttributions> get copyWith => _$StreamResponseAttributionsCopyWithImpl<StreamResponseAttributions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamResponseAttributions&&(identical(other.attributions, attributions) || other.attributions == attributions));
}


@override
int get hashCode => Object.hash(runtimeType,attributions);

@override
String toString() {
  return 'StreamResponse.attributions(attributions: $attributions)';
}


}

/// @nodoc
abstract mixin class $StreamResponseAttributionsCopyWith<$Res> implements $StreamResponseCopyWith<$Res> {
  factory $StreamResponseAttributionsCopyWith(StreamResponseAttributions value, $Res Function(StreamResponseAttributions) _then) = _$StreamResponseAttributionsCopyWithImpl;
@useResult
$Res call({
 StreamAttributions? attributions
});


$StreamAttributionsCopyWith<$Res>? get attributions;

}
/// @nodoc
class _$StreamResponseAttributionsCopyWithImpl<$Res>
    implements $StreamResponseAttributionsCopyWith<$Res> {
  _$StreamResponseAttributionsCopyWithImpl(this._self, this._then);

  final StreamResponseAttributions _self;
  final $Res Function(StreamResponseAttributions) _then;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? attributions = freezed,}) {
  return _then(StreamResponseAttributions(
freezed == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as StreamAttributions?,
  ));
}

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamAttributionsCopyWith<$Res>? get attributions {
    if (_self.attributions == null) {
    return null;
  }

  return $StreamAttributionsCopyWith<$Res>(_self.attributions!, (value) {
    return _then(_self.copyWith(attributions: value));
  });
}
}

/// @nodoc


class StreamResponseDone extends StreamResponse {
  const StreamResponseDone({this.content, this.metadata, this.retrievals, this.attributions, this.messageComplete}): super._();
  

 final  String? content;
 final  StreamMetadata? metadata;
 final  StreamRetrievals? retrievals;
 final  StreamAttributions? attributions;
 final  StreamMessageComplete? messageComplete;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamResponseDoneCopyWith<StreamResponseDone> get copyWith => _$StreamResponseDoneCopyWithImpl<StreamResponseDone>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamResponseDone&&(identical(other.content, content) || other.content == content)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.retrievals, retrievals) || other.retrievals == retrievals)&&(identical(other.attributions, attributions) || other.attributions == attributions)&&(identical(other.messageComplete, messageComplete) || other.messageComplete == messageComplete));
}


@override
int get hashCode => Object.hash(runtimeType,content,metadata,retrievals,attributions,messageComplete);

@override
String toString() {
  return 'StreamResponse.done(content: $content, metadata: $metadata, retrievals: $retrievals, attributions: $attributions, messageComplete: $messageComplete)';
}


}

/// @nodoc
abstract mixin class $StreamResponseDoneCopyWith<$Res> implements $StreamResponseCopyWith<$Res> {
  factory $StreamResponseDoneCopyWith(StreamResponseDone value, $Res Function(StreamResponseDone) _then) = _$StreamResponseDoneCopyWithImpl;
@useResult
$Res call({
 String? content, StreamMetadata? metadata, StreamRetrievals? retrievals, StreamAttributions? attributions, StreamMessageComplete? messageComplete
});


$StreamMetadataCopyWith<$Res>? get metadata;$StreamRetrievalsCopyWith<$Res>? get retrievals;$StreamAttributionsCopyWith<$Res>? get attributions;$StreamMessageCompleteCopyWith<$Res>? get messageComplete;

}
/// @nodoc
class _$StreamResponseDoneCopyWithImpl<$Res>
    implements $StreamResponseDoneCopyWith<$Res> {
  _$StreamResponseDoneCopyWithImpl(this._self, this._then);

  final StreamResponseDone _self;
  final $Res Function(StreamResponseDone) _then;

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? content = freezed,Object? metadata = freezed,Object? retrievals = freezed,Object? attributions = freezed,Object? messageComplete = freezed,}) {
  return _then(StreamResponseDone(
content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as StreamMetadata?,retrievals: freezed == retrievals ? _self.retrievals : retrievals // ignore: cast_nullable_to_non_nullable
as StreamRetrievals?,attributions: freezed == attributions ? _self.attributions : attributions // ignore: cast_nullable_to_non_nullable
as StreamAttributions?,messageComplete: freezed == messageComplete ? _self.messageComplete : messageComplete // ignore: cast_nullable_to_non_nullable
as StreamMessageComplete?,
  ));
}

/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamMetadataCopyWith<$Res>? get metadata {
    if (_self.metadata == null) {
    return null;
  }

  return $StreamMetadataCopyWith<$Res>(_self.metadata!, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamRetrievalsCopyWith<$Res>? get retrievals {
    if (_self.retrievals == null) {
    return null;
  }

  return $StreamRetrievalsCopyWith<$Res>(_self.retrievals!, (value) {
    return _then(_self.copyWith(retrievals: value));
  });
}/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamAttributionsCopyWith<$Res>? get attributions {
    if (_self.attributions == null) {
    return null;
  }

  return $StreamAttributionsCopyWith<$Res>(_self.attributions!, (value) {
    return _then(_self.copyWith(attributions: value));
  });
}/// Create a copy of StreamResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamMessageCompleteCopyWith<$Res>? get messageComplete {
    if (_self.messageComplete == null) {
    return null;
  }

  return $StreamMessageCompleteCopyWith<$Res>(_self.messageComplete!, (value) {
    return _then(_self.copyWith(messageComplete: value));
  });
}
}

/// @nodoc
mixin _$Conversation {

 String get id; String get title; String get agentId; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationCopyWith<Conversation> get copyWith => _$ConversationCopyWithImpl<Conversation>(this as Conversation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Conversation&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.agentId, agentId) || other.agentId == agentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,agentId,createdAt,updatedAt);

@override
String toString() {
  return 'Conversation(id: $id, title: $title, agentId: $agentId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ConversationCopyWith<$Res>  {
  factory $ConversationCopyWith(Conversation value, $Res Function(Conversation) _then) = _$ConversationCopyWithImpl;
@useResult
$Res call({
 String id, String title, String agentId, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$ConversationCopyWithImpl<$Res>
    implements $ConversationCopyWith<$Res> {
  _$ConversationCopyWithImpl(this._self, this._then);

  final Conversation _self;
  final $Res Function(Conversation) _then;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? agentId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,agentId: null == agentId ? _self.agentId : agentId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [Conversation].
extension ConversationPatterns on Conversation {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Conversation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Conversation value)  $default,){
final _that = this;
switch (_that) {
case _Conversation():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Conversation value)?  $default,){
final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String agentId,  DateTime createdAt,  DateTime updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that.id,_that.title,_that.agentId,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String agentId,  DateTime createdAt,  DateTime updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Conversation():
return $default(_that.id,_that.title,_that.agentId,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String agentId,  DateTime createdAt,  DateTime updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Conversation() when $default != null:
return $default(_that.id,_that.title,_that.agentId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Conversation implements Conversation {
  const _Conversation({required this.id, required this.title, required this.agentId, required this.createdAt, required this.updatedAt});
  

@override final  String id;
@override final  String title;
@override final  String agentId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationCopyWith<_Conversation> get copyWith => __$ConversationCopyWithImpl<_Conversation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Conversation&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.agentId, agentId) || other.agentId == agentId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,agentId,createdAt,updatedAt);

@override
String toString() {
  return 'Conversation(id: $id, title: $title, agentId: $agentId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ConversationCopyWith<$Res> implements $ConversationCopyWith<$Res> {
  factory _$ConversationCopyWith(_Conversation value, $Res Function(_Conversation) _then) = __$ConversationCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String agentId, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$ConversationCopyWithImpl<$Res>
    implements _$ConversationCopyWith<$Res> {
  __$ConversationCopyWithImpl(this._self, this._then);

  final _Conversation _self;
  final $Res Function(_Conversation) _then;

/// Create a copy of Conversation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? agentId = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Conversation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,agentId: null == agentId ? _self.agentId : agentId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
