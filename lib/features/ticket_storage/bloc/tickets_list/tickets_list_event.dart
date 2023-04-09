part of 'tickets_list_bloc.dart';

@freezed
class TicketsListEvent with _$TicketsListEvent {
  const TicketsListEvent._();
  const factory TicketsListEvent.load() = TicketsListLoadEvent;
  const factory TicketsListEvent.addTicket({
    required String url,
    required Function() onSuccess,
    required Function(String msg) onError,
  }) = TicketsListAddTicketEvent;
  const factory TicketsListEvent.downloadTickets({
    required List<String> keys,
  }) = DownloadTicketsEvent;
  const factory TicketsListEvent.pauseDownloadForTicket({
    required String key,
  }) = PauseDownloadForTicketEvent;
}
