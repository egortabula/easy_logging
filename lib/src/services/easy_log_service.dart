import 'dart:async';

import 'package:easy_logging/src/extensions/easy_log_extension.dart';
import 'package:easy_logging/src/log_printer/i_log_printer.dart';
import 'package:easy_logging/src/log_printer/logger_log_printer.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';

class EasyLogService extends GetxService {
  EasyLogService({
    ILogPrinter? logPrinter,
  }) : _logPrinter = logPrinter ?? LoggerLogPrinter();

  final ILogPrinter _logPrinter;

  /// A subscription to listen for log records and process them.
  // ignore: cancel_subscriptions
  late final StreamSubscription<LogRecord> _logListener;

  @override
  void onInit() {
    Logger.root.info('🚀 Initializing EasyLog Service...');
    _logListener = Logger.root.onRecord.listen(_logPrinter.logToConsole);
    logInfo('✅ GoodLog service initialized and listening for your logs...');
    super.onInit();
  }

  @override
  void onClose() {
    _logListener.cancel();
    super.onClose();
  }
}
