import 'package:dartz/dartz.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/failures.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/value_objects.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/value_validators.dart';

class TicketFilePath extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory TicketFilePath(String input) {
    return TicketFilePath._(
      validateStringNotEmpty(input)
          .flatMap(validateSingleLine),
    );
  }

  const TicketFilePath._(this.value);
}
