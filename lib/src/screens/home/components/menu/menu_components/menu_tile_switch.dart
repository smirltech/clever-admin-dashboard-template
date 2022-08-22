import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class MenuTileSwitch extends StatelessWidget {
  const MenuTileSwitch({
    Key? key,
    required this.title,
    this.icon = Icons.home,
  }) : super(key: key);

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: orange,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.normal),
                ))
              ],
            ),
          ),
          const Icon(
            FontAwesome.toggle_off,
            color: grey,
          )
        ],
      ),
    );
  }
}
