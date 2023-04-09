import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/screens/ticket_storage/ticket_storage_screen.dart';

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

  final model = TicketStorageModel();

  return TicketStorageWM(model, appLocalization!, themeData);
}

/// WM для [TicketStorageScreen].
class TicketStorageWM
    extends WidgetModel<TicketStorageScreen, TicketStorageModel> {
  final AppLocalizations _l10n;
  final ThemeData _themeData;

  /// Заголовок экрана.
  String get title => _l10n.ticketStorageAppBarTitle;

  /// Сообщение при отсутствии данных на экране.
  String get noDataMessage => _l10n.noDataMessage;

  /// Стиль сообщения об ошибки взятый из темы.
  TextStyle get noDataMessageStyle =>
      _assertTextStyle(_themeData.textTheme.titleMedium);

  /// Лейбл кнопки "Добавить".
  String get addButtonLabel => _l10n.addButton;

  /// Список добавленных билетов.
  ValueListenable<Iterable<TicketEntity>> get ticketList => model.ticketList;

  /// @nodoc
  TicketStorageWM(super.model, this._l10n, this._themeData);

  /// Действие при нажатии на кнопку "добавить".
  void onAddTicket() {
    throw UnimplementedError();
  }

  TextStyle _assertTextStyle(TextStyle? style) {
    assert(style != null, 'Выбранный стиль не задан в теме приложения');

    return style ?? const TextStyle();
  }
}
