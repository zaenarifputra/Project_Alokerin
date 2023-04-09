import 'package:alokerin/welcome/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:alokerin/utils/color_schemes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightColorScheme
        ),
        darkTheme: ThemeData(
            useMaterial3: true,
            colorScheme: darkColorScheme
        ),
        home: const SplashScreen()
    );
  }
}