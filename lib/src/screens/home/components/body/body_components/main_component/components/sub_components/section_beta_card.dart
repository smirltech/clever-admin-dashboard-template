import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/material.dart';

class SectionBetaCard extends StatelessWidget {
  const SectionBetaCard({
    Key? key,
    this.icon = Icons.credit_card,
    this.iconBackgroundColor = red,
    required this.upTitle,
    required this.title,
    required this.percent,
    this.percentColor = green,
    required this.percentComment,
  }) : super(key: key);
  final String upTitle;
  final String title;
  final String percent;
  final String percentComment;
  final IconData icon;

  final Color iconBackgroundColor;
  final MaterialColor percentColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  upTitle,
                  style: const TextStyle(color: grey),
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: black, fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: percentColor.shade200,
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_upward,
                              color: percentColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              percent,
                              style: TextStyle(
                                  color: percentColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      percentComment,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: iconBackgroundColor,
              radius: 30,
              child: Icon(
                icon,
                color: white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
