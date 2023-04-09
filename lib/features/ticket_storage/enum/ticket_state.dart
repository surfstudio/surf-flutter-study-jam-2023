import 'package:hive/hive.dart';
part 'ticket_state.g.dart';

@HiveType(typeId: 1)
enum TicketState {
  @HiveField(0)
  notLoaded,
  @HiveField(1)
  loading,
  @HiveField(2)
  paused,
  @HiveField(3)
  loaded;
}
