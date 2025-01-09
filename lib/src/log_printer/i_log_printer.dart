import 'package:logging/logging.dart';

abstract class ILogPrinter {
  ILogPrinter();

  void logToConsole(LogRecord record);
}
