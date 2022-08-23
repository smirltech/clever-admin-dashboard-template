import 'package:clever_dashboard_template/utils/theming.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SectionAlpha extends StatelessWidget {
  const SectionAlpha({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Text(
                            "Orders",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: white, onPrimary: black),
                            onPressed: () {},
                            child: const Text("See all")),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    LineChart(
                      LineChartData(
                        gridData: FlGridData(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Expanded(
                          child: Text(
                            "Top Performance",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        TextButton(
                            onPressed: () {}, child: const Text("See all")),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: grey.shade200),
                      ),
                      child: const ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profiles/baby.jpg")),
                        title: Text(
                          "Norman Mohrbacher",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("UI Designer"),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: grey.shade200),
                      ),
                      child: const ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profiles/baby.jpg")),
                        title: Text(
                          "Leeann Monnet",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Web Developer"),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: grey.shade200),
                      ),
                      child: const ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/profiles/baby.jpg")),
                        title: Text(
                          "Kathe Rahimi",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Marketing Team"),
                        trailing: Icon(Icons.more_vert),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
