// ignore_for_file: camel_case_types, unnecessary_brace_in_string_interps, unused_element, avoid_print, non_constant_identifier_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../Provider/colore_provider.dart';
import '../chart_detail_code.dart';

class crm_dashboard extends StatefulWidget {
  const crm_dashboard({super.key});

  @override
  State<crm_dashboard> createState() => _crm_dashboardState();
}

class _crm_dashboardState extends State<crm_dashboard> {
  ColorNotifire notifire = ColorNotifire();
  final List<ChartData> chartData = [
    ChartData('David', 25,  const Color(0xffF9C80E)),
    ChartData('Steve', 38, const Color(0xffF86624)),
    ChartData('Jack', 34, const Color(0xff2BB2FE)),
    ChartData('Others', 52, const Color(0xff883DCF))
  ];

  List  checkboxlist = [];
  final pilateColor = const Color(0xff883DCF);
  final cyclingColor = const Color(0xffF98550);
  final quickWorkoutColor = Colors.red;
  final betweenSpace = 0.2;

  BarChartGroupData generateGroupData(
      int x,
      double pilates,
      double quickWorkout,
      double cycling,
      ) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: pilates,
          color: pilateColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: pilates + betweenSpace,
          toY: pilates + betweenSpace + quickWorkout,
          color: quickWorkoutColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: pilates + betweenSpace + quickWorkout + betweenSpace,
          toY: pilates + betweenSpace + quickWorkout + betweenSpace + cycling,
          color: cyclingColor,
          width: 5,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      // color: Colors.red,
      child: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth<600){
          return   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                mainrow(),
                const SizedBox(height: 15,),
                somecontain1(containercolore1: Colors.green,img: 'assets/user.png',txt1: 'Campaign Sent',txt2: '13,018',txt3: '47%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffB5E4CA)),
                const SizedBox(height: 15,),
                somecontain1(containercolore1: Colors.red,img: 'assets/arrow-down-arrow-up.png',txt1: 'New Leads',txt2: '18,520',txt3: '73%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffCABDFF)),
                const SizedBox(height: 15,),
                somecontain1(containercolore1: Colors.blueAccent,img: 'assets/envelopes1.png',txt1: 'Deals',txt2: '04,124',txt3: '63%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffFFBC99)),
                const SizedBox(height: 15,),
                somecontain1(containercolore1: Colors.yellow,img: 'assets/rocketfg.png',txt1: 'Booked Revenue',txt2: '07,410',txt3: '37%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffB1E5FC)),
                const SizedBox(height: 15,),
                SizedBox(
                  // height: 450,
                    child: secoundcontain(size: constraints.maxWidth)),
                const SizedBox(height: 15,),
                SizedBox(
                  // height: 450,
                    child: therdcontain(size: constraints.maxWidth)),
                const SizedBox(height: 15,),
                SizedBox(
                  // height: 450,
                    child: fivecontain(size: constraints.maxWidth)),
                const SizedBox(height: 15,),
                SizedBox(
                  // height: 450,
                    child: sixcontain()),
                const SizedBox(height: 100,),
              ],
            ),
          );
        }
        else if(constraints.maxWidth<1000){
          return   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(child: somecontain1(containercolore1: Colors.green,img: 'assets/user.png',txt1: 'Campaign Sent',txt2: '13,018',txt3: '47%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffB5E4CA))),
                    Expanded(child: somecontain1(containercolore1: Colors.red,img: 'assets/arrow-down-arrow-up.png',txt1: 'New Leads',txt2: '18,520',txt3: '73%',txt4: 'this week',txtcolore: Colors.red,iconcolore: Colors.red,containercolore: const Color(0xffCABDFF))),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(child: somecontain1(containercolore1: Colors.blueAccent,img: 'assets/envelopes1.png',txt1: 'Deals', txt2: '04,124', txt3: '63%', txt4: 'this week', containercolore: const Color(0xffFFBC99), iconcolore: Colors.green, txtcolore: Colors.green)),
                    Expanded(child: somecontain1(containercolore1: Colors.yellow,img: 'assets/rocketfg.png',txt1: 'Booked Revenue', txt2: '07,410', txt3: '37%', txt4: 'this week', containercolore: const Color(0xffB1E5FC), iconcolore: Colors.red, txtcolore: Colors.red)),
                  ],
                ),
                const SizedBox(height: 15,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          secoundcontain(size: constraints.maxWidth),
                          fivecontain(size: constraints.maxWidth)
                        ],
                      ),
                    ),
                    Expanded(
                        child: Column(
                        children: [
                        therdcontain(size: constraints.maxWidth),
                        sixcontain()
                      ],
                    ),),
                  ],
                ),
                const SizedBox(height: 15,),

              ],),
          );
        }
        else{
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(child: somecontain1(containercolore1: Colors.green,img: 'assets/user.png',txt1: 'Campaign Sent',txt2: '13,018',txt3: '47%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffB5E4CA))),
                    Expanded(child: somecontain1(containercolore1: Colors.red,img: 'assets/arrow-down-arrow-up.png',txt1: 'New Leads',txt2: '18,520',txt3: '73%',txt4: 'this week',txtcolore: Colors.red,iconcolore: Colors.red,containercolore: const Color(0xffCABDFF))),
                    Expanded(child: somecontain1(containercolore1: Colors.blueAccent,img: 'assets/envelopes1.png',txt1: 'Deals', txt2: '04,124', txt3: '63%', txt4: 'this week', containercolore: const Color(0xffFFBC99), iconcolore: Colors.green, txtcolore: Colors.green)),
                    Expanded(child: somecontain1(containercolore1: Colors.yellow,img: 'assets/rocketfg.png',txt1: 'Booked Revenue', txt2: '07,410', txt3: '37%', txt4: 'this week', containercolore: const Color(0xffB1E5FC), iconcolore: Colors.red, txtcolore: Colors.red)),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: secoundcontain(size: constraints.maxWidth)),
                    Expanded(child: therdcontain(size: constraints.maxWidth)),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: fivecontain(size: constraints.maxWidth)),
                    Expanded(child: sixcontain()),
                  ],
                )
              ],
            ),
          );
        }
      },),
    ));
  }

  Widget mainrow(){
    return Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: Text('Dashboard',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 135,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      const SizedBox(width: 10,),
                      Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget somecontain1({required String img,required String txt1,required String txt2,required String txt3,required String txt4,required Color containercolore,required Color iconcolore,required Color txtcolore,required Color containercolore1}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 20,),
      child: Container(
          height: 150,
          // width: 570,
          decoration: BoxDecoration(
              // color: Color(0xffEBF0FE),
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundColor: containercolore,child: Image(image: AssetImage(img),color: Colors.black),),
                    const Spacer(),
                    Icon(Icons.more_vert,color: notifire.textcolore,)
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Text(txt1,style: TextStyle(color: notifire.textcolore)),
                  ],
                ),
                Row(
                  children: [
                    Text("\$${txt2}",style: TextStyle(fontSize: 30,color: notifire.textcolore),),
                    const Spacer(),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        // color: containercolore1,
                         borderRadius: BorderRadius.circular(85),
                        border: Border.all(color: containercolore1,width: 3)
                      ),
                      child: Center(child: Text(txt3,style: TextStyle(color: notifire.textcolore),)),
                    )
                  ],
                ),
                // Row(
                //   children: [
                //     Image(image: const AssetImage('assets/arrow-up.png'),color: iconcolore,height: 15,width: 15,),
                //     Text(txt3,style: TextStyle(color: txtcolore),),
                //     const SizedBox(width: 5,),
                //     Text(txt4,style: TextStyle(color: notifire.textcolore),)
                //   ],
                // )
              ],
            ),
          )),
    );
  }

  Widget secoundcontain({required double size}){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        // height: 400,
        // width: 570,
          decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(20),
          ),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            size<1200?
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 20,),
                Text('Deals Analytics',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                const SizedBox(width: 150,),
                const SizedBox(height: 15,),
                SizedBox(
                  height: 40,
                  width: 250,
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: const Color(0xffF2EAFB),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    tabs: const <Widget>[
                      Tab(
                        child: Text('Day',style: TextStyle(color: Color(0xff8231DA))),
                      ),
                      Tab(
                        child: Text('Week',style: TextStyle(color: Color(0xff8231DA))),
                      ),
                      Tab(
                        child: Text('Month',style: TextStyle(color: Color(0xff8231DA))),
                      ),
                    ],
                  ),
                ),
              ],
            ):
            Padding(
              padding: const EdgeInsets.only(left:10,right: 10),
              child: Row(
                children: [
                  Text('Deals Analytics',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                  const Expanded(child: SizedBox(width: 150,)),
                  SizedBox(
                    height: 40,
                    width: 250,
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                          color: const Color(0xffF2EAFB),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      indicatorColor: Colors.red,
                      labelColor: Colors.white,
                      dividerColor: Colors.transparent,
                      tabs: const <Widget>[
                        Tab(
                          child: Text('Day',style: TextStyle(color: Color(0xff8231DA))),
                        ),
                        Tab(
                          child: Text('Week',style: TextStyle(color: Color(0xff8231DA))),
                        ),
                        Tab(
                          child: Text('Month',style: TextStyle(color: Color(0xff8231DA))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 300,
                width: 800,
                decoration: BoxDecoration(
                  color: notifire.containcolore1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: container2Chart(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }

  Widget therdcontain({required double size}){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        // height: 400,
        // width: 570,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 252,
              child: SfCircularChart(
                annotations: [
                  CircularChartAnnotation(
                    widget: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "\$ 75.5K",
                            style: TextStyle(
                              color: notifire.textcolore,
                              // fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: Text(
                                "+10%",
                                style: TextStyle(
                                  color: Color(0xff1A9882),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                margin: EdgeInsets.zero,
                palette: const [
                  Color(0xff883DCF),
                  Color(0xffF86624),
                  Color(0xffF9C80E),
                  Color(0xff2BB2FE),
                ],
                series: <CircularSeries>[
                  DoughnutSeries<ChartData, String>(
                      startAngle: 0,
                      cornerStyle: CornerStyle.bothCurve,
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y,
                      innerRadius: "90"),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: charDetail.length,
              // scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                ChartDetail data = charDetail[index];
                return ListTile(
                  minVerticalPadding: 0,
                  visualDensity: VisualDensity.compact,
                  horizontalTitleGap: -15,
                  dense: true,
                  leading: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color: data.color,
                      shape: BoxShape.circle,
                    ),
                  ),
                  title: Text(
                    data.title,
                    style:  TextStyle(
                      color: notifire.textcolore,
                      // fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing:  Text(
                    "\$10,000",
                    style: TextStyle(
                      color: notifire.textcolore,
                      // fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }

  Widget container2Chart() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: AspectRatio(
        aspectRatio: 2,
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceBetween,
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: leftTitles,
                  interval: 5,
                  reservedSize: 20,
                ),
              ),
              rightTitles: const AxisTitles(),
              topTitles: const AxisTitles(),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: bottomTitles,
                  reservedSize: 20,
                ),
              ),
            ),
            barTouchData: BarTouchData(enabled: false),
            borderData: FlBorderData(show: false),
            gridData: const FlGridData(show: false),
            barGroups: [
              generateGroupData(0, 2, 3, 2),
              generateGroupData(1, 2, 5, 1.7),
              generateGroupData(2, 1.3, 3.1, 2.8),
              generateGroupData(3, 3.1, 4, 3.1),
              generateGroupData(4, 0.8, 3.3, 3.4),
              generateGroupData(5, 2, 5.6, 1.8),
              generateGroupData(6, 1.3, 3.2, 2),
              generateGroupData(7, 2.3, 3.2, 3),
              generateGroupData(8, 2, 4.8, 2.5),
              generateGroupData(9, 1.2, 3.2, 2.5),
              generateGroupData(10, 1, 4.8, 3),
              generateGroupData(11, 2, 4.4, 2.8),
            ],
            maxY: 11 + (betweenSpace * 3),
            extraLinesData: ExtraLinesData(
              horizontalLines: [
                HorizontalLine(
                  y: 3.3,
                  color: notifire.textcolore,
                  strokeWidth: 1,
                  dashArray: [20, 4],
                ),
                HorizontalLine(
                  y: 8,
                  color: quickWorkoutColor,
                  strokeWidth: 1,
                  dashArray: [20, 4],
                ),
                HorizontalLine(
                  y: 11,
                  color: cyclingColor,
                  strokeWidth: 1,
                  dashArray: [20, 4],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    var style = const TextStyle(color: Colors.transparent, fontSize: 10);
    String text;
    if (value == 0) {
      text = '0';
    } else {
      text = '${value.toInt()}0k';
    }
    return SideTitleWidget(
      angle: AppUtils().degreeToRadian(value < 0 ? -45 : 45),
      axisSide: meta.axisSide,
      space: 4,
      child: Text(
        text,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    var style = TextStyle(fontSize: 10,color: notifire.textcolore);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'JAN';
        break;
      case 1:
        text = 'FEB';
        break;
      case 2:
        text = 'MAR';
        break;
      case 3:
        text = 'APR';
        break;
      case 4:
        text = 'MAY';
        break;
      case 5:
        text = 'JUN';
        break;
      case 6:
        text = 'JUL';
        break;
      case 7:
        text = 'AUG';
        break;
      case 8:
        text = 'SEP';
        break;
      case 9:
        text = 'OCT';
        break;
      case 10:
        text = 'NOV';
        break;
      case 11:
        text = 'DEC';
        break;
      default:
        text = '';
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(text, style: style),
    );
  }

  Widget fivecontain({required double size}){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 450,
        // width: 570,
          decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(20),
          ),
          child:   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.only(left:10,right: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Top Selling Products',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                      // SizedBox(width: 10,),
                      const Spacer(),
                      Text('View All',style: TextStyle(fontSize: 15,color: notifire.textcolore))
                    ],
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding:  const EdgeInsets.only(left: 10,right: 10),
                  child: SizedBox(
                    height: 340,
                    // width: 500,
                    child: TabBarView(
                      children: <Widget>[
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 400,
                            width: size<1200 ? 700 : 780,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Table(
                                    // border: TableBorder.all(color: Colors.red),
                                    columnWidths:   const <int, TableColumnWidth>{
                                      0: FixedColumnWidth(10),
                                      1: FixedColumnWidth(100),
                                      2: FixedColumnWidth(10),
                                      3: FixedColumnWidth(10),
                                      4: FixedColumnWidth(10),
                                      5: FixedColumnWidth(10),
                                    },
                                    children:   <TableRow>[
                                      MemberProgress5demoi(txt6: 'User',txt1: 'User', txt2: 'Leads', txt3: 'Deals', txt4: 'Tasks',txt5: 'Action',clor: const Color(0xff747474)),
                                      MemberProgress3(txt5: 'Merco Lightweight Shirt',txt1: '156', txt2: '523', txt3: '339', txt4: '\$38,536', img: 'assets/premium-clock.png'),
                                      MemberProgress3(txt5: 'Darlen Robertion',txt1: '563', txt2: '125', txt3: '480', txt4: '\$38,536', img: 'assets/t-shirt.png'),
                                      MemberProgress3(txt5: 'Cameron Williamson',txt1: '856', txt2: '232', txt3: '258', txt4: '\$38,536', img: 'assets/nike.png'),
                                      MemberProgress3(txt5: 'Brookly Simmons',txt1: '111', txt2: '150', txt3: '436', txt4: '\$15,354', img: 'assets/cup-glass.png'),
                                      MemberProgress3(txt5: 'Marvin Mckinney',txt1: '789', txt2: '132', txt3: '540', txt4: '\$12,354', img: 'assets/women-bag.png'),
                                      MemberProgress3(txt5: 'Marvin Mckinney',txt1: '789', txt2: '132', txt3: '540', txt4: '\$12,354', img: 'assets/women-bag.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
      ),
    );
  }

  TableRow MemberProgress5demoi({required String txt1,required String txt2,required String txt3 ,required String txt4,required String txt5,required String txt6,required Color clor}) {
    return TableRow(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Checkbox(
                  side: BorderSide(color: notifire.textcolore,width: 2),
                  checkColor: Colors.white,
                  activeColor: Colors.blueAccent,
                  value: checkboxlist.contains(0) ? true : false,
                  onChanged: (bool? value) {
                    if(checkboxlist.contains(0)){
                      setState((){
                        checkboxlist.remove(0);
                      });
                    } else{
                      setState((){
                        checkboxlist.add(0);
                      });
                    }
                    print(checkboxlist.join(','));
                  },
                ),
              ),
            ],
          ),
          Text(txt6, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt2, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt3, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt4, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt5, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
        ]);
  }

  TableRow MemberProgress3({required String txt1,required String txt2,required String txt3,required String txt4,required String txt5,required String img}){
    return  TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 0,top: 20,bottom: 10),
            child: Transform.translate(
              offset: const Offset(-40,0),
              child: Checkbox(
                side: BorderSide(color: notifire.textcolore,width: 2),
                checkColor: Colors.white,
                activeColor: Colors.blueAccent,
                value: checkboxlist.contains(0) ? true : false,
                onChanged: (bool? value) {
                  if(checkboxlist.contains(0)){
                    setState((){
                      checkboxlist.remove(0);
                    });
                  } else{
                    setState((){
                      checkboxlist.add(0);
                    });
                  }
                  print(checkboxlist.join(','));
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 10),
            child: Text(txt5,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 10),
            child: Text(txt1,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 10),
            child: Text(txt2,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 10),
            child: Text(txt3,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25,bottom: 10,right: 50),
            child: Icon(Icons.more_vert,color: notifire.textcolore),
          ),
        ]);
  }

  // Widget sixcontain({required double size}){
  //   return Padding(
  //     padding: const EdgeInsets.all(10),
  //     child: Container(
  //       // height: 450,
  //       // width: 570,
  //         decoration: BoxDecoration(
  //           color: notifire.containcolore1,
  //           borderRadius: BorderRadius.circular(20),
  //         ),
  //         child: Column(
  //           children: [
  //             const SizedBox(height: 20,),
  //             SingleChildScrollView(
  //               scrollDirection: Axis.horizontal,
  //               child: Padding(
  //                 padding: const EdgeInsets.only(left: 10,right: 20),
  //                 child: Container(
  //                   // height: 360,
  //                   width: size<1000 ? 1200 : size,
  //                   decoration: BoxDecoration(
  //                     color: notifire.containcolore1,
  //                     // color: Colors.red,
  //                     borderRadius: BorderRadius.circular(10),
  //                   ),
  //                   child: Row(
  //                     children: [
  //                       Expanded(
  //                         child: Table(
  //                           // border: TableBorder.all(color: Colors.red),
  //                           columnWidths: const <int, TableColumnWidth>{
  //                             0: FixedColumnWidth(100),
  //                             1: FixedColumnWidth(100),
  //                             2: FixedColumnWidth(100),
  //                             3: FixedColumnWidth(100),
  //                             4: FixedColumnWidth(100),
  //                           },
  //                           children: [
  //                             const TableRow(
  //                                 children: [
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                 ]
  //                             ),
  //                             _ruw(),
  //                             const TableRow(
  //                                 children: [
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                 ]
  //                             ),
  //                             _ruw1(),
  //                             const TableRow(
  //                                 children: [
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                 ]
  //                             ),
  //                             _ruw2(),
  //                             const TableRow(
  //                                 children: [
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                 ]
  //                             ),
  //                             _ruw3(),
  //                             const TableRow(
  //                                 children: [
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                 ]
  //                             ),
  //                             _ruw4(),
  //                             const TableRow(
  //                                 children: [
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                   SizedBox(height: 10,),
  //                                 ]
  //                             ),
  //                             _ruw5(),
  //                           ],
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ),
  //           ],
  //         )
  //     ),
  //   );
  // }



  Widget sixcontain(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        // height: 450,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ListTile(
              title:  Text(
                "Contact",
                style: TextStyle(
                  color: notifire.textcolore,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon:  Icon(
                  Icons.more_vert,
                  color: notifire.textcolore,
                ),
              ),
            ),
            SizedBox(
              // height: 451,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: container8Detail.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        Container8Detail data = container8Detail[index];
                        return ListTile(
                          leading: SizedBox(
                              height: 40,
                              child: Image.asset(data.image)),
                          title: Text(
                            data.title,
                            style: TextStyle(
                              color: notifire.textcolore,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          subtitle:  const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "Nu Bank - 109283122",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          trailing: Text(
                            data.trailingtext,
                            style: TextStyle(
                              color: data.colore,
                              fontWeight: FontWeight.w400,
                            ),
                          ),

                        );
                      },),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TableRow _ruw (){
    return  const TableRow(
        children: [
          ListTile(
            title: Text('BROWSERS',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('SESSION',style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('BOUNCE RATE',style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('CET',style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text('GOAL CONV.RATE',style: TextStyle(color: Colors.grey)),
          ),
        ]
    );
  }

  TableRow _ruw1 (){
    return  TableRow(
        children: [
          ListTile(
            title: Text('Google Chrome',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('92,345',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('3.5%',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('12025',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('90%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _ruw2 (){
    return  TableRow(
        children: [
          ListTile(
            title: Text('Mozila Firefox',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('92,345',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('3.5%',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('12025',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('90%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _ruw4 (){
    return  TableRow(
        children: [
          ListTile(
            title: Text('Internet Explorer',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('92,345',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('3.5%',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('12025',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('90%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _ruw5 (){
    return  TableRow(
        children: [
          ListTile(
            title: Text('Opera Mini',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('92,345',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('3.5%',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('12025',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('90%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }


}



class ChartDetail {
  final String title;
  final Color color;

  ChartDetail({
    required this.title,
    required this.color,
  });
}

List<ChartDetail> charDetail = [
  ChartDetail(title: "Official Website", color: const Color(0xff883DCF)),
  ChartDetail(title: "Offline Store", color: const Color(0xff2BB2FE)),
  ChartDetail(title: "Amazon Store", color: const Color(0xffF9C80E)),
  // ChartDetail(title: "Reseller", color: const Color(0xffF86624)),
];

class ChartData {
  ChartData(this.x, this.y, this.color);

  final String x;
  final double y;
  final Color color;

}


class Container8Detail {
  String image;
  String title;
  String trailingtext;
  Color colore;

  Container8Detail({
    required this.image,
    required this.title,
    required this.trailingtext,
    required this.colore,
  });

}

List<Container8Detail> container8Detail = [
Container8Detail(image: "assets/woman1.png", title: "Josh Bill",trailingtext: "Cold lead",colore: Colors.red),
Container8Detail(image: "assets/woman1.png", title: "John Bushmill",trailingtext: "Won lead",colore: Colors.green),
Container8Detail(image: "assets/woman1.png", title: "Josh Adam",trailingtext: "Last lead",colore: Colors.blue),
Container8Detail(image: "assets/woman1.png", title: "Linda Blair",trailingtext: "Cold lead",colore: Colors.pink),
Container8Detail(image: "assets/woman1.png", title: "Sin Tae",trailingtext: "Won lead",colore: Colors.orange),
Container8Detail(image: "assets/woman1.png", title: "Laura Prichet",trailingtext: "Cold lead",colore: Colors.red),
];