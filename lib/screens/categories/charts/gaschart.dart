import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
import 'package:fiserv_valet/colors.dart';
import 'package:fiserv_valet/randcolors.dart';

class GasChart extends StatefulWidget {
  @override
  _GasChartState createState() => new _GasChartState();
}

class _GasChartState extends State<GasChart> {
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
                  new CircularSegmentEntry(20.0, orange, rankKey: 'completed',
                  ),
                  new CircularSegmentEntry(80.0, Colors.orange[200], rankKey: 'remaining',
                  ),
                ],
                rankKey: 'progress',
              ),
            ],
            chartType: CircularChartType.Radial,
            edgeStyle: SegmentEdgeStyle.round,
            percentageValues: true,
            holeLabel: 'USED\n  20%',
            labelStyle: TextStyle(fontSize: 20.0, color: orange_dark),
          )
      ),
    );
  }
}
