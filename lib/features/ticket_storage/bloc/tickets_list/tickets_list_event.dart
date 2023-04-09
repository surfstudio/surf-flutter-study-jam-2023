part of 'tickets_list_bloc.dart';

@freezed
class TicketsListEvent with _$TicketsListEvent {
  const TicketsListEvent._();
  const factory TicketsListEvent.load() = TicketsListLoadEvent;
  const factory TicketsListEvent.addTicket({
    required String url,
    required Function() onSuccess,
  }) = TicketsListAddTicketEvent;
}
