import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/responsive/responsive_design.dart';
import 'package:wevn/common/widgets/responsive/screens/desktop_layout.dart';
import 'package:wevn/common/widgets/responsive/screens/mobile_layout.dart';
import 'package:wevn/common/widgets/responsive/screens/tablet_layout.dart';

class TPageTemplate extends StatelessWidget {
  const TPageTemplate({super.key,required this.id, this.desktop, this.tablet, this.mobile, this.useLayout = true});


  
  final Widget? desktop;

  final Widget? tablet;

  final Widget? mobile;

  final String id;

  final bool useLayout;

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TResponsiveWidget(
        desktop: useLayout ?  DesktopLayout(body: desktop) : desktop ??  Container(), 
        tablet: useLayout ? TabletLayout(body: tablet ?? desktop,) : tablet ?? desktop ??  Container(),
        mobile: useLayout ? MobileLayout(body: mobile ?? tablet ?? desktop,) : mobile ?? tablet ?? desktop ??  Container(),
        
        ),
    );
  }
}