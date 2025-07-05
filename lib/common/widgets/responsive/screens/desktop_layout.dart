import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/layouts/headers/header.dart';
import 'package:wevn/common/widgets/sidebars/sidebar.dart';
// import 'package:wevn/common/widgets/containers/rounded_container.dart';

class DesktopLayout extends StatelessWidget {
  DesktopLayout({super.key,this.body});

  final Widget? body;

  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        children: [
          const Expanded(child: TSidebar()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                // HEADER
                THeader(),
                // BODY
                body ?? const SizedBox()
              ],
            ), // Replace with your main content widget
          ),
        ],
      ),
    );
  }
}
