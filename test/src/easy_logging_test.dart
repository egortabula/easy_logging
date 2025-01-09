// ignore_for_file: prefer_const_constructors

import 'package:easy_logging/easy_logging.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() async {
    await EasyLogging.init();
  });
}
