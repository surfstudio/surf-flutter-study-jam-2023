import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/tickets_list/tickets_list_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/ticket_storage_page.dart';
import 'package:dio/dio.dart';

import 'features/ticket_storage/data/models/ticket_dto.dart';
import 'features/ticket_storage/data/repository/tickets_repository.dart';
import 'features/ticket_storage/data/services/tickets_storage_service_abstract.dart';
import 'features/ticket_storage/domain/repositories/tickets_repository_abstract.dart';
import 'features/ticket_storage/enum/ticket_state.dart';
import 'features/ticket_storage/services/tickets_storage_service.dart';

void main() async {
  final dio = Dio();
  await initHive();
  runApp(
    MultiRepositoryProvider(
      providers: [
        // Services
        RepositoryProvider<TicketsStorageServiceAbstract>(
          create: (context) => TicketsStorageService(),
        ),
        // Repositories
        RepositoryProvider<TicketsRepositoryAbstract>(
          create: (context) => TicketsRepository(
            ticketsStorageService:
                context.read<TicketsStorageServiceAbstract>(),
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<TicketsListBloc>(
            create: (context) => TicketsListBloc(
              ticketsRepository: context.read<TicketsRepositoryAbstract>(),
            )..add(const TicketsListEvent.load()),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}

Future initHive() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  registerAdapters();
}

void registerAdapters() {
  Hive
    ..registerAdapter(TicketDtoAdapter())
    ..registerAdapter(TicketStateAdapter());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Jam 2023',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TicketStoragePage(),
    );
  }
}
