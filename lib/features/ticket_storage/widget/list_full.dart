import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/data/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/bloc/ticket_storage_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widget/ticket/ticketItem.dart';

class ListFull extends StatelessWidget {

  const ListFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TicketStorageBloc, TicketStorageState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: (state.props.first as List<Ticket>).length,
          itemBuilder: (context, position) {

            return TicketItem((state.props.first as List<Ticket>)[position]);
          },
        );
      },
    );
  }
}
