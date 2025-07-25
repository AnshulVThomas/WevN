import 'package:flutter/material.dart';
import 'package:wevn/common/widgets/layouts/headers/header.dart';
import 'package:wevn/common/widgets/sidebars/sidebar.dart';
// import 'package:wevn/common/widgets/containers/rounded_container.dart';

class TabletLayout extends StatelessWidget {
  TabletLayout({super.key,this.body});

  final Widget? body;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key: scaffoldKey ,
      drawer: const TSidebar(),
      appBar: THeader(ScaffoldKey: scaffoldKey,),
      body: body ?? const SizedBox(),
    );
  }
}
