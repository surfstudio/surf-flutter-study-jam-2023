import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/failures.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/value_objects.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/status/value_object.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/title/value_object.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/url/value_object.dart';

part 'model.freezed.dart';

@freezed
class TicketModel with _$TicketModel {
  const factory TicketModel({
    required UniqueId id,
    required TicketTitle title,
    required TicketStatus status,
    required DateTime dateCreated,
  }) = _TicketModel;

  const TicketModel._();

  factory TicketModel.empty(DateTime? dateCreated) => TicketModel(
        id: UniqueId(),
        title: TicketTitle(''),
        status: const TicketStatus.initialized(),
        dateCreated: dateCreated ?? DateTime.now(),
      );

  TicketModel editUrl(String url) {
    return copyWith(
      status: TicketStatus.readyToLoadFile(TicketUrl(url)),
    );
  }
}

extension TicketModelX on TicketModel {
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(status.maybeMap(
          readyToLoadFile: (status) => status.url.failureOrUnit,
          orElse: () {
            return right(unit);
          },
        ))
        .fold(some, (_) => none());
  }
}
