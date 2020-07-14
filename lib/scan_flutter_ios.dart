import 'dart:async';

import 'package:flutter/services.dart';

class ScanFlutterIos {
  static const MethodChannel _channel = const MethodChannel('scan_flutter_ios');

  static Future<String> scan() async {
    final String version = await _channel.invokeMethod('scan');
    return version;
  }
}
