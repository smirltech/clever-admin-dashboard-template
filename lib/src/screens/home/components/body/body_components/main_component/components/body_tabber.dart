import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:flutter/material.dart';

class BodyTabber extends StatelessWidget {
  const BodyTabber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicWidth(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "View all",
                        style: TextStyle(
                          color: purple,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(
                        color: purple,
                        height: 2,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                IntrinsicWidth(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Most recent",
                        style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                IntrinsicWidth(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "Popular",
                        style: TextStyle(
                          color: black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Card(
              child: SizedBox(
                height: 100,
                child: Text("here"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
