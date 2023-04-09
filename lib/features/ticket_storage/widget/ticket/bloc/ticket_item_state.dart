part of 'ticket_item_bloc.dart';

abstract class TicketItemState extends Equatable {
  const TicketItemState();
}

class TicketItemLoadState extends TicketItemState {
  final int process;
  @override
  List<Object?> get props => [process];

  const TicketItemLoadState(this.process);
}

class TicketItemShowState extends TicketItemState {

  @override
  List<Object?> get props => [];

  const TicketItemShowState();


}

class TicketSelectedState extends TicketItemState {
  final Ticket ticket;

  @override
  List<Object?> get props => [ticket];

  const TicketSelectedState(this.ticket);

  @override
  String toString() {
    return 'Выбран билет. Полный путь к билету = ${ticket.downloadLink}';
  }
}
