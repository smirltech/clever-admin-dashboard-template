import 'package:flutter/material.dart';

class FButton extends StatelessWidget {
  const FButton({
    Key? key, required this.text, this.color = Colors.blue,
  }) : super(key: key);

  final String text;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: const EdgeInsets.all(4),
      margin: const EdgeInsets.all(4),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color[100],
      ),
      child:  Center(
        child: Text(
          text,
          style:
              TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
