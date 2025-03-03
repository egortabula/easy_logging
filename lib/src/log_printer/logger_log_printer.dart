import 'package:easy_logging/src/log_printer/i_log_printer.dart';
import 'package:logger/logger.dart' as log;
import 'package:logging/logging.dart';

class LoggerLogPrinter implements ILogPrinter {
  LoggerLogPrinter({log.Logger? logger})
      : _logger = logger ??
            log.Logger(
              printer: log.PrettyPrinter(methodCount: 0),
            );

  final log.Logger _logger;

  @override
  void logToConsole(LogRecord record) {
    print('🚀 logToConsole called: ${record.message}'); // <-- Добавь отладку

    switch (record.level) {
      case Level.WARNING:
        _logger.w(
          '${record.loggerName} - ${record.message}'
          '${record.object != null ? ' - ${record.object}' : ''}',
          error: record.error,
          stackTrace: record.stackTrace,
        );

      case Level.SHOUT:
        _logger.f(
          '${record.loggerName} - ${record.message}'
          '${record.object != null ? ' - ${record.object}' : ''}',
          error: record.error,
          stackTrace: record.stackTrace,
        );
      case Level.SEVERE:
        _logger.e(
          '${record.loggerName} - ${record.message}'
          '${record.object != null ? ' - ${record.object}' : ''}',
          error: record.error,
          stackTrace: record.stackTrace,
        );

      case Level.INFO || Level.CONFIG:
        _logger.i(
          '${record.loggerName} - ${record.message}'
          '${record.object != null ? ' - ${record.object}' : ''}',
        );
      case Level.FINE:
        _logger.d(
          '${record.loggerName} - ${record.message}'
          '${record.object != null ? ' - ${record.object}' : ''}',
        );
      case Level.FINER || Level.FINEST:
        _logger.t(
          '${record.loggerName} - ${record.message}'
          '${record.object != null ? ' - ${record.object}' : ''}',
        );
    }
  }
}
