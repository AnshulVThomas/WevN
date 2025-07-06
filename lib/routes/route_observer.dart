import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wevn/common/widgets/sidebars/sidebar_controller.dart';
import 'package:wevn/routes/routes.dart';

class RouteObservers extends GetObserver{

  @override
 void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sidebarController = Get.put(SidebarController());
    if (previousRoute != null) {
      for (var routeName in TRoutes.sideBarMenuItems){
        if(previousRoute.settings.name == routeName) {
          sidebarController.changeActiveItem(routeName);
          break;
        }
      }
    }
  }
}