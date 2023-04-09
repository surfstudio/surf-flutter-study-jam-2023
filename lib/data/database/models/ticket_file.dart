import 'package:hive/hive.dart';

part 'ticket_file.g.dart';

@HiveType(typeId: 0)
class TicketFile extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String filePath;

  @HiveField(2)
  final int receivedBytes;

  @HiveField(3)
  final int totalBytes;

  @HiveField(4)
  final DateTime datetime;

  TicketFile({
    required this.name,
    required this.filePath,
    required this.receivedBytes,
    required this.totalBytes,
    required this.datetime,
  });
}
