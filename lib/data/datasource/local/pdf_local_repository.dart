import 'package:hive/hive.dart';
import 'package:surf_flutter_study_jam_2023/data/database/hive_db.dart';
import 'package:surf_flutter_study_jam_2023/data/database/models/ticket_file.dart';

class PdfLocalRepository {
  final Box<TicketFile> _boxTickets;

  PdfLocalRepository(this._boxTickets);

  Future<void> addTicket(TicketFile ticket) async {
    _boxTickets.add(ticket);
  }

  Future<void> savePdfFile(TicketFile file) async {
    final box = HiveDB().getBoxTickets();
    await box.put(file.name, file);
  }
}
