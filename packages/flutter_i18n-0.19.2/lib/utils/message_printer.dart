import 'package:flutter/foundation.dart' as Foundation;

class MessagePrinter {
  static debug(final String message) {
    _printMessage("DEBUG", message);
  }

  static info(final String message) {
    _printMessage("INFO", message);
  }

  static _printMessage(final String prefix, final String message) {
    if (!Foundation.kReleaseMode) {
      print("[flutter_i18n $prefix]: $message");
    }
  }
}
