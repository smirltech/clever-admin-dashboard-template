import 'package:clever_dashboard_template/src/components/fb_button.dart';
import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class BodyTop extends StatelessWidget {
  const BodyTop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: const TextSpan(
            text: "👋 ",
            style: TextStyle(
                color: black, fontWeight: FontWeight.bold, fontSize: 36),
            children: [
              TextSpan(
                text: "Hi, Tahlia!",
              )
            ],
          ),
        ),
        const Spacer(),
        const FBButton(
          // onPressed: () {},
          icon: FontAwesome5.user_friends,
          text: "Share",
        ),
        const FBButton(
          // onPressed: () {},
          icon: FontAwesome.plus_squared_alt,
          text: "Create",
          color: white,
          background: purple,
        ),
      ],
    );
  }
}
