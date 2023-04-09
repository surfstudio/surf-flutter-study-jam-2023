import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/tickets_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/di/i_ticket_storage_scope.dart';

/// DI для фичи ticket_storage.
class TicketStorageScope implements ITicketStorageScope {
  @override
  final TicketsBloc ticketsBloc;

  /// @nodoc
  TicketStorageScope({
    required this.ticketsBloc,
  });
}
