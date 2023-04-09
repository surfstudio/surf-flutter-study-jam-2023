import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/list_empty.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/list_full.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TicketStorageBloc, TicketStorageState>(
          listenWhen: (previousState, state) {
            return true;
          },
          listener: (context, state) {},
        ),
      ],
      child: BlocBuilder<TicketStorageBloc, TicketStorageState>(
        builder: (context, state) {
          return state.props.isEmpty ? const ListEmpty() : const ListFull();
        },
      ),
    );
  }
}
