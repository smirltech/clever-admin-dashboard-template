import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/material.dart';



class MenuTile extends StatelessWidget {
  const MenuTile(
      {Key? key,
      required this.title,
      this.icon = Icons.home,
      this.trailing,
      this.showTrailing = true,
      this.onPressed})
      : super(key: key);

  final String title;
  final IconData icon;
  final String? trailing;
  final bool showTrailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
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
                    size: 18,
                    color: grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
            if (trailing == null && showTrailing)
              const Icon(Icons.keyboard_arrow_right, color: grey),
            if (trailing != null && showTrailing)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: green[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  trailing!,
                  style: const TextStyle(color: green, fontSize: 11),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
