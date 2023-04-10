import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/data/tickets_table.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [
    TicketsTable,
  ],
)
class AppDb extends _$AppDb {
  @override
  int get schemaVersion => 1;

  AppDb() : super(_openConnection());
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase.createInBackground(
      file,
      logStatements: true,
    );
  });
}
