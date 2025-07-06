import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';
// import 'package:wevn/common/widgets/layouts/templates/page_layout.dart';
import 'package:wevn/common/widgets/sidebars/sidebar_controller.dart';
import 'package:wevn/utils/constraints/colors.dart';

class TMenuItem extends StatelessWidget {
  const TMenuItem({
    super.key,
    required this.route,
    required this.icon,
    required this.itemName,
  });

  final String route;
  final IconData icon;
  final String itemName;

  @override
  Widget build(BuildContext context) {
    final menuController = Get.put(SidebarController());
    
    return InkWell(
      onTap: () => menuController.menuOnTap(route),
      onHover: (hovering)=> hovering ? menuController.changeHoverItem(route) : menuController.changeHoverItem(""),
      child: Obx(
        ()=> Padding(
              padding: const EdgeInsets.symmetric(vertical: TSizes.xs,),
              child: Container(
                decoration: BoxDecoration(
                  color: menuController.isHovering(route) || menuController.isActiveItem(route) ? TColor.primaryColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(TSizes.buttonRadius),
                ),
              
                child:Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: TSizes.lg, right: TSizes.md, top: TSizes.md, bottom: TSizes.md),
                      child:menuController.isActiveItem(route) 
                        ? Icon(icon, color: Colors.white, size: 22,)
                        :  Icon(icon, color: menuController.isHovering(route) ? Colors.white : Colors.blueGrey, size: 22,),
                       
                    ),
                    if(menuController.isActiveItem(route)|| menuController.isHovering(route))
                    Flexible(
                      child: Text(
                        itemName,
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                          color: Colors.white,
                          letterSpacingDelta: 1.2,
                        ),
                      ),
                    )
                    
                    else
                      Flexible(
                        child: Text(
                          itemName,
                          style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color:  Colors.blueGrey,
                            letterSpacingDelta: 1.2,
                          ),
                        ),
                      )
                    
                  ],
                ) ,
              ),
            ),
      ),
    );
  }
}