import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

import 'left_buttons_group.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LeftButtonsGroup(),
            const Spacer(),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoSearchTextField(
                      decoration: BoxDecoration(
                          color: white,
                          border: Border.all(color: grey.shade200),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  //  const Spacer(),
                  const SizedBox(width: 20),
                  const Icon(
                    FontAwesome.bell_alt,
                    color: gray,
                  ),
                  const SizedBox(width: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/images/profiles/baby.jpg",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Tahlia",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: black),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: grey,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
