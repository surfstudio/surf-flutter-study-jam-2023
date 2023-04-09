import 'package:flutter/cupertino.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/theme.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_loading_states.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_type.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_screen.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_wm.dart';

class TicketStorageWMMock extends Mock implements ITicketStorageWM {}

void main() {
  TicketStorageWMMock setupEmptyScreenWM(List<TicketEntity> tickets) {
    final wm = TicketStorageWMMock();
    when(() => wm.title).thenReturn('Хранение билетов');
    when(() => wm.noDataMessage).thenReturn('Здесь пока ничего нет');
    when(() => wm.noDataMessageStyle)
        .thenReturn(appTheme.textTheme.titleMedium!);
    when(() => wm.ticketList).thenReturn(ValueNotifier(tickets));
    when(() => wm.addButtonLabel).thenReturn('Добавить');

    return wm;
  }

  testGoldens(
    'TicketStorageScreen empty',
    (tester) async {
      const screen = TicketStorageScreen();
      await tester.pumpWidgetBuilder(
        screen.build(setupEmptyScreenWM([])),
        wrapper: materialAppWrapper(theme: appTheme),
      );
      await multiScreenGolden(
        tester,
        'ticket_storage_screen_0_initial',
      );
    },
  );

  testGoldens(
    'TicketStorageScreen data',
    (tester) async {
      const screen = TicketStorageScreen();
      await tester.pumpWidgetBuilder(
        screen.build(setupEmptyScreenWM(_mockTickets)),
        wrapper: materialAppWrapper(theme: appTheme),
      );
      await multiScreenGolden(
        tester,
        'ticket_storage_screen_1_data_loaded',
      );
    },
  );
}

const _mockTickets = [
  TicketEntity(
    id: 'id',
    name: 'Ticket 1',
    ticketType: TicketType.airplane,
    loadingState: TicketLoadingStates.waiting,
    loadingProgress: 0,
  ),
  TicketEntity(
    id: 'id',
    name: 'Ticket 1',
    ticketType: TicketType.train,
    loadingState: TicketLoadingStates.loaded,
    loadingProgress: 0,
  ),
];
