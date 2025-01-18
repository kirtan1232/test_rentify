import 'package:flutter/material.dart';
import 'package:rentify_flat_management/app/app.dart';
import 'package:rentify_flat_management/app/di/di.dart';
import 'package:rentify_flat_management/core/network/hive_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Hive Database
  await HiveService.init();

  await initDependencies();

  runApp(
    const App(),
  );
}
