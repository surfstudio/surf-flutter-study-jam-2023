import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/TicketsRepository/tickets_repository.dart';
import 'package:surf_flutter_study_jam_2023/model/ticket.dart';

class TicketsLocalStorageRepository implements ITicketsRepository {
  TicketsLocalStorageRepository({required this.sharedPreferences});
  final SharedPreferences sharedPreferences;
  @override
  Future<List<String>> getLoadedTickets() async {
    return sharedPreferences.getStringList('SavedTicketsList') ?? [];
  }

  @override
  Future<bool> saveLoadedTickets(List<Ticket> ticketList) {
    List<String> ticketStringList =
        ticketList.expand((element) => [element.name]).toList();
    return sharedPreferences.setStringList(
        'SavedTicketsList', ticketStringList);
  }
}
