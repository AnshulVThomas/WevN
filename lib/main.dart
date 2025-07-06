import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wevn/routes/app_routes.dart';
import 'package:wevn/routes/routes.dart';


void main() {

  WidgetsFlutterBinding.ensureInitialized();
  // Initialize any necessary services or plugins here

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
      title: "WevN",
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: ColorScheme.light()),

        getPages: TAppRoute.pages,
        initialRoute: TRoutes.dashboard,
        defaultTransition: Transition.fadeIn,

    );
  }
}