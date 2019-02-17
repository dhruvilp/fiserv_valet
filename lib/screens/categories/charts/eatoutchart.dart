import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:fiserv_valet/randcolors.dart';

class EatOutChart extends StatefulWidget {
  @override
  _EatOutChartState createState() => new _EatOutChartState();
}

class _EatOutChartState extends State<EatOutChart> {
  final GlobalKey<AnimatedCircularChartState> _chartKey =
  new GlobalKey<AnimatedCircularChartState>();
  final _chartSize = const Size(180.0, 180.0);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child:
          new AnimatedCircularChart(
            key: _chartKey,
            size: _chartSize,
            initialChartData: <CircularStackEntry>[
              new CircularStackEntry(
                <CircularSegmentEntry>[
                  new CircularSegmentEntry(50.0, orange, rankKey: 'completed',
                  ),
                  new CircularSegmentEntry(50.0, Colors.orange[200], rankKey: 'remaining',
                  ),
                ],
                rankKey: 'progress',
              ),
            ],
            chartType: CircularChartType.Radial,
            edgeStyle: SegmentEdgeStyle.round,
            percentageValues: true,
            holeLabel: 'USED\n  50%',
            labelStyle: TextStyle(fontSize: 20.0, color: orange_dark),
          )
      ),
    );
  }
}
