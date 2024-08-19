import 'package:bitcoin_mining/firebase_options.dart';
import 'package:bitcoin_mining/pages/intro_page/intro_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BTC Mining App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepPurple,
        hintColor: Colors.orange,
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(color: Colors.white70, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.white54, fontSize: 14),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.deepPurple, // Button text color
          ),
        ),
      ),
      home:  IntroPage(),
    );
  }
}
