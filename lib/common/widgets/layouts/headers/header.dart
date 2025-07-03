import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';
import 'package:wevn/utils/constraints/colors.dart';
import 'package:wevn/utils/device/device_utility.dart';

class THeader extends StatelessWidget implements PreferredSizeWidget {
  const THeader({super.key,this.ScaffoldKey});

  final GlobalKey<ScaffoldState>? ScaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container (

      height: preferredSize.height,
       

      decoration: const BoxDecoration(
        color: TColor.appBarColor,
        border: Border(bottom: BorderSide(color: TColor.appBarBorderColor, width: 1.0))
        ),
        padding: const EdgeInsets.symmetric(horizontal: TSizes.md,vertical: TSizes.sm),
        child: AppBar(

          leading: !TDeviceUtils.isDesktopScreen(context) ? IconButton(onPressed: () =>ScaffoldKey?.currentState?.openDrawer(), icon: const Icon(Iconsax.menu)) : null,
         
         
         title:  TDeviceUtils.isDesktopScreen(context) ? Padding(
           padding: const EdgeInsets.all(2.0),
           child: SizedBox(
            height: 40,
            width: 300,
            child: TextFormField(
              
              decoration: InputDecoration(
                prefixIcon: const Icon(Iconsax.search_normal),
                hintText: "Search Anything",
               
              
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.grey), //  visible border
                ),
                
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black), //  border when focused
                ),
                
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
                   ),
         ) 
          : null,

          actions: [
            if(!TDeviceUtils.isDesktopScreen(context)) IconButton(onPressed: (){}, icon: Icon(Iconsax.search_normal)),
            IconButton(onPressed: (){}, icon: const Icon(Iconsax.notification)),
            // const SizedBox(width: TSizes.spaceBetweenItems/2),
            
          ],

        ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(TSizes.appBarHeight+15);
}