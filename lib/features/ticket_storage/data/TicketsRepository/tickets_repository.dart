import 'package:surf_flutter_study_jam_2023/model/ticket.dart';

abstract class ITicketsRepository {
  //Получить список сохранённых в телефонебилетов
  Future<List<String>> getLoadedTickets();

  //Сохранить список сохранённых в телефонебилетов
  Future<bool> saveLoadedTickets(List<Ticket> ticketList);
}
