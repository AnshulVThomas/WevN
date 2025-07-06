import 'package:get/get_navigation/get_navigation.dart';
import 'package:wevn/common/widgets/layouts/templates/page_layout.dart';
import 'package:wevn/common/widgets/responsive/pages/desktop_page.dart';
import 'package:wevn/common/widgets/responsive/pages/mobile_page.dart';
import 'package:wevn/common/widgets/responsive/pages/tablet_page.dart';
import 'package:wevn/routes/routes.dart';

class TAppRoute{
  static final List<GetPage> pages =[
     GetPage(name: TRoutes.dashboard, page: () => const TPageTemplate(
      id: "dashboard",
      desktop: DesktopPage(),
      tablet: TabletPage(),
      mobile: MobilePage(),
    )
      ),
      GetPage(name: TRoutes.graph, page: () => const TPageTemplate(
        id: "graph",
        desktop: TabletPage(),
      )),
      GetPage(name: TRoutes.nodes, page: () => const TPageTemplate(
        id:"nodes",
        desktop: MobilePage(),
      )),
      GetPage(name: TRoutes.settings, page: () => const TPageTemplate(
        id:"settings",
      )),
  ];
}