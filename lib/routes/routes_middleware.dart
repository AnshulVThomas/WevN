import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:wevn/routes/routes.dart';

class TRoutesMiddleware extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
   //this is dead code and make sure to remove it later
   //this is a placeholder for authentication logic
   final isAuthenticated = true;
   return isAuthenticated ? null : RouteSettings(name: TRoutes.dashboard);
  }
}