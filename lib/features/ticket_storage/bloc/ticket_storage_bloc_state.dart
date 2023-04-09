part of 'ticket_storage_bloc_bloc.dart';

@immutable
abstract class TicketStorageBlocState extends Equatable {}

class TicketStorageBlocInitial extends TicketStorageBlocState {
  @override
  List<Object?> get props => [];
}

class TicketStorageBlocEmpty extends TicketStorageBlocState {
  @override
  List<Object?> get props => [];
}

class TicketStorageBlocLoading extends TicketStorageBlocState {
  @override
  List<Object?> get props => [];
}

class TicketStorageBlocLoaded extends TicketStorageBlocState {
  final List<Ticket> listOfLoadedTickets;
  TicketStorageBlocLoaded( {required this.listOfLoadedTickets,});


  @override
  List<Object?> get props => [listOfLoadedTickets];
}