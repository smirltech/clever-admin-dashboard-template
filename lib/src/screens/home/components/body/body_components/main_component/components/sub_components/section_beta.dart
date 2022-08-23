import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'section_beta_card.dart';

class SectionBeta extends StatelessWidget {
  const SectionBeta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: SectionBetaCard(
            upTitle: "Budget",
            title: "\$750.90",
            percent: "30%",
            percentComment: "Since last month",
          ),
        ),
        Expanded(
          child: SectionBetaCard(
            upTitle: "New projects",
            title: "215",
            percent: "23%",
            percentComment: "Since last week",
            icon: FontAwesome.users,
            iconBackgroundColor: purple,
          ),
        ),
        Expanded(
          child: SectionBetaCard(
            upTitle: "Total hours",
            title: "1.400",
            percent: "-10%",
            percentComment: "Since last month",
            icon: FontAwesome.clock,
            iconBackgroundColor: blue,
            percentColor: red,
          ),
        ),
        Expanded(
          child: SectionBetaCard(
            upTitle: "Work load",
            title: "95%",
            percent: "15%",
            percentComment: "Since yesterday",
            icon: FontAwesome5.cart_plus,
            iconBackgroundColor: orange,
          ),
        ),
      ],
    );
  }
}
