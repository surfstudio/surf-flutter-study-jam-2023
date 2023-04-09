import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/data/interactor/ticket_list_interactor.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/ticket/bloc/ticket_item_bloc.dart';

/// Список подключенных провадеров
List<BlocProvider> listMultiBlocProviders = <BlocProvider>[
  BlocProvider<TicketStorageBloc>(
    create: (context) => TicketStorageBloc(context.read<TicketListInteractor>())
      ..add(TicketListLoadEvent()),
  ),
  BlocProvider<TicketItemBloc>(
    create: (context) => TicketItemBloc(context.read<TicketListInteractor>()),
  ),
];
