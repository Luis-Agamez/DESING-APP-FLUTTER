import 'package:desing_app/screens/basic_desing.dart';
import 'package:desing_app/screens/home_screen.dart';
import 'package:desing_app/screens/scroll_desing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll_screen',
      routes: {
        'basic_desing': (_) => const BasicDesingScreen(),
        'scroll_screen': (_) => const ScrollScreen(),
        'home_screen': (_) => const HomeScreen(),
      },
    );
  }
}
