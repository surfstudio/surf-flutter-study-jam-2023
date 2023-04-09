import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/common_interfaces.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/errors.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/failures.dart';
import 'package:surf_flutter_study_jam_2023/features/core/domain/value_validators.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> implements IValidatable {
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  Either<ValueFailure<T>, T> get value;

  @override
  int get hashCode => value.hashCode;

  const ValueObject();

  @override
  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  String toString() => 'Value($value)';

  /// Throws [UnexpectedValueError] containing the [ValueFailure].
  T getOrCrash() {
    // Id = identity - same as writing (right) => right.
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  T getOrElse(T defaultValue) {
    return value.getOrElse(() => defaultValue);
  }
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v4()),
    );
  }

  const UniqueId._(this.value);

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    return UniqueId._(
      right(uniqueIdStr),
    );
  }
}

class StringSingleLine extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StringSingleLine(String input) {
    return StringSingleLine._(
      validateSingleLine(input),
    );
  }

  const StringSingleLine._(this.value);
}
