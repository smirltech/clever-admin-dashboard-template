import 'package:clever_dashboard_template/src/screens/home/components/body/body_components/main_component/main_component.dart';
import 'package:clever_dashboard_template/src/screens/home/components/body/body_components/top_menu/top_menu.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TopMenu(),
        Expanded(child: MainComponent()),
      ],
    );
  }
}
