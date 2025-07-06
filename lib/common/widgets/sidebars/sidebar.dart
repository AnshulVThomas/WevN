import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wevn/common/widgets/images/circluar_svg_image.dart';
import 'package:wevn/common/widgets/images/circular_png_image.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';
import 'package:wevn/common/widgets/menu_items/hoverable_expanded_tile.dart';
import 'package:wevn/common/widgets/menu_items/menu_item.dart';
// import 'package:wevn/common/widgets/responsive/pages/page_lists/page_list.dart';
import 'package:wevn/routes/routes.dart';
import 'package:wevn/utils/constraints/colors.dart';

class TSidebar extends StatelessWidget {
  const TSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: BeveledRectangleBorder(),
      child: Container(
        decoration: BoxDecoration(
          color: TColor.appBarColor,
          border: Border(
            right: BorderSide(
              color: TColor.appBarBorderColor,
              width: 1.0,
            ),
          )
        ),

        child: SingleChildScrollView(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // TCircularPngImage(imagePath: "assets/icons/logo2.png", size: 100, fit: BoxFit.cover, backgroundColor: Colors.white, borderColor: Colors.black12, borderWidth: 1.0,padding: TSizes.md,),
                TCircularSvgImage(svgAsset: "assets/icons/logo_dark.svg", size: 100, fit: BoxFit.cover, backgroundColor: Colors.white, borderColor: Colors.black12,padding: TSizes.md,),
             
              Padding(padding: const EdgeInsets.all(TSizes.xs),
                child: 
                
                Column(
                  children: [
                    Text("WevN", style: Theme.of(context).textTheme.bodyLarge!.apply(letterSpacingDelta: 1.2),),

                    const SizedBox(height: TSizes.sm,),
                    TMenuItem(route: TRoutes.dashboard, icon: Iconsax.status, itemName: "Dashboard",),
                    TMenuItem(route: TRoutes.nodes, icon: Iconsax.status, itemName: "Nodes",),
                    TMenuItem(route: TRoutes.graph, icon: Iconsax.status, itemName: "Graph",),
                    THoverableExpansionTile(
                      tileId: 'nodes_section',
                      icon: Iconsax.status,
                      title: "Nodes",
                      children: [
                        TMenuItem(route: TRoutes.dashboard, icon: Iconsax.status, itemName: "Dashboard"),
                        TMenuItem(route: TRoutes.nodes, icon: Iconsax.status, itemName: "Nodes"),
                        TMenuItem(route: TRoutes.graph, icon: Iconsax.status, itemName: "Graph"),
                      ],
                    ),
                                        
                  ],
                )
              )
            ],
          )

        ),
      ),
    );
  }
}