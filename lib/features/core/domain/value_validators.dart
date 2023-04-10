import 'package:dartz/dartz.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  }

  return left(ValueFailure.exceedingLength(
    failedValue: input,
    max: maxLength,
  ));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }

  return right(input);
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  }

  return right(input);
}
