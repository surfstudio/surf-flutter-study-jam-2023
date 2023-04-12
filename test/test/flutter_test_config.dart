import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

/// Допустимое отклонение.
///
/// Иногда на разных устройствах голдены генерируются по-разному.
/// Так, часто встречается проблема, что голдены сгенерируемые разработчиком
/// не соответствуют голденам генерируемым на CI. Данная переменная призвана
/// решить эту проблему.
const _tolerance = 0.01;

const _devices = [Device.iphone11];

Future<void> testExecutable(FutureOr<void> Function() testMain) {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();

      if (goldenFileComparator is LocalFileComparator) {
        goldenFileComparator = CustomFileComparator(
          '${(goldenFileComparator as LocalFileComparator).basedir}/goldens',
        );
      }
    },
    config: GoldenToolkitConfiguration(
      defaultDevices: _devices,
      enableRealShadows: true,
    ),
  );
}

class CustomFileComparator extends LocalFileComparator {
  CustomFileComparator(String testFile) : super(Uri.parse(testFile));

  @override
  Future<bool> compare(Uint8List imageBytes, Uri golden) async {
    final result = await GoldenFileComparator.compareLists(
      imageBytes,
      await getGoldenBytes(golden),
    );

    if (!result.passed && result.diffPercent >= _tolerance) {
      final error = await generateFailureOutput(result, golden, basedir);
      throw FlutterError(error);
    }
    if (!result.passed) {
      log(
        'A tolerable difference of ${result.diffPercent * 100}% was found when comparing $golden.',
        level: 2000,
      );
    }

    return result.passed || result.diffPercent <= _tolerance;
  }
}
