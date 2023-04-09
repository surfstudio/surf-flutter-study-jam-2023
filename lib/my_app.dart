import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/di/i_ticket_storage_scope.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/di/ticket_storage_scope.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_screen.dart';

/// Корневой виджет приложения.
class MyApp extends StatelessWidget {
  /// @nodoc
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Async Tour',
      theme: ThemeData(useMaterial3: true),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ru', 'RU')],
      home: Provider<ITicketStorageScope>(
        create: (_) => TicketStorageScope(),
        child: const TicketStorageScreen(),
      ),
    );
  }
}
