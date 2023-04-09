part of 'ticket_storage_bloc.dart';

abstract class TicketStorageState extends Equatable {
  const TicketStorageState();
}

class TicketListLoadState extends TicketStorageState {
  @override
  List<Object?> get props => [];
}

class TicketShowListState extends TicketStorageState {
  final List<Ticket> listTicket;

  @override
  List<Object?> get props => [listTicket];

  const TicketShowListState(this.listTicket);

  @override
  String toString() {
    return 'Показать список билетов. Количество билетов = ${listTicket.length}';
  }
}

class TicketSelectedState extends TicketStorageState {
  final Ticket ticket;

  @override
  List<Object?> get props => [ticket];

  const TicketSelectedState(this.ticket);

  @override
  String toString() {
    return 'Выбран билет. Полный путь к билету = ${ticket.downloadLink}';
  }
}