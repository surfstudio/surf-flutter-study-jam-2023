part of 'tickets_bloc.dart';

/// Use cases
@freezed
class TicketsEvent with _$TicketsEvent {
  /// Пользователь открыл экран с билетами.
  const factory TicketsEvent.started() = _Started;

  /// Добавить билет.
  const factory TicketsEvent.addTicketUrl({
    required String url,
    required TicketType type,
  }) = _AddTicketUrl;

  /// Загрузить билет.
  const factory TicketsEvent.loadTicket(String ticketId) = _LoadTicket;
}
