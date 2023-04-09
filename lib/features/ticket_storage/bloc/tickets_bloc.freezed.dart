// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketUrl) addTicketUrl,
    required TResult Function(String ticketId) loadTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketUrl)? addTicketUrl,
    TResult? Function(String ticketId)? loadTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketUrl)? addTicketUrl,
    TResult Function(String ticketId)? loadTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTicketUrl value) addTicketUrl,
    required TResult Function(_LoadTicket value) loadTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTicketUrl value)? addTicketUrl,
    TResult? Function(_LoadTicket value)? loadTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTicketUrl value)? addTicketUrl,
    TResult Function(_LoadTicket value)? loadTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsEventCopyWith<$Res> {
  factory $TicketsEventCopyWith(
          TicketsEvent value, $Res Function(TicketsEvent) then) =
      _$TicketsEventCopyWithImpl<$Res, TicketsEvent>;
}

/// @nodoc
class _$TicketsEventCopyWithImpl<$Res, $Val extends TicketsEvent>
    implements $TicketsEventCopyWith<$Res> {
  _$TicketsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TicketsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketUrl) addTicketUrl,
    required TResult Function(String ticketId) loadTicket,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketUrl)? addTicketUrl,
    TResult? Function(String ticketId)? loadTicket,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketUrl)? addTicketUrl,
    TResult Function(String ticketId)? loadTicket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTicketUrl value) addTicketUrl,
    required TResult Function(_LoadTicket value) loadTicket,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTicketUrl value)? addTicketUrl,
    TResult? Function(_LoadTicket value)? loadTicket,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTicketUrl value)? addTicketUrl,
    TResult Function(_LoadTicket value)? loadTicket,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TicketsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddTicketUrlCopyWith<$Res> {
  factory _$$_AddTicketUrlCopyWith(
          _$_AddTicketUrl value, $Res Function(_$_AddTicketUrl) then) =
      __$$_AddTicketUrlCopyWithImpl<$Res>;
  @useResult
  $Res call({String ticketUrl});
}

/// @nodoc
class __$$_AddTicketUrlCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_AddTicketUrl>
    implements _$$_AddTicketUrlCopyWith<$Res> {
  __$$_AddTicketUrlCopyWithImpl(
      _$_AddTicketUrl _value, $Res Function(_$_AddTicketUrl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketUrl = null,
  }) {
    return _then(_$_AddTicketUrl(
      null == ticketUrl
          ? _value.ticketUrl
          : ticketUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddTicketUrl implements _AddTicketUrl {
  const _$_AddTicketUrl(this.ticketUrl);

  @override
  final String ticketUrl;

  @override
  String toString() {
    return 'TicketsEvent.addTicketUrl(ticketUrl: $ticketUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTicketUrl &&
            (identical(other.ticketUrl, ticketUrl) ||
                other.ticketUrl == ticketUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTicketUrlCopyWith<_$_AddTicketUrl> get copyWith =>
      __$$_AddTicketUrlCopyWithImpl<_$_AddTicketUrl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketUrl) addTicketUrl,
    required TResult Function(String ticketId) loadTicket,
  }) {
    return addTicketUrl(ticketUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketUrl)? addTicketUrl,
    TResult? Function(String ticketId)? loadTicket,
  }) {
    return addTicketUrl?.call(ticketUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketUrl)? addTicketUrl,
    TResult Function(String ticketId)? loadTicket,
    required TResult orElse(),
  }) {
    if (addTicketUrl != null) {
      return addTicketUrl(ticketUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTicketUrl value) addTicketUrl,
    required TResult Function(_LoadTicket value) loadTicket,
  }) {
    return addTicketUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTicketUrl value)? addTicketUrl,
    TResult? Function(_LoadTicket value)? loadTicket,
  }) {
    return addTicketUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTicketUrl value)? addTicketUrl,
    TResult Function(_LoadTicket value)? loadTicket,
    required TResult orElse(),
  }) {
    if (addTicketUrl != null) {
      return addTicketUrl(this);
    }
    return orElse();
  }
}

abstract class _AddTicketUrl implements TicketsEvent {
  const factory _AddTicketUrl(final String ticketUrl) = _$_AddTicketUrl;

