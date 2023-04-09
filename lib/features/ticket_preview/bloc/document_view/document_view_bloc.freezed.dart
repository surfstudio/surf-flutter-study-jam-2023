// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentViewEvent {
  Ticket get ticket => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DocumentViewEventCopyWith<DocumentViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentViewEventCopyWith<$Res> {
  factory $DocumentViewEventCopyWith(
          DocumentViewEvent value, $Res Function(DocumentViewEvent) then) =
      _$DocumentViewEventCopyWithImpl<$Res, DocumentViewEvent>;
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class _$DocumentViewEventCopyWithImpl<$Res, $Val extends DocumentViewEvent>
    implements $DocumentViewEventCopyWith<$Res> {
  _$DocumentViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentLoadEventCopyWith<$Res>
    implements $DocumentViewEventCopyWith<$Res> {
  factory _$$DocumentLoadEventCopyWith(
          _$DocumentLoadEvent value, $Res Function(_$DocumentLoadEvent) then) =
      __$$DocumentLoadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ticket ticket});
}

/// @nodoc
class __$$DocumentLoadEventCopyWithImpl<$Res>
    extends _$DocumentViewEventCopyWithImpl<$Res, _$DocumentLoadEvent>
    implements _$$DocumentLoadEventCopyWith<$Res> {
  __$$DocumentLoadEventCopyWithImpl(
      _$DocumentLoadEvent _value, $Res Function(_$DocumentLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
  }) {
    return _then(_$DocumentLoadEvent(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
    ));
  }
}

/// @nodoc

class _$DocumentLoadEvent extends DocumentLoadEvent {
  const _$DocumentLoadEvent({required this.ticket}) : super._();

  @override
  final Ticket ticket;

