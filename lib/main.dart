import 'package:fashion_store_ui/screens/nav_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
  print('\$200');
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Theme.of(context).primaryColor,
        appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).primaryColor,
            iconTheme: const IconThemeData(color: Colors.white)),
        primaryColor: const Color(0xff111111),
        accentColor: const Color(0xffDDFE71),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: const Color(0xffDDFE71)),
      ),
      home: const NavScreen(),
    );
  }
}
