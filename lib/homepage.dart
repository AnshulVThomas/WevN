import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/layouts/templates/page_layout.dart';
import 'package:wevn/common/widgets/responsive/pages/desktop_page.dart';
import 'package:wevn/common/widgets/responsive/pages/mobile_page.dart';
import 'package:wevn/common/widgets/responsive/pages/tablet_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    // final Screensize = MediaQuery.of(context).size;
    return const TPageTemplate(
      desktop: DesktopPage(),
      tablet: TabletPage(),
      mobile: MobilePage(),
    );
  }
}