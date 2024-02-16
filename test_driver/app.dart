// ignore: avoid_relative_lib_imports
import 'package:booking/main.dart' as booking;
import 'package:flutter_driver/driver_extension.dart';
// import 'dart:developer';
import 'package:test/test.dart';

void main() {
  // This line enables the extension
  enableFlutterDriverExtension();

  // Call the `main()` function of your app or call `runApp` with any widget you
  // are interested in testing.
  booking.main();

  test('Test - Main function return Normally', () {
    expect(() => booking.main(), returnsNormally);
  });
}
