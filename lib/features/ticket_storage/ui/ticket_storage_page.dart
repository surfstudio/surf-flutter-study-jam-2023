import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/style_themes.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/loading.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/ticket_tile.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/url_bottom_sheet.dart';

import '../bloc/tickets_list/tickets_list_bloc.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatelessWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Хранение билетов',
          style: StyleThemes.commonTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => const UrlBottomSheet(),
          );
        },
        child: const Text(
          'Добавить',
          style: StyleThemes.commonTextStyle,
        ),
      ),
      body: Stack(
        children: [
          BlocBuilder<TicketsListBloc, TicketsListState>(
            buildWhen: (previous, current) => current is TicketsListLoadedState,
            builder: (context, state) {
              if (state is TicketsListLoadedState) {
                if (state.tickets.isNotEmpty) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final ticket = state.tickets[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TicketTile(ticket: ticket),
                      );
                    },
                    itemCount: state.tickets.length,
                  );
                } else {
                  return const Center(
                    child: Text(
                      'Здесь пока ничего нет',
                      style: StyleThemes.commonTextStyle,
                    ),
                  );
                }
              }
              return const SizedBox();
            },
          ),
          BlocBuilder<TicketsListBloc, TicketsListState>(
            builder: (context, state) {
              if (state is TicketsListLoadingState) {
                return const Loading();
              }
              return const SizedBox();
            },
          ),
        ],
      ),
    );
  }
}
