import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket.dart';

class TicketTile extends StatelessWidget {
  final Ticket ticket;

  const TicketTile({
    super.key,
    required this.ticket,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.train),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ticket.name),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: LinearProgressIndicator(
                    value: 0,
                  ),
                ),
                Text('Ожидает начала загрузки'),
              ],
            ),
          ),
        ),
        const Icon(Icons.download),
      ],
    );
  }
}
