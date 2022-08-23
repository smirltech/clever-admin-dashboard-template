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
                    Expanded(
                      child: LineChart(
                        LineChartData(
                          minX: 0,
                          maxX: 10,
                          minY: 0,
                          maxY: 150,
                          titlesData: FlTitlesData(
                            topTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            rightTitles: AxisTitles(
                              sideTitles: SideTitles(showTitles: false),
                            ),
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                  showTitles: true,
                                 interval: 1,
                                  getTitlesWidget: (value, _) {
                                    switch (value.toInt()) {
                                      case 0:
                                        return const Text("Jan");
                                      case 1:
                                        return const Text("Feb");
                                      case 2:
                                        return const Text("Mar");
                                      case 3:
                                        return const Text("Apr");
                                      case 4:
                                        return const Text("May");
                                      case 5:
                                        return const Text("Jun");
                                      case 6:
                                        return const Text("Jul");
                                      case 7:
                                        return const Text("Aug");
                                      case 8:
                                        return const Text("Sep");
                                      case 9:
                                        return const Text("Oct");
                                      case 10:
                                        return const Text("Nov");
                                      default:
                                        return const Text("");
                                    }
                                    return SizedBox();
                                  }),
                            ),
                          ),
                          gridData: FlGridData(show: false),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              isCurved: true,
                              color: purple,
                              barWidth: 3,
                              dotData: FlDotData(show: false),
                              spots: const [
                                FlSpot(0, 29),
                                FlSpot(1, 55),
                                FlSpot(2, 70),
                                FlSpot(3, 89),
                                FlSpot(4, 80),
                                FlSpot(5, 65),
                                FlSpot(6, 90),
                                FlSpot(7, 120),
                                FlSpot(8, 95),
                                FlSpot(9, 110),
                                FlSpot(10, 130),
                              ],
                            ),
                            LineChartBarData(
                              color: red,
                              isCurved: true,
                              barWidth: 3,
                              dotData: FlDotData(show: false),
                              spots: const [
                                FlSpot(0, 50),
                                FlSpot(1, 70),
                                FlSpot(2, 40),
                                FlSpot(3, 30),
                                FlSpot(4, 15),
                                FlSpot(5, 15),
                                FlSpot(6, 35),
                                FlSpot(7, 90),
                                FlSpot(8, 70),
                                FlSpot(9, 80),
                                FlSpot(10, 100),
                              ],
                            ),
                          ],
                        ),
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
