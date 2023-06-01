import 'package:flutter/material.dart';
import 'package:contador_app/src/screens/counter/counter_functions_screen.dart';
// import 'package:flutter_application_1/src/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue[900],  
      ),

      home: const CounterFunctionsScreen()

    );
  }
}
