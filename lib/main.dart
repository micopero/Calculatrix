import 'package:calculatrix/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Run Application
  runApp(const ProviderScope(child: Calculatrix()));
}
