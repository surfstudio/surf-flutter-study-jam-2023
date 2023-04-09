import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/data/interactor/ticket_list_interactor.dart';

/// Список подключенных провадеров
List<ChangeNotifierProvider<ChangeNotifier>> listMultiProviders =
    <ChangeNotifierProvider<TicketListInteractor>>[
      ChangeNotifierProvider(create: (context) {
        return TicketListInteractor()..createDir();
      },
  )
];
