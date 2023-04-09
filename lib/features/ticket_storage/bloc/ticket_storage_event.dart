part of 'ticket_storage_bloc.dart';

abstract class TicketStorageEvent extends Equatable {
  const TicketStorageEvent();
}

class TicketListLoadEvent extends TicketStorageEvent {
  @override
  List<Object> get props => [];
}

class TicketListShowEvent extends TicketStorageEvent {
  final List<Ticket> listTicket;

  @override
  List<Object> get props => [];

  const TicketListShowEvent(this.listTicket);
}

class TicketSelectEvent extends TicketStorageEvent {
  final Ticket ticket;

  @override
  List<Object> get props => [];

  const TicketSelectEvent(this.ticket);
}

class TicketRemoveEvent extends TicketStorageEvent {
  final Ticket ticket;

  @override
  List<Object> get props => [];

  const TicketRemoveEvent(this.ticket);
}