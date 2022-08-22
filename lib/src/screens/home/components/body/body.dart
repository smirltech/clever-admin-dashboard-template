import 'package:clever_dashboard_template/src/screens/home/components/body/body_components/top_menu.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopMenu(),
      ],
    );
  }
}
