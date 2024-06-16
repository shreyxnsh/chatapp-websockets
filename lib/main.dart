
import 'package:camera/camera.dart';
import 'package:chatsy/features/camera/screens/camera.dart';
import 'package:flutter/material.dart';
import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const App());
}

