import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wevn/common/widgets/layouts/sizes/page_sizes.dart';
import 'package:wevn/common/widgets/sidebars/sidebar_controller.dart';
import 'package:wevn/utils/constraints/colors.dart';

class THoverableExpansionTile extends StatelessWidget {
  final String tileId;
  final IconData icon;
  final String title;
  final List<Widget> children;

  const THoverableExpansionTile({
    super.key,
    required this.tileId,
    required this.icon,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SidebarController>();

    return Obx(() {
      final isHovered = controller.isHovering(tileId);
      final isActive = controller.isActiveItem(tileId);
      final isExpanded = controller.isTileExpanded(tileId);

      final backgroundColor =
          isHovered || isActive ? TColor.primaryColor : Colors.transparent;
      final iconColor = isActive
          ? Colors.white
          : isHovered
              ? Colors.white
              : Colors.blueGrey;
      final textColor = iconColor;

      return Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(TSizes.buttonRadius),
            onTap: () {
              controller.toggleTile(tileId);
            },
            onHover: (hovering) {
              controller.changeHoverItem(hovering ? tileId : '');
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: TSizes.lg, vertical: TSizes.md),
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(TSizes.buttonRadius),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon, color: iconColor, size: 22),
                  const SizedBox(width: TSizes.md),
                  Expanded(
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: textColor,
                            letterSpacingDelta: 1.2,
                          ),
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: iconColor,
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded)
            Padding(
              padding: const EdgeInsets.only(left: TSizes.xl),
              child: Column(children: children),
            ),
        ],
      );
    });
  }
}
