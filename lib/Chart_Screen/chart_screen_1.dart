// ignore_for_file: camel_case_types, unused_element

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../Provider/colore_provider.dart';

class Charyt_Screen extends StatefulWidget {
  const Charyt_Screen({super.key});

  @override
  State<Charyt_Screen> createState() => _Charyt_ScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _Charyt_ScreenState extends State<Charyt_Screen> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 0,),
                  firtstchart(),
                  secoundchart(),
                  thirscontain(),
                  Row(
                    children: [
                      Expanded(child: fourcontain()),
                    ],
                  ),
                  fivecontain(),
                  sixcontain(),
                  const SizedBox(height: 100,),
                ],
              ),
            );
          } else if (constraints.maxWidth < 1000) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 0,),
                  firtstchart(),
                  secoundchart(),
                  thirscontain(),
                  Row(
                    children: [
                      Expanded(child: fourcontain()),
                    ],
                  ),
                  fivecontain(),
                  sixcontain(),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 0,),
                  Row(
                    children: [
                      Expanded(flex: 4,child: firtstchart()),
                      Expanded(flex: 4,child: secoundchart()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(flex: 4,child: thirscontain()),
                      Expanded(flex: 4,child: fourcontain())
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(flex:4,child: fivecontain()),
                      Expanded(flex:4,child: sixcontain())
                    ],
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }

  Widget mainrow() {
    return  Row(
      children: [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Chart', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child:  Row(
                    children: [
                      const SizedBox(width: 70,),
                      Image(image: const AssetImage('assets/chart-trend-up1.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Chart', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
//----------------------------------------------------------



  @override
  void initState() {

    data1 = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    _tooltip1 = TooltipBehavior(enable: true);

    data = [
      _ChartData('Jan', 21),
      _ChartData('Feb', 23),
      _ChartData('Mar', 25),
      _ChartData('Apr', 27),
      _ChartData('May', 29),
      _ChartData('Jun', 31),
      _ChartData('Jul', 33),
      _ChartData('Aug', 35),
      _ChartData('Sep', 37),
      _ChartData('Oct', 39),
    ];
    _tooltip = TooltipBehavior(enable: true);


    super.initState();
  }

  late List<_ChartData> data;
  late List<_ChartData> data1;
  late TooltipBehavior _tooltip;
  late TooltipBehavior _tooltip1;



  final List<ChartData2> chartData = [
    ChartData2('David', 25),
    ChartData2('Steve', 38),
    ChartData2('Jack', 34),
    ChartData2('Others', 52)
  ];

  // List<Gdpdata> getCharData() {
  //   final List<Gdpdata> chartData = [
  //     Gdpdata('harsh', 1600),
  //   ];
  // }





 Widget firtstchart(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 20,bottom: 20),
        decoration: BoxDecoration(
            color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 20),
                child: Row(
                  children: [
                    Text('Vertical Bar Chart',style: TextStyle(color: notifire.textcolore,fontSize: 20),)
                  ],
                ),
              ),
              SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
                  tooltipBehavior: _tooltip,
                  series: <ChartSeries<_ChartData, String>>[
                    ColumnSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        name: 'Gold',
                        color: const Color(0xff9550DA))
                  ]),
            ],
          ),
        ),
      ),
    );
 }


