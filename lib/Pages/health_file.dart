import 'package:flutter/material.dart';
import 'package:xconics_app_custom_widget_pages_coponents_library/Constants.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class HealthScreen extends StatefulWidget {
  const HealthScreen({Key? key}) : super(key: key);

  @override
  State<HealthScreen> createState() => _HealthScreenState();
}

class _HealthScreenState extends State<HealthScreen> {

  late TooltipBehavior _tooltipBehavior;

  @override
  void initState(){
    _tooltipBehavior =  TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final List<ChartData> chartData = [
      ChartData('Steps', 25),
      ChartData('Calories', 38),
      ChartData('Challenges', 34),
      ChartData('Work Out Time', 52)
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor:AccentColor,
        title: Text("Health",),
      ),
      body: ListView(

        children: [

          Container(
            // color: Colors.black26,
            height: 500,
            width: double.infinity,
            child: Stack(

              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(125,150, 0,0),
                  child: CircleAvatar(
                    backgroundImage:AssetImage('images/profile/1658261393582.jpg'),
                    radius: 80,
                  ),
                ),



                Center(
                  child: SfCircularChart(
                    legend: Legend(
                        isVisible: true,
                        // offset: Offset(0,410),
                        position: LegendPosition.bottom,
                        backgroundColor: AccentColor,
                        textStyle: TextStyle(color: Colors.white),
                        borderColor: Colors.black,
                        borderWidth: 2
                    ),
                      series: <CircularSeries>[
                        // Renders radial bar char
                        RadialBarSeries<ChartData, String>(
                          dataSource: chartData,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          dataLabelSettings: DataLabelSettings(
                            isVisible: false,
                          ),
                          cornerStyle: CornerStyle.bothCurve,
                          innerRadius: '50%',
                        ),


                      ]
                  ),
                ),
              ],
            ),
          ),


          SizedBox(height: 100,),

          Container(
            height: 500,
            width: double.infinity,
            child: SfCartesianChart(
                legend: Legend(isVisible: true,),
                tooltipBehavior: _tooltipBehavior,
              // Initialize category axis
                primaryXAxis: CategoryAxis(),
                series: <ChartSeries>[
                  // Initialize line series
                  LineSeries<ChartData, String>(
                      enableTooltip: true,
                      dataSource: [
                        // Bind data source
                        ChartData('Steps', 25),
                        ChartData('Calories', 38),
                        ChartData('Challenges', 34),
                        ChartData('Work Out Time', 52),
                      ],
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y
                  )
                ]
            ),
          )

        ],

      ),
    );
  }
}
class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
}

