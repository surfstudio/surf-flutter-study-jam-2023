import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_failure.freezed.dart';

@freezed
class TicketFailure with _$TicketFailure {
  const factory TicketFailure.unexpected() = Unexpected;
}
