import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/ticket_storage_bloc_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/TicketsRepository/tickets_local_storage_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/TicketsRepository/tickets_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ticket_storage_page.dart';

//TODO: убрать в сервис
late SharedPreferences sharedPreferences;
void main() async {
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'surf_flutter_study_jam_2023_michurin',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: RepositoryProvider<ITicketsRepository>(
        create: (context) =>
            TicketsLocalStorageRepository(sharedPreferences: sharedPreferences),
        child: BlocProvider(
          create: (context) => TicketStorageBlocBloc(
              ticketsRepository:
                  RepositoryProvider.of<ITicketsRepository>(context)),
          child: const TicketStoragePage(),
        ),
      ),
    );
  }
}
