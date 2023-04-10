import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/assets/strings/locale/ru.dart';
import 'package:surf_flutter_study_jam_2023/assets/text/text_extension.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/screen/ticket_storage_screen_model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/ui/widgets/tickets/list/widget.dart';

class TicketsWidget extends StatefulWidget {
  final VoidCallback onInit;

  const TicketsWidget({
    super.key,
    required this.onInit,
  });

  @override
  State<TicketsWidget> createState() => _TicketsWidgetState();
}

class _TicketsWidgetState extends State<TicketsWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onInit();
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = AppTextTheme.of(context);

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(
            AppStrings.ticketStorage.ticketsTitle,
            style: textTheme.medium16,
          ),
          floating: true,
          pinned: true,
        ),
        const _TicketsContent(),
      ],
    );
  }
}

class _TicketsContent extends StatelessWidget {
  const _TicketsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model =
        context.select<TicketStorageScreenModel, TicketsData>((s) => s.tickets);

    if (model.loading) {
      return const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return model.data.fold(
      (failure) {
        return SliverToBoxAdapter(
          child:
              Center(child: Text(AppStrings.ticketStorage.unexpectedFailure)),
        );
      },
      (tickets) {
        if (tickets.isEmpty) {
          return SliverToBoxAdapter(
            child: Center(child: Text(AppStrings.ticketStorage.emptyList)),
          );
        }

        return TicketsListWidget(
          tickets: tickets,
        );
      },
    );
  }
}
