
import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/tickets/list/item/widget.dart';

class TicketsListWidget extends StatelessWidget {
  final BuiltList<TicketModel> tickets;

  const TicketsListWidget({
    required this.tickets,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: tickets.length * 2 - 1,
          semanticIndexCallback: (_, index) {
            return index.isEven ? index ~/ 2 : null;
          },
              (context, index) {
            final itemIndex = index ~/ 2;
            if (index.isOdd) {
              return const SizedBox(height: 12.0);
            }

            return TicketListItemWidget(
              ticket: tickets[itemIndex],
              onTap: (ticket) {

              },
            );
          },
        ),
      ),
    );
  }
}