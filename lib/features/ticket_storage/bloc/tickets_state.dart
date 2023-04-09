part of 'tickets_bloc.dart';

/// Состояния экрана "Хранение билетов".
@freezed
class TicketsState with _$TicketsState {
  /// Состояние загрузки данных из кеша.
  const factory TicketsState.initial() = _Initial;

  /// Информация о билетах загрузилась.
  const factory TicketsState.linksLoaded(Iterable<TicketEntity> ticketList) =
      _LinksLoaded;
}
