import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  // Initialize any necessary services or plugins here

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: "WevN",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          
        )
      ),

      home: Homepage()

    );
  }
}