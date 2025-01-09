import 'package:logging/logging.dart';

mixin EasyLogMixin {
  late final Logger logger = Logger(runtimeType.toString());
}
