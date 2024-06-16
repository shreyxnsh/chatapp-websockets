import 'package:chatsy/features/home/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/constants/text_strings.dart';
import 'utils/themes/theme.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FTexts.appName,
      themeMode: ThemeMode.system,
      theme: FAppTheme.darkTheme,
      darkTheme: FAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
