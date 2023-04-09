import 'package:hive/hive.dart';

import '../../enum/ticket_state.dart';

class Ticket {
  final String name;
  final String url;
  final TicketState state;
  final DateTime timeAdded;

  Ticket({
    required this.name,
    required this.url,
    required this.state,
    required this.timeAdded,
  });
}
