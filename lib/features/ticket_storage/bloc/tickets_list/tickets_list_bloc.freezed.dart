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
    required TResult Function(String url, dynamic Function() onSuccess)
        addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess)? addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess)? addTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
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
    required TResult Function(String url, dynamic Function() onSuccess)
        addTicket,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess)? addTicket,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess)? addTicket,
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
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
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
  $Res call({String url, dynamic Function() onSuccess});
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
    ));
  }
}

/// @nodoc

class _$TicketsListAddTicketEvent extends TicketsListAddTicketEvent {
  const _$TicketsListAddTicketEvent(
      {required this.url, required this.onSuccess})
      : super._();

  @override
  final String url;
  @override
  final dynamic Function() onSuccess;

  @override
  String toString() {
    return 'TicketsListEvent.addTicket(url: $url, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsListAddTicketEvent &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, onSuccess);

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
    required TResult Function(String url, dynamic Function() onSuccess)
        addTicket,
  }) {
    return addTicket(url, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function(String url, dynamic Function() onSuccess)? addTicket,
  }) {
    return addTicket?.call(url, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function(String url, dynamic Function() onSuccess)? addTicket,
    required TResult orElse(),
  }) {
    if (addTicket != null) {
      return addTicket(url, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TicketsListLoadEvent value) load,
    required TResult Function(TicketsListAddTicketEvent value) addTicket,
  }) {
    return addTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TicketsListLoadEvent value)? load,
    TResult? Function(TicketsListAddTicketEvent value)? addTicket,
  }) {
    return addTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TicketsListLoadEvent value)? load,
    TResult Function(TicketsListAddTicketEvent value)? addTicket,
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
          required final dynamic Function() onSuccess}) =
      _$TicketsListAddTicketEvent;
  const TicketsListAddTicketEvent._() : super._();

  String get url;
  dynamic Function() get onSuccess;
  @JsonKey(ignore: true)
  _$$TicketsListAddTicketEventCopyWith<_$TicketsListAddTicketEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(List<Ticket> tickets) loaded,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets)? loaded,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets)? loaded,
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
    required TResult Function(List<Ticket> tickets) loaded,
    required TResult Function() loading,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets)? loaded,
    TResult? Function()? loading,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets)? loaded,
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
  $Res call({List<Ticket> tickets});
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
  }) {
    return _then(_$TicketsListLoadedState(
      tickets: null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$TicketsListLoadedState extends TicketsListLoadedState {
  const _$TicketsListLoadedState({required final List<Ticket> tickets})
      : _tickets = tickets,
        super._();

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketsListState.loaded(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketsListLoadedState &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

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
    required TResult Function(List<Ticket> tickets) loaded,
    required TResult Function() loading,
  }) {
    return loaded(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets)? loaded,
    TResult? Function()? loading,
  }) {
    return loaded?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets)? loaded,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tickets);
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
  const factory TicketsListLoadedState({required final List<Ticket> tickets}) =
      _$TicketsListLoadedState;
  const TicketsListLoadedState._() : super._();

  List<Ticket> get tickets;
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
    required TResult Function(List<Ticket> tickets) loaded,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(List<Ticket> tickets)? loaded,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(List<Ticket> tickets)? loaded,
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
