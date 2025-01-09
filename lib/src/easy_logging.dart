import 'package:easy_logging/src/services/easy_log_service.dart';
import 'package:get/get.dart';

export 'extensions/easy_log_extension.dart';
export 'log_printer/i_log_printer.dart';
export 'log_printer/logger_log_printer.dart';
export 'mixin/easy_log_mixin.dart';
export 'services/easy_log_service.dart';

/// A service for managing application-wide logging in a structured '
/// 'and customizable way.
///
/// `EasyLogging` initializes a logging service that listens to all log events
/// and outputs them to the console in a formatted style. It provides a
/// singleton instance for convenient usage throughout the application.
///
/// Example:
/// ```dart
/// await EasyLogging.init();
/// printInfo('Hello world');
/// ```
class EasyLogging {
  /// Creates an instance of the `GoodLog` service.
  ///
  /// This constructor sets up an internal logger with a pretty printer.
  const EasyLogging();

  /// Initializes the `EasyLoggingService` service and sets up log listeners.
  ///
  /// Registers the singleton instance with the `Get` service,
  /// sets up a subscription to listen for global log events, and logs
  /// initialization messages to indicate that the service is ready.
  ///
  /// Example:
  /// ```dart
  /// await EasyLogging.init();
  /// ```
  static Future<bool> init() async {
    try {
      await Future(() => Get.put(EasyLogService()));
      return true;
    } catch (e) {
      return false;
    }
  }

  /// Initializes the `EasyLoggingService` service and sets up log listeners.
  ///
  /// Registers the singleton instance with the `Get` service,
  /// sets up a subscription to listen for global log events, and logs
  /// initialization messages to indicate that the service is ready.
  ///
  /// Example:
  /// ```dart
  /// EasyLogging.init();
  /// ```
  static bool initSync() {
    try {
      Get.put(EasyLogService());
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<void> removeService() async {
    await Get.delete<EasyLogService>();
  }

  static bool isServiceInitialized() {
    return Get.isRegistered<EasyLogService>();
  }
}
