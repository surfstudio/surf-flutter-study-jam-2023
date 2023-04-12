import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/di/i_ticket_storage_scope.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/enums/ticket_type.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_screen.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/widgets/add_ticket_dialog.dart';

/// DI для [TicketStorageWM].
TicketStorageWM createWM(
  BuildContext context,
) {
  final appLocalization = AppLocalizations.of(context);
  assert(
    appLocalization != null,
    'Проверьте правильно ли вы сконфигурировали локализацию проекта. О том как это делать можно почитать здесь: https://docs.flutter.dev/development/accessibility-and-localization/internationalization',
  );
  final themeData = Theme.of(context);

  final ticketsScope = context.read<ITicketStorageScope>();
  final model = TicketStorageModel(ticketsScope.ticketsBloc);

  return TicketStorageWM(model, appLocalization!, themeData);
}

/// WM для [TicketStorageScreen].
class TicketStorageWM
    extends WidgetModel<TicketStorageScreen, TicketStorageModel>
    implements ITicketStorageWM {
  final AppLocalizations _l10n;
  final ThemeData _themeData;

  /// Заголовок экрана.
  @override
  String get title => _l10n.ticketStorageAppBarTitle;

  /// Сообщение при отсутствии данных на экране.
  @override
  String get noDataMessage => _l10n.noDataMessage;

  /// Стиль сообщения об ошибки взятый из темы.
  @override
  TextStyle get noDataMessageStyle =>
      _assertTextStyle(_themeData.textTheme.titleMedium);

  /// Лейбл кнопки "Добавить".
  @override
  String get addButtonLabel => _l10n.addButton;

  /// Список добавленных билетов.
  @override
  ValueListenable<Iterable<TicketEntity>> get ticketList => model.ticketList;

  @override
  ValueListenable<bool> get isLoading => model.isDataLoading;

  /// @nodoc
  TicketStorageWM(super.model, this._l10n, this._themeData);

  /// Действие при нажатии на кнопку "добавить".
  @override
  void onAddTicket() {
    showDialog<void>(context: context, builder: _bottomSheetBuilder);
  }

  Widget _bottomSheetBuilder(BuildContext _) {
    return AddTicketDialog(
      l10n: _l10n,
      onAddButtonPressed: _onAddNewTicketLink,
    );
  }

  TextStyle _assertTextStyle(TextStyle? style) {
    assert(style != null, 'Выбранный стиль не задан в теме приложения');

    return style ?? const TextStyle();
  }

  void _onAddNewTicketLink(String link, TicketType type) {
    model.addNewTicketLink(link, type);
  }
}

/// Интерфейс для [TicketStorageWM].
abstract class ITicketStorageWM extends IWidgetModel {
  /// Заголовок экрана.
  String get title;

  /// Сообщение при отсутствии данных на экране.
  String get noDataMessage;

  /// Стиль сообщения об ошибки взятый из темы.
  TextStyle get noDataMessageStyle;

  /// Лейбл кнопки "Добавить".
  String get addButtonLabel;

  /// Список добавленных билетов.
  ValueListenable<Iterable<TicketEntity>> get ticketList;

  /// Экран в состоянии загрузки.
  ValueListenable<bool> get isLoading;

  /// Действие при нажатии на кнопку "добавить".
  void onAddTicket();
}
