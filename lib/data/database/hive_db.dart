import 'package:hive_flutter/hive_flutter.dart';
import 'package:surf_flutter_study_jam_2023/data/database/box_names.dart';
import 'package:surf_flutter_study_jam_2023/data/database/models/ticket_file.dart';

class HiveDB {
  static Future<void> initialize() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TicketFileAdapter());

    await Hive.openBox<TicketFile>(BoxNames.ticket);
  }

  Box<TicketFile> getBoxTickets() => Hive.box<TicketFile>(BoxNames.ticket);
}
