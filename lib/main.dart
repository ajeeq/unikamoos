// Import directives
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// .env file for loading environment variables
import 'package:flutter_dotenv/flutter_dotenv.dart';

// Screens
import 'package:unikamoos/screens/home.dart';
import 'package:unikamoos/screens/translate.dart';

Future main() async {
  // Loading env file for accessing secured environment variables
  await dotenv.load(fileName: "local.env");
  
  runApp(
    ProviderScope(
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UniKamoos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/translate': (context) => const Translate(),
      },
    );
  }
}