Widget secoundchart(){
   return Padding(
     padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
     child: Container(
       margin: const EdgeInsets.only(top: 20,bottom: 20),
       decoration: BoxDecoration(
           color: notifire.containcolore1,
           borderRadius: BorderRadius.circular(10)
       ),
       child: Padding(
         padding: const EdgeInsets.only(top: 20,bottom: 20),
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 10,bottom: 20),
               child: Row(
                 children: [
                   Text('Horizontal Bar Chart',style: TextStyle(color: notifire.textcolore,fontSize: 20),)
                 ],
               ),
             ),
             SfCartesianChart(
                 primaryXAxis: CategoryAxis(),
                 primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
                 tooltipBehavior: _tooltip1,
                 series: <ChartSeries<_ChartData, String>>[
                   BarSeries<_ChartData, String>(
                       dataSource: data1,
                       xValueMapper: (_ChartData data, _) => data.x,
                       yValueMapper: (_ChartData data, _) => data.y,
                       name: 'Gold',
                       color: const Color.fromRGBO(8, 142, 255, 1))
                 ]),
           ],
         ),
       ),
     ),
   );
}


  Widget thirscontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 20),
                child: Row(
                  children: [
                    Text('Pie Chart',style: TextStyle(color: notifire.textcolore,fontSize: 20),)
                  ],
                ),
              ),
              SfCircularChart(
                  series: <CircularSeries>[
                    // Render pie chart
                    PieSeries<ChartData2, String>(
                        dataSource: chartData,
                        // pointColorMapper:(ChartData2 data, _) => data.color,
                        xValueMapper: (ChartData2 data, _) => data.x,
                        yValueMapper: (ChartData2 data, _) => data.y
                    )
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget fourcontain(){
   return Padding(
     padding:  const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
     child: Container(
       decoration: BoxDecoration(
           color: notifire.containcolore1,
           borderRadius: BorderRadius.circular(10)
       ),
       child:  Padding(
         padding: const EdgeInsets.only(top: 20,bottom: 50),
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.only(left: 10,bottom: 25,top: 0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Basic Radial Bars',style: TextStyle(color: notifire.textcolore,fontSize: 20),)
                 ],
               ),
             ),
             const SizedBox(height: 20,),
             CircularPercentIndicator(
               radius: 120.0,
               lineWidth: 13.0,
               animation: true,
               percent: 0.7,
               center: const Text(
                 "70.0%",
                 style:
                 TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.green),
               ),
               circularStrokeCap: CircularStrokeCap.round,
               progressColor: Colors.green,
             ),
           ],
         ),
       ),
     ),
   );
  }


  final List<ChartData4> chartData4 = [
    ChartData4('David', 40),
    ChartData4('Steve', 60),
    ChartData4('Jack', 80),
    ChartData4('Others', 100)
  ];

  Widget fivecontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 20,bottom: 20),
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding:  const EdgeInsets.only(top: 20,bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 20),
                child: Row(
                  children: [
                    Text('Radial Bars',style: TextStyle(color: notifire.textcolore,fontSize: 20),)
                  ],
                ),
              ),
              SfCircularChart(
                  series: <CircularSeries>[
                    // Renders radial bar chart
                    RadialBarSeries<ChartData4, String>(
                        dataSource: chartData4,
                        xValueMapper: (ChartData4 data, _) => data.x,
                        yValueMapper: (ChartData4 data, _) => data.y
                    )
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }

  final List<ChartData5> chartData5 = [
    ChartData5(2010, 35),
    ChartData5(2011, 28),
    ChartData5(2012, 34),
    ChartData5(2013, 32),
    ChartData5(2014, 40)
  ];

  Widget sixcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: Container(
        margin: const EdgeInsets.only(top: 20,bottom: 20),
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 20),
                child: Row(
                  children: [
                    Text('Area Chart',style: TextStyle(color: notifire.textcolore,fontSize: 20),)
                  ],
                ),
              ),
              SfCartesianChart(
                  series: <ChartSeries>[
                    // Renders area chart
                    AreaSeries<ChartData5, int>(
                        dataSource: chartData5,
                        xValueMapper: (ChartData5 data, _) => data.x,
                        yValueMapper: (ChartData5 data, _) => data.y
                    )
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }




}


class ChartData5 {
  ChartData5(this.x, this.y);
  final int x;
  final double y;
}

//----------------------------------------------------------

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}


//----------------------------------------------------------


class _ChartData1 {
  _ChartData1(this.x, this.y);

  final String x;
  final double y;
}


//----------------------------------------------------------


class ChartData2 {
  ChartData2(this.x, this.y,);
  final String x;
  final double y;
  // final Color color;
}


class ChartData4 {
  ChartData4(this.x, this.y);
  final String x;
  final double y;
}