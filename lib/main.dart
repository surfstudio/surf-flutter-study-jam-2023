import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/assets/themes/theme_data.dart';
import 'package:surf_flutter_study_jam_2023/data/database.dart';
import 'package:surf_flutter_study_jam_2023/data/tickets_converter.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/screen/ticket_storage_screen.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/screen/ticket_storage_screen_model.dart';

void main() {
  final database = AppDb();
  final dio = Dio();
  final ticketsRepository = TicketsRepository(
    database,
    TicketModelPersistenceModelConverter(),
    dio,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TicketStorageScreenModel.init(ticketsRepository),
        ),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemeData.lightTheme,
      home: const TicketStorageScreen(),
    );
  }
}
