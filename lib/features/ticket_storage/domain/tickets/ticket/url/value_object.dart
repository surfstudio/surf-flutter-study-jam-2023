

import 'package:dartz/dartz.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/failures.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/value_objects.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/value_validators.dart';

class TicketUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TicketUrl(String input) {
    return TicketUrl._(
      validateStringNotEmpty(input)
          .flatMap(validateSingleLine)
          .flatMap(validateTicketUrl),
    );
  }

  const TicketUrl._(this.value);
}

/// Ссылка начинается с http:// или https:// и заканчивается на .pdf.
Either<ValueFailure<String>, String> validateTicketUrl(String input) {
  final r = RegExp(r'^https?://.*\.pdf$');

  if (r.hasMatch(input)) {
    return right(input);
  }

  return left(ValueFailure.invalidFileUrl(
    failedValue: input,
  ));
}