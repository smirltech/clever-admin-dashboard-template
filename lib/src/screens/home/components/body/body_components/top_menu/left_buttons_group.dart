import 'package:clever_dashboard_template/src/components/f_button.dart';
import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/material.dart';

class LeftButtonsGroup extends StatelessWidget {
  const LeftButtonsGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        FButton(
          text: "C",
          color: red,
        ),
        FButton(
          text: "D",
          color: purple,
        ),
        FButton(
          text: "A",
          color: orange,
        ),
        FButton(
          text: "+",
          color: grey,
        ),
      ],
    );
  }
}
