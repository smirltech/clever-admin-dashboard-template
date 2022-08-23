import 'package:clever_dashboard_template/src/screens/home/components/body/body_components/main_component/components/body_tabber.dart';
import 'package:flutter/material.dart';

import 'components/body_top.dart';

class MainComponent extends StatelessWidget {
  const MainComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: const [
          BodyTop(),
          BodyTabber(),
        ],
      ),
    );
  }
}
