
import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';

class TDeviceUtils {
  


static bool isDesktopScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= TSizes.desktopScreenSize;
} 

static bool isTabletScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= TSizes.tabletScreenSize &&
         MediaQuery.of(context).size.width < TSizes.desktopScreenSize;
}
static bool isMobileScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < TSizes.tabletScreenSize;
}


}