import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/core/l10n/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/core/theme/app_theme.dart';
import 'package:surf_flutter_study_jam_2023/data/api/api.dart';
import 'package:surf_flutter_study_jam_2023/data/database/hive_db.dart';
import 'package:surf_flutter_study_jam_2023/data/datasource/local/pdf_local_repository.dart';
import 'package:surf_flutter_study_jam_2023/data/datasource/pdf_repository.dart';
import 'package:surf_flutter_study_jam_2023/data/datasource/remote/pdf_remote_repository.dart';
import 'package:surf_flutter_study_jam_2023/features/cubit/download_pdf_cubit.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ticket_storage_page.dart';

import 'core/constants/app_strings.dart';

Future<void> main() async {
  await HiveDB.initialize();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _api = Api();
  final _boxTickets = HiveDB().getBoxTickets();

  late DownloadPdfCubit _downloadPdfCubit;

  @override
  void initState() {
    super.initState();

    final pdfRepository = PdfRepository(
      pdfLocalRepository: PdfLocalRepository(_boxTickets),
      pdfRemoteRepository: PdfRemoteRepository(_api),
    );

    _downloadPdfCubit = DownloadPdfCubit(pdfRepository);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider<DownloadPdfCubit>(
          create: (context) => _downloadPdfCubit,
        ),
      ],
      child: MaterialApp(
        title: AppStrings.materialAppTitle,
        theme: AppTheme.light,
        home: const TicketStoragePage(),
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
