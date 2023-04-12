part of 'tickets_bloc.dart';

/// Состояния экрана "Хранение билетов".
@freezed
class TicketsState with _$TicketsState {
  /// Состояние загрузки данных из кеша.
  const factory TicketsState.initial() = _Initial;

  /// Информация о билетах обновилась.
  const factory TicketsState.dataUpdated(Iterable<TicketEntity> ticketList) =
      _DataUpdated;

  /// Ошибка загрузки данных.
  const factory TicketsState.error(Exception e) = _Error;
}
