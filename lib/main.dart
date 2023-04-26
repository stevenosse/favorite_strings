import 'dart:async';

import 'package:flutter/material.dart';
import 'package:favoritable_strings/src/core/app_initializer.dart';
import 'package:favoritable_strings/src/core/application.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  final AppInitializer appInitializer = AppInitializer();
  runZonedGuarded(
    () async {
      await appInitializer.preAppRun();

      runApp(Application());

      await appInitializer.postAppRun();
    },
    (error, stack) {},
  );
}
