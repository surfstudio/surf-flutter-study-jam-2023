part of 'ticket_item_bloc.dart';

abstract class TicketItemEvent extends Equatable {
  const TicketItemEvent();
}

class TicketItemLoadEvent extends TicketItemEvent {
  final int process;

  @override
  List<Object> get props => [process];

  const TicketItemLoadEvent(this.process);
}

class TicketItemShowEvent extends TicketItemEvent {
  final int process;

  @override
  List<Object> get props => [process];

  const TicketItemShowEvent(this.process);
}

class TicketItemSelectEvent extends TicketItemEvent {
  final Ticket ticket;

  @override
  List<Object> get props => [];

  const TicketItemSelectEvent(this.ticket);
}

class TicketItemRemoveEvent extends TicketItemEvent {
  final Ticket ticket;

  @override
  List<Object> get props => [];

  const TicketItemRemoveEvent(this.ticket);
}
