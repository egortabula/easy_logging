import 'package:logging/logging.dart';

/// An extension on `Object` to provide logging utilities.
///
/// This extension allows any Dart object to log messages with
/// context about the object's runtime type (class name).
///
/// Example:
/// ```dart
/// MyClass().logInfo("This is an info log.");
/// ```
extension EasyLogExtension on Object {
  /// Logs an informational message.
  ///
  /// Use this to log messages that are general information about
  /// the state or progress of the application.
  ///
  /// [message]: The message to log.
  /// [error]: (Optional) An error object associated with this log.
  /// [stackTrace]: (Optional) A stack trace associated with this log.
  void logInfo(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final className = runtimeType;
    Logger(className.toString()).info(message, error, stackTrace);
  }

  /// Logs an error message.
  ///
  /// Use this to log messages about unexpected errors or failures
  /// in the application.
  ///
  /// [message]: The message to log.
  /// [error]: (Optional) An error object associated with this log.
  /// [stackTrace]: (Optional) A stack trace associated with this log.
  void logError(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final className = runtimeType;
    Logger(className.toString()).severe(message, error, stackTrace);
  }

  /// Logs a configuration message.
  ///
  /// Use this to log messages related to the configuration or setup
  /// of the application or its components.
  ///
  /// [message]: The message to log.
  /// [error]: (Optional) An error object associated with this log.
  /// [stackTrace]: (Optional) A stack trace associated with this log.
  void logConfig(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final className = runtimeType;
    Logger(className.toString()).config(message, error, stackTrace);
  }

  /// Logs a warning message.
  ///
  /// Use this to log messages that indicate a potential problem or
  /// an unusual situation that requires attention.
  ///
  /// [message]: The message to log.
  /// [error]: (Optional) An error object associated with this log.
  /// [stackTrace]: (Optional) A stack trace associated with this log.
  void logWarning(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final className = runtimeType;
    Logger(className.toString()).warning(message, error, stackTrace);
  }

  /// Logs a debug message.
  ///
  /// Use this to log messages that are helpful for debugging during
  /// development. These logs are typically verbose and not intended
  /// for production use.
  ///
  /// [message]: The message to log.
  /// [error]: (Optional) An error object associated with this log.
  /// [stackTrace]: (Optional) A stack trace associated with this log.
  void logDebug(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final className = runtimeType;
    Logger(className.toString()).fine(message, error, stackTrace);
  }

  /// Logs a trace message.
  ///
  /// Use this to log highly detailed information, often useful for
  /// tracing the exact flow of execution in the application.
  ///
  /// [message]: The message to log.
  /// [error]: (Optional) An error object associated with this log.
  /// [stackTrace]: (Optional) A stack trace associated with this log.
  void logTrace(
    String message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    final className = runtimeType;
    Logger(className.toString()).finer(message, error, stackTrace);
  }
}