  String get ticketUrl;
  @JsonKey(ignore: true)
  _$$_AddTicketUrlCopyWith<_$_AddTicketUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadTicketCopyWith<$Res> {
  factory _$$_LoadTicketCopyWith(
          _$_LoadTicket value, $Res Function(_$_LoadTicket) then) =
      __$$_LoadTicketCopyWithImpl<$Res>;
  @useResult
  $Res call({String ticketId});
}

/// @nodoc
class __$$_LoadTicketCopyWithImpl<$Res>
    extends _$TicketsEventCopyWithImpl<$Res, _$_LoadTicket>
    implements _$$_LoadTicketCopyWith<$Res> {
  __$$_LoadTicketCopyWithImpl(
      _$_LoadTicket _value, $Res Function(_$_LoadTicket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketId = null,
  }) {
    return _then(_$_LoadTicket(
      null == ticketId
          ? _value.ticketId
          : ticketId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadTicket implements _LoadTicket {
  const _$_LoadTicket(this.ticketId);

  @override
  final String ticketId;

  @override
  String toString() {
    return 'TicketsEvent.loadTicket(ticketId: $ticketId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadTicket &&
            (identical(other.ticketId, ticketId) ||
                other.ticketId == ticketId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticketId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadTicketCopyWith<_$_LoadTicket> get copyWith =>
      __$$_LoadTicketCopyWithImpl<_$_LoadTicket>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String ticketUrl) addTicketUrl,
    required TResult Function(String ticketId) loadTicket,
  }) {
    return loadTicket(ticketId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String ticketUrl)? addTicketUrl,
    TResult? Function(String ticketId)? loadTicket,
  }) {
    return loadTicket?.call(ticketId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String ticketUrl)? addTicketUrl,
    TResult Function(String ticketId)? loadTicket,
    required TResult orElse(),
  }) {
    if (loadTicket != null) {
      return loadTicket(ticketId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddTicketUrl value) addTicketUrl,
    required TResult Function(_LoadTicket value) loadTicket,
  }) {
    return loadTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddTicketUrl value)? addTicketUrl,
    TResult? Function(_LoadTicket value)? loadTicket,
  }) {
    return loadTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddTicketUrl value)? addTicketUrl,
    TResult Function(_LoadTicket value)? loadTicket,
    required TResult orElse(),
  }) {
    if (loadTicket != null) {
      return loadTicket(this);
    }
    return orElse();
  }
}

abstract class _LoadTicket implements TicketsEvent {
  const factory _LoadTicket(final String ticketId) = _$_LoadTicket;

  String get ticketId;
  @JsonKey(ignore: true)
  _$$_LoadTicketCopyWith<_$_LoadTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TicketsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Iterable<TicketEntity> ticketList) linksLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Iterable<TicketEntity> ticketList)? linksLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Iterable<TicketEntity> ticketList)? linksLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LinksLoaded value) linksLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LinksLoaded value)? linksLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LinksLoaded value)? linksLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketsStateCopyWith<$Res> {
  factory $TicketsStateCopyWith(
          TicketsState value, $Res Function(TicketsState) then) =
      _$TicketsStateCopyWithImpl<$Res, TicketsState>;
}

/// @nodoc
class _$TicketsStateCopyWithImpl<$Res, $Val extends TicketsState>
    implements $TicketsStateCopyWith<$Res> {
  _$TicketsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TicketsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Iterable<TicketEntity> ticketList) linksLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Iterable<TicketEntity> ticketList)? linksLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Iterable<TicketEntity> ticketList)? linksLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LinksLoaded value) linksLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LinksLoaded value)? linksLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LinksLoaded value)? linksLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TicketsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LinksLoadedCopyWith<$Res> {
  factory _$$_LinksLoadedCopyWith(
          _$_LinksLoaded value, $Res Function(_$_LinksLoaded) then) =
      __$$_LinksLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Iterable<TicketEntity> ticketList});
}

/// @nodoc
class __$$_LinksLoadedCopyWithImpl<$Res>
    extends _$TicketsStateCopyWithImpl<$Res, _$_LinksLoaded>
    implements _$$_LinksLoadedCopyWith<$Res> {
  __$$_LinksLoadedCopyWithImpl(
      _$_LinksLoaded _value, $Res Function(_$_LinksLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticketList = null,
  }) {
    return _then(_$_LinksLoaded(
      null == ticketList
          ? _value.ticketList
          : ticketList // ignore: cast_nullable_to_non_nullable
              as Iterable<TicketEntity>,
    ));
  }
}

/// @nodoc

class _$_LinksLoaded implements _LinksLoaded {
  const _$_LinksLoaded(this.ticketList);

  @override
  final Iterable<TicketEntity> ticketList;

  @override
  String toString() {
    return 'TicketsState.linksLoaded(ticketList: $ticketList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinksLoaded &&
            const DeepCollectionEquality()
                .equals(other.ticketList, ticketList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ticketList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinksLoadedCopyWith<_$_LinksLoaded> get copyWith =>
      __$$_LinksLoadedCopyWithImpl<_$_LinksLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Iterable<TicketEntity> ticketList) linksLoaded,
  }) {
    return linksLoaded(ticketList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Iterable<TicketEntity> ticketList)? linksLoaded,
  }) {
    return linksLoaded?.call(ticketList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Iterable<TicketEntity> ticketList)? linksLoaded,
    required TResult orElse(),
  }) {
    if (linksLoaded != null) {
      return linksLoaded(ticketList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LinksLoaded value) linksLoaded,
  }) {
    return linksLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LinksLoaded value)? linksLoaded,
  }) {
    return linksLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LinksLoaded value)? linksLoaded,
    required TResult orElse(),
  }) {
    if (linksLoaded != null) {
      return linksLoaded(this);
    }
    return orElse();
  }
}

abstract class _LinksLoaded implements TicketsState {
  const factory _LinksLoaded(final Iterable<TicketEntity> ticketList) =
      _$_LinksLoaded;

  Iterable<TicketEntity> get ticketList;
  @JsonKey(ignore: true)
  _$$_LinksLoadedCopyWith<_$_LinksLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
