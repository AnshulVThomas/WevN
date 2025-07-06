import 'package:get/get.dart';
// import 'package:wevn/common/widgets/layouts/templates/page_layout.dart';
// import 'package:wevn/common/widgets/responsive/pages/page_lists/page_list.dart';
import 'package:wevn/routes/routes.dart';
import 'package:wevn/utils/device/device_utility.dart';
class SidebarController extends GetxController {
  
  final activeItem = TRoutes.dashboard.obs;
  final hoverItem = ''.obs;
  final expandedTiles = <String, bool>{}.obs;


 void changeActiveItem(String route) => activeItem.value = route;

  void changeHoverItem(String route) {
    if(!isActiveItem(route)) {
      hoverItem.value = route;
    }
  }

  bool isActiveItem(String route) {
    return activeItem.value == route;
  }
  bool isHovering(String route) {
    return hoverItem.value == route;
  }

  void expandTile(String tileId) {
  expandedTiles[tileId] = true;
}

void collapseTile(String tileId) {
  expandedTiles[tileId] = false;
}

bool isTileExpanded(String tileId) {
  return expandedTiles[tileId] ?? false;
}
void toggleTile(String tileId) {
  final current = isTileExpanded(tileId);
  expandedTiles[tileId] = !current;
}


  void menuOnTap(String route) {
    if(!isActiveItem(route)) {
      changeActiveItem(route);
      if(TDeviceUtils.isMobileScreen(Get.context!)) Get.back();

      Get.toNamed(route);
    }
   
  }

 
    

}