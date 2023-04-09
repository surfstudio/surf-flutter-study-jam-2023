import 'package:hive/hive.dart';

import '../../enum/ticket_state.dart';
part 'ticket_dto.g.dart';

@HiveType(typeId: 0)
class TicketDto {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String url;
  @HiveField(2)
  final TicketState state;
  @HiveField(3)
  final DateTime timeAdded;
  @HiveField(4)
  final String key;

  TicketDto({
    required this.name,
    required this.url,
    required this.state,
    required this.timeAdded,
    required this.key,
  });
}
