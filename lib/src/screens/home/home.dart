import 'package:clever_dashboard_template/src/screens/home/components/body/body.dart';
import 'package:flutter/material.dart';

import 'components/menu/menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Menu(),
          Expanded(
            child: Body(),
          ),
        ],
      ),
    );
  }
}
