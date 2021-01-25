import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';

class IsFirebaseTestLabActivated {
  static const MethodChannel _channel =
      const MethodChannel('is_firebase_test_lab_activated');

  /// Return `true` if running under Firebase Test Lab (includes pre-launch
  /// report environment) on Android, `false` otherwise.
  static Future<bool> get isFirebaseTestLabActivated async {
    return Platform.isAndroid &&
        await _channel.invokeMethod('isFirebaseTestLabActivated');
  }
}
