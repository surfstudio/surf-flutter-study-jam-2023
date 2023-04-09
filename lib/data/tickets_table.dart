import 'package:drift/drift.dart';

@DataClassName('TicketsPersistenceModel')
class TicketsTable extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get status => text()();
  TextColumn get url => text().nullable()();
  TextColumn get filePath => text().nullable()();
  IntColumn get currentSize => integer().nullable()();
  IntColumn get totalSize => integer().nullable()();
  DateTimeColumn get dateCreated => dateTime()();
  @override
  Set<Column> get primaryKey => {id};
}