  @override
  String toString() {
    return 'DocumentViewEvent.load(ticket: $ticket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentLoadEvent &&
            (identical(other.ticket, ticket) || other.ticket == ticket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentLoadEventCopyWith<_$DocumentLoadEvent> get copyWith =>
      __$$DocumentLoadEventCopyWithImpl<_$DocumentLoadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket) load,
  }) {
    return load(ticket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket)? load,
  }) {
    return load?.call(ticket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(ticket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class DocumentLoadEvent extends DocumentViewEvent {
  const factory DocumentLoadEvent({required final Ticket ticket}) =
      _$DocumentLoadEvent;
  const DocumentLoadEvent._() : super._();

  @override
  Ticket get ticket;
  @override
  @JsonKey(ignore: true)
  _$$DocumentLoadEventCopyWith<_$DocumentLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DocumentViewState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List document) loaded,
    required TResult Function() loading,
    required TResult Function(String msg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Uint8List document)? loaded,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List document)? loaded,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentInitState value) init,
    required TResult Function(DocumentLoadedState value) loaded,
    required TResult Function(DocumentLoadingState value) loading,
    required TResult Function(DocumentErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentInitState value)? init,
    TResult? Function(DocumentLoadedState value)? loaded,
    TResult? Function(DocumentLoadingState value)? loading,
    TResult? Function(DocumentErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentInitState value)? init,
    TResult Function(DocumentLoadedState value)? loaded,
    TResult Function(DocumentLoadingState value)? loading,
    TResult Function(DocumentErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentViewStateCopyWith<$Res> {
  factory $DocumentViewStateCopyWith(
          DocumentViewState value, $Res Function(DocumentViewState) then) =
      _$DocumentViewStateCopyWithImpl<$Res, DocumentViewState>;
}

/// @nodoc
class _$DocumentViewStateCopyWithImpl<$Res, $Val extends DocumentViewState>
    implements $DocumentViewStateCopyWith<$Res> {
  _$DocumentViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DocumentInitStateCopyWith<$Res> {
  factory _$$DocumentInitStateCopyWith(
          _$DocumentInitState value, $Res Function(_$DocumentInitState) then) =
      __$$DocumentInitStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocumentInitStateCopyWithImpl<$Res>
    extends _$DocumentViewStateCopyWithImpl<$Res, _$DocumentInitState>
    implements _$$DocumentInitStateCopyWith<$Res> {
  __$$DocumentInitStateCopyWithImpl(
      _$DocumentInitState _value, $Res Function(_$DocumentInitState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DocumentInitState extends DocumentInitState {
  const _$DocumentInitState() : super._();

  @override
  String toString() {
    return 'DocumentViewState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DocumentInitState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List document) loaded,
    required TResult Function() loading,
    required TResult Function(String msg) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Uint8List document)? loaded,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List document)? loaded,
    TResult Function()? loading,
    TResult Function(String msg)? error,
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
    required TResult Function(DocumentInitState value) init,
    required TResult Function(DocumentLoadedState value) loaded,
    required TResult Function(DocumentLoadingState value) loading,
    required TResult Function(DocumentErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentInitState value)? init,
    TResult? Function(DocumentLoadedState value)? loaded,
    TResult? Function(DocumentLoadingState value)? loading,
    TResult? Function(DocumentErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentInitState value)? init,
    TResult Function(DocumentLoadedState value)? loaded,
    TResult Function(DocumentLoadingState value)? loading,
    TResult Function(DocumentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class DocumentInitState extends DocumentViewState {
  const factory DocumentInitState() = _$DocumentInitState;
  const DocumentInitState._() : super._();
}

/// @nodoc
abstract class _$$DocumentLoadedStateCopyWith<$Res> {
  factory _$$DocumentLoadedStateCopyWith(_$DocumentLoadedState value,
          $Res Function(_$DocumentLoadedState) then) =
      __$$DocumentLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Uint8List document});
}

/// @nodoc
class __$$DocumentLoadedStateCopyWithImpl<$Res>
    extends _$DocumentViewStateCopyWithImpl<$Res, _$DocumentLoadedState>
    implements _$$DocumentLoadedStateCopyWith<$Res> {
  __$$DocumentLoadedStateCopyWithImpl(
      _$DocumentLoadedState _value, $Res Function(_$DocumentLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? document = null,
  }) {
    return _then(_$DocumentLoadedState(
      document: null == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$DocumentLoadedState extends DocumentLoadedState {
  const _$DocumentLoadedState({required this.document}) : super._();

  @override
  final Uint8List document;

  @override
  String toString() {
    return 'DocumentViewState.loaded(document: $document)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentLoadedState &&
            const DeepCollectionEquality().equals(other.document, document));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(document));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentLoadedStateCopyWith<_$DocumentLoadedState> get copyWith =>
      __$$DocumentLoadedStateCopyWithImpl<_$DocumentLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List document) loaded,
    required TResult Function() loading,
    required TResult Function(String msg) error,
  }) {
    return loaded(document);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Uint8List document)? loaded,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
  }) {
    return loaded?.call(document);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List document)? loaded,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(document);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentInitState value) init,
    required TResult Function(DocumentLoadedState value) loaded,
    required TResult Function(DocumentLoadingState value) loading,
    required TResult Function(DocumentErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentInitState value)? init,
    TResult? Function(DocumentLoadedState value)? loaded,
    TResult? Function(DocumentLoadingState value)? loading,
    TResult? Function(DocumentErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentInitState value)? init,
    TResult Function(DocumentLoadedState value)? loaded,
    TResult Function(DocumentLoadingState value)? loading,
    TResult Function(DocumentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DocumentLoadedState extends DocumentViewState {
  const factory DocumentLoadedState({required final Uint8List document}) =
      _$DocumentLoadedState;
  const DocumentLoadedState._() : super._();

  Uint8List get document;
  @JsonKey(ignore: true)
  _$$DocumentLoadedStateCopyWith<_$DocumentLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DocumentLoadingStateCopyWith<$Res> {
  factory _$$DocumentLoadingStateCopyWith(_$DocumentLoadingState value,
          $Res Function(_$DocumentLoadingState) then) =
      __$$DocumentLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DocumentLoadingStateCopyWithImpl<$Res>
    extends _$DocumentViewStateCopyWithImpl<$Res, _$DocumentLoadingState>
    implements _$$DocumentLoadingStateCopyWith<$Res> {
  __$$DocumentLoadingStateCopyWithImpl(_$DocumentLoadingState _value,
      $Res Function(_$DocumentLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DocumentLoadingState extends DocumentLoadingState {
  const _$DocumentLoadingState() : super._();

  @override
  String toString() {
    return 'DocumentViewState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DocumentLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List document) loaded,
    required TResult Function() loading,
    required TResult Function(String msg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Uint8List document)? loaded,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List document)? loaded,
    TResult Function()? loading,
    TResult Function(String msg)? error,
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
    required TResult Function(DocumentInitState value) init,
    required TResult Function(DocumentLoadedState value) loaded,
    required TResult Function(DocumentLoadingState value) loading,
    required TResult Function(DocumentErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentInitState value)? init,
    TResult? Function(DocumentLoadedState value)? loaded,
    TResult? Function(DocumentLoadingState value)? loading,
    TResult? Function(DocumentErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentInitState value)? init,
    TResult Function(DocumentLoadedState value)? loaded,
    TResult Function(DocumentLoadingState value)? loading,
    TResult Function(DocumentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DocumentLoadingState extends DocumentViewState {
  const factory DocumentLoadingState() = _$DocumentLoadingState;
  const DocumentLoadingState._() : super._();
}

/// @nodoc
abstract class _$$DocumentErrorStateCopyWith<$Res> {
  factory _$$DocumentErrorStateCopyWith(_$DocumentErrorState value,
          $Res Function(_$DocumentErrorState) then) =
      __$$DocumentErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$DocumentErrorStateCopyWithImpl<$Res>
    extends _$DocumentViewStateCopyWithImpl<$Res, _$DocumentErrorState>
    implements _$$DocumentErrorStateCopyWith<$Res> {
  __$$DocumentErrorStateCopyWithImpl(
      _$DocumentErrorState _value, $Res Function(_$DocumentErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$DocumentErrorState(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DocumentErrorState extends DocumentErrorState {
  const _$DocumentErrorState({required this.msg}) : super._();

  @override
  final String msg;

  @override
  String toString() {
    return 'DocumentViewState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentErrorState &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentErrorStateCopyWith<_$DocumentErrorState> get copyWith =>
      __$$DocumentErrorStateCopyWithImpl<_$DocumentErrorState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Uint8List document) loaded,
    required TResult Function() loading,
    required TResult Function(String msg) error,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Uint8List document)? loaded,
    TResult? Function()? loading,
    TResult? Function(String msg)? error,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Uint8List document)? loaded,
    TResult Function()? loading,
    TResult Function(String msg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocumentInitState value) init,
    required TResult Function(DocumentLoadedState value) loaded,
    required TResult Function(DocumentLoadingState value) loading,
    required TResult Function(DocumentErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DocumentInitState value)? init,
    TResult? Function(DocumentLoadedState value)? loaded,
    TResult? Function(DocumentLoadingState value)? loading,
    TResult? Function(DocumentErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocumentInitState value)? init,
    TResult Function(DocumentLoadedState value)? loaded,
    TResult Function(DocumentLoadingState value)? loading,
    TResult Function(DocumentErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DocumentErrorState extends DocumentViewState {
  const factory DocumentErrorState({required final String msg}) =
      _$DocumentErrorState;
  const DocumentErrorState._() : super._();

  String get msg;
  @JsonKey(ignore: true)
  _$$DocumentErrorStateCopyWith<_$DocumentErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
