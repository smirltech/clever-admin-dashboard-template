import 'package:flutter/material.dart';

class FBButton extends StatelessWidget {
  const FBButton({
    Key? key,
    required this.text,
    required this.icon,
    this.color = Colors.black,
    this.background = Colors.white,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color color;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: background,
      ),
      child: Center(
        child: Row(
          children: [
            Icon(icon, color: color,),
           const SizedBox(width: 10,),
            Text(
              text,
              style: TextStyle(
                  color: color, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
