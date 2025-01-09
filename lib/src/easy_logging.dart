import 'package:easy_logging/src/services/easy_log_service.dart';
import 'package:get/get.dart';

class EasyLogging {
  const EasyLogging();

  static Future<bool> init() async {
    try {
      await Future(() => Get.put(EasyLogService()));
      return true;
    } catch (e) {
      return false;
    }
  }

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
