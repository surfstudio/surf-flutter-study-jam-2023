// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)
        addTicket,
    required TResult Function(List<String> keys) downloadTickets,
    required TResult Function(String key) pauseDownloadForTicket,
    required TResult Function(Ticket ticket) deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult? Function(List<String> keys)? downloadTickets,
    TResult? Function(String key)? pauseDownloadForTicket,
    TResult? Function(Ticket ticket)? deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult Function(List<String> keys)? downloadTickets,
    TResult Function(String key)? pauseDownloadForTicket,
    TResult Function(Ticket ticket)? deleteDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
    required TResult Function(DownloadTicketsEvent value) downloadTickets,
    required TResult Function(PauseDownloadForTicketEvent value)
        pauseDownloadForTicket,
    required TResult Function(DeleteDocumentEvent value) deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
    TResult? Function(DownloadTicketsEvent value)? downloadTickets,
    TResult? Function(PauseDownloadForTicketEvent value)?
        pauseDownloadForTicket,
    TResult? Function(DeleteDocumentEvent value)? deleteDocument,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
    TResult Function(DownloadTicketsEvent value)? downloadTickets,
    TResult Function(PauseDownloadForTicketEvent value)? pauseDownloadForTicket,
    TResult Function(DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsListEventCopyWith<$Res> {
  factory $TicketsListEventCopyWith(
          TicketsListEvent value, $Res Function(TicketsListEvent) then) =
      _$TicketsListEventCopyWithImpl<$Res, TicketsListEvent>;
}

/// @nodoc
class _$TicketsListEventCopyWithImpl<$Res, $Val extends TicketsListEvent>
    implements $TicketsListEventCopyWith<$Res> {
  _$TicketsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketsListLoadEventCopyWith<$Res> {
  factory _$$TicketsListLoadEventCopyWith(_$TicketsListLoadEvent value,
          $Res Function(_$TicketsListLoadEvent) then) =
      __$$TicketsListLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsListLoadEventCopyWithImpl<$Res>
    extends _$TicketsListEventCopyWithImpl<$Res, _$TicketsListLoadEvent>
    implements _$$TicketsListLoadEventCopyWith<$Res> {
  __$$TicketsListLoadEventCopyWithImpl(_$TicketsListLoadEvent _value,
      $Res Function(_$TicketsListLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsListLoadEvent extends TicketsListLoadEvent {
  const _$TicketsListLoadEvent() : super._();

  @override
  String toString() {
    return 'TicketsListEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketsListLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)
        addTicket,
    required TResult Function(List<String> keys) downloadTickets,
    required TResult Function(String key) pauseDownloadForTicket,
    required TResult Function(Ticket ticket) deleteDocument,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult? Function(List<String> keys)? downloadTickets,
    TResult? Function(String key)? pauseDownloadForTicket,
    TResult? Function(Ticket ticket)? deleteDocument,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult Function(List<String> keys)? downloadTickets,
    TResult Function(String key)? pauseDownloadForTicket,
    TResult Function(Ticket ticket)? deleteDocument,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
    required TResult Function(DownloadTicketsEvent value) downloadTickets,
    required TResult Function(PauseDownloadForTicketEvent value)
        pauseDownloadForTicket,
    required TResult Function(DeleteDocumentEvent value) deleteDocument,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
    TResult? Function(DownloadTicketsEvent value)? downloadTickets,
    TResult? Function(PauseDownloadForTicketEvent value)?
        pauseDownloadForTicket,
    TResult? Function(DeleteDocumentEvent value)? deleteDocument,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
    TResult Function(DownloadTicketsEvent value)? downloadTickets,
    TResult Function(PauseDownloadForTicketEvent value)? pauseDownloadForTicket,
    TResult Function(DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class TicketsListLoadEvent extends TicketsListEvent {
  const factory TicketsListLoadEvent() = _$TicketsListLoadEvent;
  const TicketsListLoadEvent._() : super._();
}

/// @nodoc
abstract class _$$TicketsListAddTicketEventCopyWith<$Res> {
  factory _$$TicketsListAddTicketEventCopyWith(
          _$TicketsListAddTicketEvent value,
          $Res Function(_$TicketsListAddTicketEvent) then) =
      __$$TicketsListAddTicketEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String url,
      dynamic Function() onSuccess,
      dynamic Function(String) onError});
}

/// @nodoc
class __$$TicketsListAddTicketEventCopyWithImpl<$Res>
    extends _$TicketsListEventCopyWithImpl<$Res, _$TicketsListAddTicketEvent>
    implements _$$TicketsListAddTicketEventCopyWith<$Res> {
  __$$TicketsListAddTicketEventCopyWithImpl(_$TicketsListAddTicketEvent _value,
      $Res Function(_$TicketsListAddTicketEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? onSuccess = null,
    Object? onError = null,
  }) {
    return _then(_$TicketsListAddTicketEvent(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as dynamic Function(String),
    ));
  }
}

/// @nodoc

class _$TicketsListAddTicketEvent extends TicketsListAddTicketEvent {
  const _$TicketsListAddTicketEvent(
      {required this.url, required this.onSuccess, required this.onError})
      : super._();

  @override
  final String url;
  @override
  final dynamic Function() onSuccess;
  @override
  final dynamic Function(String) onError;

  @override
  String toString() {
    return 'TicketsListEvent.addTicket(url: $url, onSuccess: $onSuccess, onError: $onError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsListAddTicketEvent &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, onSuccess, onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsListAddTicketEventCopyWith<_$TicketsListAddTicketEvent>
      get copyWith => __$$TicketsListAddTicketEventCopyWithImpl<
          _$TicketsListAddTicketEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)
        addTicket,
    required TResult Function(List<String> keys) downloadTickets,
    required TResult Function(String key) pauseDownloadForTicket,
    required TResult Function(Ticket ticket) deleteDocument,
  }) {
    return addTicket(url, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult? Function(List<String> keys)? downloadTickets,
    TResult? Function(String key)? pauseDownloadForTicket,
    TResult? Function(Ticket ticket)? deleteDocument,
  }) {
    return addTicket?.call(url, onSuccess, onError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult Function(List<String> keys)? downloadTickets,
    TResult Function(String key)? pauseDownloadForTicket,
    TResult Function(Ticket ticket)? deleteDocument,
    required TResult orElse(),
  }) {
    if (addTicket != null) {
      return addTicket(url, onSuccess, onError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
    required TResult Function(DownloadTicketsEvent value) downloadTickets,
    required TResult Function(PauseDownloadForTicketEvent value)
        pauseDownloadForTicket,
    required TResult Function(DeleteDocumentEvent value) deleteDocument,
  }) {
    return addTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
    TResult? Function(DownloadTicketsEvent value)? downloadTickets,
    TResult? Function(PauseDownloadForTicketEvent value)?
        pauseDownloadForTicket,
    TResult? Function(DeleteDocumentEvent value)? deleteDocument,
  }) {
    return addTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
    TResult Function(DownloadTicketsEvent value)? downloadTickets,
    TResult Function(PauseDownloadForTicketEvent value)? pauseDownloadForTicket,
    TResult Function(DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) {
    if (addTicket != null) {
      return addTicket(this);
    }
    return orElse();
  }
}

abstract class TicketsListAddTicketEvent extends TicketsListEvent {
  const factory TicketsListAddTicketEvent(
          {required final String url,
          required final dynamic Function() onSuccess,
          required final dynamic Function(String) onError}) =
      _$TicketsListAddTicketEvent;
  const TicketsListAddTicketEvent._() : super._();

  String get url;
  dynamic Function() get onSuccess;
  dynamic Function(String) get onError;
  @JsonKey(ignore: true)
  _$$TicketsListAddTicketEventCopyWith<_$TicketsListAddTicketEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadTicketsEventCopyWith<$Res> {
  factory _$$DownloadTicketsEventCopyWith(_$DownloadTicketsEvent value,
          $Res Function(_$DownloadTicketsEvent) then) =
      __$$DownloadTicketsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> keys});
}

/// @nodoc
class __$$DownloadTicketsEventCopyWithImpl<$Res>
    extends _$TicketsListEventCopyWithImpl<$Res, _$DownloadTicketsEvent>
    implements _$$DownloadTicketsEventCopyWith<$Res> {
  __$$DownloadTicketsEventCopyWithImpl(_$DownloadTicketsEvent _value,
      $Res Function(_$DownloadTicketsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keys = null,
  }) {
    return _then(_$DownloadTicketsEvent(
      keys: null == keys
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DownloadTicketsEvent extends DownloadTicketsEvent {
  const _$DownloadTicketsEvent({required final List<String> keys})
      : _keys = keys,
        super._();

  final List<String> _keys;
  @override
  List<String> get keys {
    if (_keys is EqualUnmodifiableListView) return _keys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  String toString() {
    return 'TicketsListEvent.downloadTickets(keys: $keys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadTicketsEvent &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_keys));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadTicketsEventCopyWith<_$DownloadTicketsEvent> get copyWith =>
      __$$DownloadTicketsEventCopyWithImpl<_$DownloadTicketsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)
        addTicket,
    required TResult Function(List<String> keys) downloadTickets,
    required TResult Function(String key) pauseDownloadForTicket,
    required TResult Function(Ticket ticket) deleteDocument,
  }) {
    return downloadTickets(keys);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult? Function(List<String> keys)? downloadTickets,
    TResult? Function(String key)? pauseDownloadForTicket,
    TResult? Function(Ticket ticket)? deleteDocument,
  }) {
    return downloadTickets?.call(keys);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult Function(List<String> keys)? downloadTickets,
    TResult Function(String key)? pauseDownloadForTicket,
    TResult Function(Ticket ticket)? deleteDocument,
    required TResult orElse(),
  }) {
    if (downloadTickets != null) {
      return downloadTickets(keys);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
    required TResult Function(DownloadTicketsEvent value) downloadTickets,
    required TResult Function(PauseDownloadForTicketEvent value)
        pauseDownloadForTicket,
    required TResult Function(DeleteDocumentEvent value) deleteDocument,
  }) {
    return downloadTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
    TResult? Function(DownloadTicketsEvent value)? downloadTickets,
    TResult? Function(PauseDownloadForTicketEvent value)?
        pauseDownloadForTicket,
    TResult? Function(DeleteDocumentEvent value)? deleteDocument,
  }) {
    return downloadTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
    TResult Function(DownloadTicketsEvent value)? downloadTickets,
    TResult Function(PauseDownloadForTicketEvent value)? pauseDownloadForTicket,
    TResult Function(DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) {
    if (downloadTickets != null) {
      return downloadTickets(this);
    }
    return orElse();
  }
}

abstract class DownloadTicketsEvent extends TicketsListEvent {
  const factory DownloadTicketsEvent({required final List<String> keys}) =
      _$DownloadTicketsEvent;
  const DownloadTicketsEvent._() : super._();

  List<String> get keys;
  @JsonKey(ignore: true)
  _$$DownloadTicketsEventCopyWith<_$DownloadTicketsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseDownloadForTicketEventCopyWith<$Res> {
  factory _$$PauseDownloadForTicketEventCopyWith(
          _$PauseDownloadForTicketEvent value,
          $Res Function(_$PauseDownloadForTicketEvent) then) =
      __$$PauseDownloadForTicketEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$PauseDownloadForTicketEventCopyWithImpl<$Res>
    extends _$TicketsListEventCopyWithImpl<$Res, _$PauseDownloadForTicketEvent>
    implements _$$PauseDownloadForTicketEventCopyWith<$Res> {
  __$$PauseDownloadForTicketEventCopyWithImpl(
      _$PauseDownloadForTicketEvent _value,
      $Res Function(_$PauseDownloadForTicketEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$PauseDownloadForTicketEvent(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PauseDownloadForTicketEvent extends PauseDownloadForTicketEvent {
  const _$PauseDownloadForTicketEvent({required this.key}) : super._();

  @override
  final String key;

  @override
  String toString() {
    return 'TicketsListEvent.pauseDownloadForTicket(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseDownloadForTicketEvent &&
            (identical(other.key, key) || other.key == key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PauseDownloadForTicketEventCopyWith<_$PauseDownloadForTicketEvent>
      get copyWith => __$$PauseDownloadForTicketEventCopyWithImpl<
          _$PauseDownloadForTicketEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)
        addTicket,
    required TResult Function(List<String> keys) downloadTickets,
    required TResult Function(String key) pauseDownloadForTicket,
    required TResult Function(Ticket ticket) deleteDocument,
  }) {
    return pauseDownloadForTicket(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult? Function(List<String> keys)? downloadTickets,
    TResult? Function(String key)? pauseDownloadForTicket,
    TResult? Function(Ticket ticket)? deleteDocument,
  }) {
    return pauseDownloadForTicket?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult Function(List<String> keys)? downloadTickets,
    TResult Function(String key)? pauseDownloadForTicket,
    TResult Function(Ticket ticket)? deleteDocument,
    required TResult orElse(),
  }) {
    if (pauseDownloadForTicket != null) {
      return pauseDownloadForTicket(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
    required TResult Function(DownloadTicketsEvent value) downloadTickets,
    required TResult Function(PauseDownloadForTicketEvent value)
        pauseDownloadForTicket,
    required TResult Function(DeleteDocumentEvent value) deleteDocument,
  }) {
    return pauseDownloadForTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
    TResult? Function(DownloadTicketsEvent value)? downloadTickets,
    TResult? Function(PauseDownloadForTicketEvent value)?
        pauseDownloadForTicket,
    TResult? Function(DeleteDocumentEvent value)? deleteDocument,
  }) {
    return pauseDownloadForTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
    TResult Function(DownloadTicketsEvent value)? downloadTickets,
    TResult Function(PauseDownloadForTicketEvent value)? pauseDownloadForTicket,
    TResult Function(DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) {
    if (pauseDownloadForTicket != null) {
      return pauseDownloadForTicket(this);
    }
    return orElse();
  }
}

abstract class PauseDownloadForTicketEvent extends TicketsListEvent {
  const factory PauseDownloadForTicketEvent({required final String key}) =
      _$PauseDownloadForTicketEvent;
  const PauseDownloadForTicketEvent._() : super._();

  String get key;
  @JsonKey(ignore: true)
  _$$PauseDownloadForTicketEventCopyWith<_$PauseDownloadForTicketEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteDocumentEventCopyWith<$Res> {
  factory _$$DeleteDocumentEventCopyWith(_$DeleteDocumentEvent value,
          $Res Function(_$DeleteDocumentEvent) then) =
      __$$DeleteDocumentEventCopyWithImpl<$Res>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$DeleteDocumentEventCopyWithImpl<$Res>
    extends _$TicketsListEventCopyWithImpl<$Res, _$DeleteDocumentEvent>
    implements _$$DeleteDocumentEventCopyWith<$Res> {
  __$$DeleteDocumentEventCopyWithImpl(
      _$DeleteDocumentEvent _value, $Res Function(_$DeleteDocumentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$DeleteDocumentEvent(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$DeleteDocumentEvent extends DeleteDocumentEvent {
  const _$DeleteDocumentEvent({required this.ticket}) : super._();

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'TicketsListEvent.deleteDocument(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDocumentEvent &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDocumentEventCopyWith<_$DeleteDocumentEvent> get copyWith =>
      __$$DeleteDocumentEventCopyWithImpl<_$DeleteDocumentEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)
        addTicket,
    required TResult Function(List<String> keys) downloadTickets,
    required TResult Function(String key) pauseDownloadForTicket,
    required TResult Function(Ticket ticket) deleteDocument,
  }) {
    return deleteDocument(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult? Function(List<String> keys)? downloadTickets,
    TResult? Function(String key)? pauseDownloadForTicket,
    TResult? Function(Ticket ticket)? deleteDocument,
  }) {
    return deleteDocument?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess,
            dynamic Function(String) onError)?
        addTicket,
    TResult Function(List<String> keys)? downloadTickets,
    TResult Function(String key)? pauseDownloadForTicket,
    TResult Function(Ticket ticket)? deleteDocument,
    required TResult orElse(),
  }) {
    if (deleteDocument != null) {
      return deleteDocument(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
    required TResult Function(DownloadTicketsEvent value) downloadTickets,
    required TResult Function(PauseDownloadForTicketEvent value)
        pauseDownloadForTicket,
    required TResult Function(DeleteDocumentEvent value) deleteDocument,
  }) {
    return deleteDocument(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
    TResult? Function(DownloadTicketsEvent value)? downloadTickets,
    TResult? Function(PauseDownloadForTicketEvent value)?
        pauseDownloadForTicket,
    TResult? Function(DeleteDocumentEvent value)? deleteDocument,
  }) {
    return deleteDocument?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
    TResult Function(DownloadTicketsEvent value)? downloadTickets,
    TResult Function(PauseDownloadForTicketEvent value)? pauseDownloadForTicket,
    TResult Function(DeleteDocumentEvent value)? deleteDocument,
    required TResult orElse(),
  }) {
    if (deleteDocument != null) {
      return deleteDocument(this);
    }
    return orElse();
  }
}

abstract class DeleteDocumentEvent extends TicketsListEvent {
  const factory DeleteDocumentEvent({required final Ticket ticket}) =
      _$DeleteDocumentEvent;
  const DeleteDocumentEvent._() : super._();

  Ticket get ticket;
  @JsonKey(ignore: true)
  _$$DeleteDocumentEventCopyWith<_$DeleteDocumentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Ticket> tickets, String randomKey) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListInitState value) init,
    required TResult Function(TicketsListLoadedState value) loaded,
    required TResult Function(TicketsListLoadingState value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListInitState value)? init,
    TResult? Function(TicketsListLoadedState value)? loaded,
    TResult? Function(TicketsListLoadingState value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListInitState value)? init,
    TResult Function(TicketsListLoadedState value)? loaded,
    TResult Function(TicketsListLoadingState value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsListStateCopyWith<$Res> {
  factory $TicketsListStateCopyWith(
          TicketsListState value, $Res Function(TicketsListState) then) =
      _$TicketsListStateCopyWithImpl<$Res, TicketsListState>;
}

/// @nodoc
class _$TicketsListStateCopyWithImpl<$Res, $Val extends TicketsListState>
    implements $TicketsListStateCopyWith<$Res> {
  _$TicketsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TicketsListInitStateCopyWith<$Res> {
  factory _$$TicketsListInitStateCopyWith(_$TicketsListInitState value,
          $Res Function(_$TicketsListInitState) then) =
      __$$TicketsListInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsListInitStateCopyWithImpl<$Res>
    extends _$TicketsListStateCopyWithImpl<$Res, _$TicketsListInitState>
    implements _$$TicketsListInitStateCopyWith<$Res> {
  __$$TicketsListInitStateCopyWithImpl(_$TicketsListInitState _value,
      $Res Function(_$TicketsListInitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsListInitState extends TicketsListInitState {
  const _$TicketsListInitState() : super._();

  @override
  String toString() {
    return 'TicketsListState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TicketsListInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Ticket> tickets, String randomKey) loaded,
    required TResult Function() loading,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult? Function()? loading,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListInitState value) init,
    required TResult Function(TicketsListLoadedState value) loaded,
    required TResult Function(TicketsListLoadingState value) loading,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListInitState value)? init,
    TResult? Function(TicketsListLoadedState value)? loaded,
    TResult? Function(TicketsListLoadingState value)? loading,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListInitState value)? init,
    TResult Function(TicketsListLoadedState value)? loaded,
    TResult Function(TicketsListLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TicketsListInitState extends TicketsListState {
  const factory TicketsListInitState() = _$TicketsListInitState;
  const TicketsListInitState._() : super._();
}

/// @nodoc
abstract class _$$TicketsListLoadedStateCopyWith<$Res> {
  factory _$$TicketsListLoadedStateCopyWith(_$TicketsListLoadedState value,
          $Res Function(_$TicketsListLoadedState) then) =
      __$$TicketsListLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ticket> tickets, String randomKey});
}

/// @nodoc
class __$$TicketsListLoadedStateCopyWithImpl<$Res>
    extends _$TicketsListStateCopyWithImpl<$Res, _$TicketsListLoadedState>
    implements _$$TicketsListLoadedStateCopyWith<$Res> {
  __$$TicketsListLoadedStateCopyWithImpl(_$TicketsListLoadedState _value,
      $Res Function(_$TicketsListLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
    Object? randomKey = null,
  }) {
    return _then(_$TicketsListLoadedState(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
      randomKey: null == randomKey
          ? _value.randomKey
          : randomKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TicketsListLoadedState extends TicketsListLoadedState {
  const _$TicketsListLoadedState(
      {required final List<Ticket> tickets, required this.randomKey})
      : _tickets = tickets,
        super._();

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

// Костыль для апдейта состояния
  @override
  final String randomKey;

  @override
  String toString() {
    return 'TicketsListState.loaded(tickets: $tickets, randomKey: $randomKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsListLoadedState &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            (identical(other.randomKey, randomKey) ||
                other.randomKey == randomKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tickets), randomKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketsListLoadedStateCopyWith<_$TicketsListLoadedState> get copyWith =>
      __$$TicketsListLoadedStateCopyWithImpl<_$TicketsListLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Ticket> tickets, String randomKey) loaded,
    required TResult Function() loading,
  }) {
    return loaded(tickets, randomKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult? Function()? loading,
  }) {
    return loaded?.call(tickets, randomKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tickets, randomKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListInitState value) init,
    required TResult Function(TicketsListLoadedState value) loaded,
    required TResult Function(TicketsListLoadingState value) loading,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListInitState value)? init,
    TResult? Function(TicketsListLoadedState value)? loaded,
    TResult? Function(TicketsListLoadingState value)? loading,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListInitState value)? init,
    TResult Function(TicketsListLoadedState value)? loaded,
    TResult Function(TicketsListLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TicketsListLoadedState extends TicketsListState {
  const factory TicketsListLoadedState(
      {required final List<Ticket> tickets,
      required final String randomKey}) = _$TicketsListLoadedState;
  const TicketsListLoadedState._() : super._();

  List<Ticket> get tickets; // Костыль для апдейта состояния
  String get randomKey;
  @JsonKey(ignore: true)
  _$$TicketsListLoadedStateCopyWith<_$TicketsListLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TicketsListLoadingStateCopyWith<$Res> {
  factory _$$TicketsListLoadingStateCopyWith(_$TicketsListLoadingState value,
          $Res Function(_$TicketsListLoadingState) then) =
      __$$TicketsListLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TicketsListLoadingStateCopyWithImpl<$Res>
    extends _$TicketsListStateCopyWithImpl<$Res, _$TicketsListLoadingState>
    implements _$$TicketsListLoadingStateCopyWith<$Res> {
  __$$TicketsListLoadingStateCopyWithImpl(_$TicketsListLoadingState _value,
      $Res Function(_$TicketsListLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TicketsListLoadingState extends TicketsListLoadingState {
  const _$TicketsListLoadingState() : super._();

  @override
  String toString() {
    return 'TicketsListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsListLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Ticket> tickets, String randomKey) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets, String randomKey)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListInitState value) init,
    required TResult Function(TicketsListLoadedState value) loaded,
    required TResult Function(TicketsListLoadingState value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListInitState value)? init,
    TResult? Function(TicketsListLoadedState value)? loaded,
    TResult? Function(TicketsListLoadingState value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListInitState value)? init,
    TResult Function(TicketsListLoadedState value)? loaded,
    TResult Function(TicketsListLoadingState value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TicketsListLoadingState extends TicketsListState {
  const factory TicketsListLoadingState() = _$TicketsListLoadingState;
  const TicketsListLoadingState._() : super._();
}
