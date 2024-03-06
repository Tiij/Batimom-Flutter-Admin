// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../Provider/colore_provider.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class laout extends StatefulWidget {

  const laout({super.key});

  @override
  State<laout> createState() => _laoutState();
}

class _laoutState extends State<laout> {

  SampleItem? selectedMenu;
  List menu=[
    'Today',
    'Week',
    'Month',
    'Year',
  ];
  List menu11=[
    'Today',
    'Week',
    'Month',
  ];

  int a = 0;
  int b = 0;

  List<ChartData> chartData = [
    ChartData(1, 35,0),
    ChartData(2, 23,0),
    ChartData(3, 34,0),
    ChartData(4, 25,0),
    ChartData(5, 40,0)
  ];

  ColorNotifire notifire = ColorNotifire();

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

       child:LayoutBuilder(builder: (context, constraints) {
          if(constraints.maxWidth<600){
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  // SizedBox(height: 20,),
                  mainrow(),
                  const SizedBox(height: 20,),
                  somecontain1(index: 0,img: 'assets/user.png',txt1: 'People reached',txt2: '256k',txt3: '37.8%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffB5E4CA)),
                  const SizedBox(height: 20,),
                  somecontain1(index: 1,img: 'assets/arrow-down-arrow-up.png',txt1: 'Engagement',txt2: '1.2x',txt3: '17.8%',txt4: 'this week',txtcolore: Colors.red,iconcolore: Colors.red,containercolore: const Color(0xffCABDFF)),
                  const SizedBox(height: 20,),
                  somecontain1(index: 2,img: 'assets/envelopes1.png',txt1: 'Comments', txt2: '128', txt3: '24.8%', txt4: 'this week', containercolore: const Color(0xffFFBC99), iconcolore: Colors.green, txtcolore: Colors.green),
                  const SizedBox(height: 20,),
                  somecontain1(index: 3,img: 'assets/rocketfg.png',txt1: 'Link clicks', txt2: '80', txt3: '11.3%', txt4: 'this week', containercolore: const Color(0xffB1E5FC), iconcolore: Colors.red, txtcolore: Colors.red),
                  const SizedBox(height: 20,),
                  anegun(),
                  const SizedBox(height: 20,),
                  anegun1(),
                  const SizedBox(height: 20,),
                  anegun2(),
                  const SizedBox(height: 20,),
                  anegun3(),
                  const SizedBox(height: 20,),
                  box(),
                  const SizedBox(height: 20,),
                  box2(),
                  const SizedBox(height: 20,),
                  box3(),
                  const SizedBox(height: 20,),
                  box4(),
                  const SizedBox(height: 20,),
                  secoundcontain(size: constraints.maxWidth),
                  const SizedBox(height: 20,),
                  thirdcontain(size: constraints.maxWidth),
                  const SizedBox(height: 20,),
                  fourcontain(size: constraints.maxWidth),
                  const SizedBox(height: 20,),
                  SizedBox(
                      // height: 450,
                      child: fivecontain(size: constraints.maxWidth)),
                  const SizedBox(height: 20,),
                  SizedBox(
                      // height: 450,
                      child: sixcontain(size: constraints.maxWidth)),
                  const SizedBox(height: 120,),
                ],
              ),
            );
          }
          else if(constraints.maxWidth<1000){
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: somecontain1(index: 0,img: 'assets/user.png',txt1: 'People reached',txt2: '256k',txt3: '37.8%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffB5E4CA))),
                    Expanded(child: somecontain1(index: 1,img: 'assets/arrow-down-arrow-up.png',txt1: 'Engagement',txt2: '1.2x',txt3: '17.8%',txt4: 'this week',txtcolore: Colors.red,iconcolore: Colors.red,containercolore: const Color(0xffCABDFF))),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: somecontain1(index: 2,img: 'assets/envelopes1.png',txt1: 'Comments', txt2: '128', txt3: '24.8%', txt4: 'this week', containercolore: const Color(0xffFFBC99), iconcolore: Colors.green, txtcolore: Colors.green)),
                    Expanded(child: somecontain1(index: 3,img: 'assets/rocketfg.png',txt1: 'Link clicks', txt2: '80', txt3: '11.3%', txt4: 'this week', containercolore: const Color(0xffB1E5FC), iconcolore: Colors.red, txtcolore: Colors.red)),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: anegun()),
                    Expanded(child: anegun1()),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: anegun2()),
                    Expanded(child: anegun3()),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: box()),
                    Expanded(child: box2()),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: box3()),
                    Expanded(child: box4()),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: secoundcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: thirdcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: fourcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: fivecontain(size: constraints.maxWidth)),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: sixcontain(size: constraints.maxWidth)),
                  ],
                ),
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
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: somecontain1(index: 0,img: 'assets/user.png',txt1: 'People reached',txt2: '256k',txt3: '37.8%',txt4: 'this week',txtcolore: Colors.green,iconcolore: Colors.green,containercolore: const Color(0xffB5E4CA))),
                       Expanded(child: somecontain1(index: 1,img: 'assets/arrow-down-arrow-up.png',txt1: 'Engagement',txt2: '1.2x',txt3: '17.8%',txt4: 'this week',txtcolore: Colors.red,iconcolore: Colors.red,containercolore: const Color(0xffCABDFF))),
                       Expanded(child: somecontain1(index: 2,img: 'assets/envelopes1.png',txt1: 'Comments', txt2: '128', txt3: '24.8%', txt4: 'this week', containercolore: const Color(0xffFFBC99), iconcolore: Colors.green, txtcolore: Colors.green)),
                       Expanded(child: somecontain1(index: 3,img: 'assets/rocketfg.png',txt1: 'Link clicks', txt2: '80', txt3: '11.3%', txt4: 'this week', containercolore: const Color(0xffB1E5FC), iconcolore: Colors.red, txtcolore: Colors.red)),
                     ],
                   ),
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: anegun()),
                       Expanded(child: anegun1()),
                       Expanded(child: anegun2()),
                       Expanded(child: anegun3()),
                     ],
                   ),
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: box()),
                       Expanded(child: box2()),
                     ],
                   ),
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: box3()),
                       Expanded(child: box4()),
                     ],
                   ),
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: secoundcontain(size: constraints.maxWidth))
                     ],
                   ),
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: thirdcontain(size: constraints.maxWidth))
                     ],
                   ),
                   const SizedBox(height: 20,),
                   Row(
                     children: [
                       Expanded(child: fourcontain(size: constraints.maxWidth))
                     ],
                   ),
                   const SizedBox(height: 20,),
                   Row(
                      children: [
                        Expanded(child: fivecontain(size: constraints.maxWidth)),
                        Expanded(child: sixcontain(size: constraints.maxWidth)),
                      ],
                    )
                 ],
              ),
            );
          }
       },),
      ),
    );
  }

  List isHover = [];
  List checkBox = [];
  int boxBorder = 0;

  Widget somecontain1({required String img,required String txt1,required String txt2,required String txt3,required String txt4,required Color containercolore,required Color iconcolore,required Color txtcolore,required index}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 20,),
      child: InkWell(
        onTap: (){
          setState(() {
            boxBorder = index;
          });
        },
        onHover: (val){
          setState(() {
            if (val == false) {
              isHover.remove(index);
            } else {
              isHover.add(index);
            }
          });
        },
        child: AnimatedContainer(
            duration: const Duration(microseconds: 200),
            height: 130,
            // width: 570,
            decoration: BoxDecoration(
                // color: Color(0xffEBF0FE),
                boxShadow:  [
                  BoxShadow(color: isHover.contains(index) ? Colors.blueAccent : Colors.transparent,offset: const Offset(0,5),blurRadius: 2,spreadRadius: -2,),
                ],
                color: notifire.containcolore1,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 30,right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(txt1,style: TextStyle(color: notifire.textcolore)),
                      const SizedBox(width: 5,),
                      Icon(Icons.info,color: notifire.textcolore,size: 15,),
                    ],
                  ),
                  Row(
                    children: [
                      Text(txt2,style: TextStyle(fontSize: 30,color: notifire.textcolore),),
                      const Spacer(),
                      CircleAvatar(backgroundColor: containercolore,child: Image(image: AssetImage(img),color: Colors.black),),
                    ],
                  ),
                  Row(
                    children: [
                      Image(image: const AssetImage('assets/arrow-up.png'),color: iconcolore,height: 15,width: 15,),
                      Text(txt3,style: TextStyle(color: txtcolore),),
                      const SizedBox(width: 5,),
                      Text(txt4,style: TextStyle(color: notifire.textcolore),)
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }

  Widget anegun(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 20),
      child: Container(
          height: 100,
          // width: 570,
          decoration: BoxDecoration(
            // color: Color(0xffEBF0FE),
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const Image(image: AssetImage('assets/Symbol=Diamond, Component=Symbol.png')),
                  title: Text('Get 25 Diamonds',style: TextStyle(color: notifire.textcolore)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 10),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      color: const Color(0xff6949FF),
                      value: 0.2,
                    ),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('12/25',style: TextStyle(color: Color(0xff6949FF))),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget anegun1(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 20),
      child: Container(
          height: 100,
          // width: 570,
          decoration: BoxDecoration(
            // color: Color(0xffEBF0FE),
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const Image(image: AssetImage('assets/Symbol=XP, Component=Symbol.png')),
                  title: Text('Get 40 XP',style: TextStyle(color: notifire.textcolore)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 10),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      color: const Color(0xff6949FF),
                      value: 0.4,
                    ),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('24/40',style: TextStyle(color: Color(0xff6949FF))),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget anegun2(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 20),
      child: Container(
          height: 100,
          // width: 570,
          decoration: BoxDecoration(
            // color: Color(0xffEBF0FE),
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const Image(image: AssetImage('assets/Symbol=Target, Component=Symbol.png')),
                  title: Text('Get 2 perfect lessons',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 10),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      color: const Color(0xff6949FF),
                      value: 0.0,
                    ),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('0/2',style: TextStyle(color: Color(0xff6949FF))),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget anegun3(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 20),
      child: Container(
          height: 100,
          // width: 570,
          decoration: BoxDecoration(
            // color: Color(0xffEBF0FE),
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(top: 20,left: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const Image(image: AssetImage('assets/Symbol=Challenge, Component=Symbol.png')),
                  title: Text('Complete 1 challenge',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 10),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.grey.withOpacity(0.4),
                      color: const Color(0xff6949FF),
                      value: 1,
                    ),
                  ),
                  trailing: const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text('0/2',style: TextStyle(color: Color(0xff6949FF))),
                  ),
                )
              ],
            ),
          )),
    );
  }

  Widget mainrow(){
    return    Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Demo 1',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 100,
                  child: Row(
                    children: [
                      Image(image: const AssetImage('assets/home.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Demo 1',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget box(){
    return  Padding(
      padding: const EdgeInsets.only(left:10),
      child: somecontain(txt1: '200+', txt2: 'Sales Orders', txt3: '14.98% ', txt4: 'This Sell Order', img1: 'assets/5.png', img2: 'assets/arrow-up.png',colore1: Colors.purple.withOpacity(0.2),colore2: Colors.purple),
    );
  }

  Widget box2(){
    return  Padding(
      padding: const EdgeInsets.only(left:10),
      child: somecontain(txt1: '1200+', txt2: 'Premium Link', txt3: '26.24% ', txt4: 'This Sell Link', img1: 'assets/shopping-cart.png', img2: 'assets/arrow-up.png',colore1: Colors.blue.withOpacity(0.2),colore2: Colors.blue),
    );
  }

  Widget box3(){
    return Padding(
        padding: const EdgeInsets.only(left: 10),
      child:  somecontain(txt1: '2300+', txt2: 'Debug Mode', txt3: '89.14% ', txt4: 'This Sell Mode', img1: 'assets/dollar-circle.png', img2: 'assets/arrow-up.png',colore1: Colors.indigo.withOpacity(0.2),colore2: Colors.indigo),
    );
  }

  Widget box4(){
    return Padding(
        padding: const EdgeInsets.only(left: 10),
      child:   somecontain(txt1: '3600+', txt2: 'Offline Made', txt3: '49.78% ', txt4: 'This Sell Made', img1: 'assets/8.png', img2: 'assets/arrow-up.png',colore1: Colors.orange.withOpacity(0.2),colore2: Colors.orange),
    );
  }

  Widget secoundcontain({required double size}){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
           // height: 480,
          decoration: BoxDecoration(
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10,),
              size<600?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text('Member Progress',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                      const SizedBox(height: 15,),
                      SizedBox(
                        height: 35,
                        child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
                          return  Padding(
                            padding: const EdgeInsets.all(2),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  b = index;
                                });
                              },
                              child: Container(
                                height: 30,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
                              ),
                            ),
                          );
                        },),
                      ),
                    ],
                  ):
                ListTile(
                leading:  Text('Member Progress',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                trailing:  SizedBox(
                  height: 35,
                   width: 230,
                  child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.all(2),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            b = index;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
                        ),
                      ),
                    );
                  },),
                ),
              ),



              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Container(
                    // height: 400,
                    width: size<1000 ? 1200 : size,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Table(
                            // border: TableBorder.all(color: Colors.black),
                            columnWidths: const <int, TableColumnWidth>{
                              0: FixedColumnWidth(320),
                              1: FixedColumnWidth(320),
                              2: FixedColumnWidth(320),
                              3: FixedColumnWidth(200),
                              4: FixedColumnWidth(200),
                            },
                            children: [
                              const TableRow(
                                  children: [
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                  ]
                              ),
                              _row(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                  ]
                              ),
                              _row1(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                  ]
                              ),
                              _row2(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                  ]
                              ),
                              _row3(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                  ]
                              ),
                              _row4(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                    SizedBox(height: 15,),
                                  ]
                              ),
                              _row5(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: SizedBox(
              //     height: 390,
              //     width: MediaQuery.of(context).size.width,
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         size<1300?
              //         Column(
              //           children: [
              //             MemberProgress4demo(txt1: 'SELLER NAME', txt2: 'COMPANY', txt3: 'PRODUCT', txt5: 'SELLER NAME', txt4: ''),
                //           MemberProgressdemo(txt1: 'Robert Clinton', txt2: '	\$38,536', txt3: 'ReactJs,HTML', txt4: '80%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.5),
              //             const SizedBox(height: 10,),
              //             MemberProgressdemo(txt1: 'Member Progress', txt2: '	\$20,573', txt3: 'Laravel,Angular', txt4: '52%', img: 'assets/robert-1.png',color: Colors.blue,backgrounde: const Color(0xffEFF0F3),vle: 0.4),
              //             const SizedBox(height: 10,),
              //             MemberProgressdemo(txt1: 'Daniel White', txt2: '	\$17,457', txt3: 'Python,MySQL', txt4: '72%', img: 'assets/robert-1.png',color: Colors.green,backgrounde: const Color(0xffEFF0F3),vle: 10),
              //             const SizedBox(height: 10,),
              //             MemberProgressdemo(txt1: 'Chris Barin', txt2: '	\$15,354', txt3: 'Wordpress', txt4: '92%', img: 'assets/robert-3.png',color: const Color(0xff5840FF),backgrounde: const Color(0xffEFF0F3),vle: 1),
              //             const SizedBox(height: 10,),
              //             MemberProgressdemo(txt1: 'Daniel Pink', txt2: '	\$12,354', txt3: 'Photoshop', txt4: '25%', img: 'assets/robert-4.png',color: const Color(0xffFA8B0C),backgrounde: const Color(0xffEFF0F3),vle: 0.3),
              //             const SizedBox(height: 10,),
              //             MemberProgressdemo(txt1: 'Shane Pollard', txt2: '	\$12,354', txt3: 'Illustrator', txt4: '18%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.2),
              //           ],
              //         ):
              //             Column(
              //               children: [
              //                 MemberProgress44demo(txt1: 'SELLER NAME', txt2: 'COMPANY', txt3: 'PRODUCT', txt4: 'PRICE', txt5: 'COURSE', txt6: 'COMPANY',txt7: 'RATE'),
              //                 MemberProgressdemo1(txt1: 'Robert Clinton', txt2: '	\$38,536', txt3: 'ReactJs,HTML', txt4: '80%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.5,txt5: '200',txt6: 'REACT'),
              //                 const SizedBox(height: 10,),
              //                 MemberProgressdemo1(txt1: 'Member Progress', txt2: '	\$20,573', txt3: 'Laravel,Angular', txt4: '52%', img: 'assets/robert-1.png',color: Colors.blue,backgrounde: const Color(0xffEFF0F3),vle: 0.4,txt5: '300',txt6: 'FLUTTER'),
              //                 const SizedBox(height: 10,),
              //                 MemberProgressdemo1(txt1: 'Daniel White', txt2: '	\$17,457', txt3: 'Python,MySQL', txt4: '72%', img: 'assets/robert-1.png',color: Colors.green,backgrounde: const Color(0xffEFF0F3),vle: 10,txt5: '400',txt6: 'NODEJS'),
              //                 const SizedBox(height: 10,),
              //                 MemberProgressdemo1(txt1: 'Chris Barin', txt2: '	\$15,354', txt3: 'Wordpress', txt4: '92%', img: 'assets/robert-3.png',color: const Color(0xff5840FF),backgrounde: const Color(0xffEFF0F3),vle: 1,txt5: '500',txt6: 'UI-DEGIN'),
              //                 const SizedBox(height: 10,),
              //                 MemberProgressdemo1(txt1: 'Daniel Pink', txt2: '	\$12,354', txt3: 'Photoshop', txt4: '25%', img: 'assets/robert-4.png',color: const Color(0xffFA8B0C),backgrounde: const Color(0xffEFF0F3),vle: 0.3,txt5: '600',txt6: 'REACT'),
              //                 const SizedBox(height: 10,),
              //                 MemberProgressdemo1(txt1: 'Shane Pollard', txt2: '	\$12,354', txt3: 'Illustrator', txt4: '18%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.2,txt5: '700',txt6: 'NODEJS'),
              //
              //               ],
              //             )
              //       ],
              //     ),
              //   ),
              // )
            ],
          )
      ),
    );
  }

  Widget thirdcontain({required double size}){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          // height: 480,
          decoration: BoxDecoration(
            // color: Colors.red,
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10,),
              size<600?
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Best Seller',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                  const SizedBox(height: 15,),
                  SizedBox(
                    height: 35,
                    child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
                      return  Padding(
                        padding: const EdgeInsets.all(2),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              b = index;
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              color: b == index ?  const Color(0xffF2EAFB) : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
                          ),
                        ),
                      );
                    },),
                  ),
                ],
              ):
              ListTile(
                leading:  Text('Best Seller',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                trailing:  SizedBox(
                  height: 35,
                  width: 230,
                  child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.all(2),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            b = index;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
                        ),
                      ),
                    );
                  },),
                ),
              ),
              //const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Container(
                    height: 400,
                    width: size<1000 ? 1200 : size,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      // color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Table(
                            // border: TableBorder.all(color: Colors.black),
                            columnWidths: const <int, TableColumnWidth>{
                              0: FixedColumnWidth(320),
                              1: FixedColumnWidth(320),
                              2: FixedColumnWidth(320),
                              3: FixedColumnWidth(200),
                              4: FixedColumnWidth(200),
                            },
                            children: [
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _rew(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _rew1(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _rew2(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _rew3(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _rew4(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _rew5(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),





              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Padding(
              //     padding: const EdgeInsets.all(5),
              //     child: SizedBox(
              //       height: 350,
              //       width: MediaQuery.of(context).size.width,
              //       child: Column(
              //         children :[
              //           size<1300?
              //           Column(
              //             children: [
              //               MemberProgress3demo(txt1: 'SELLER NAME', txt2: 'COMPANY', txt3: 'PRODUCT', txt4: 'REVENUE', txt5: 'SELLER NAME',),
              //               const SizedBox(height: 20,),
              //               MemberProgress2demo(txt1: 'Robert Clinton', txt2: 'Samsung', txt3: 'Smart Phone', txt4: '\$38,536', txt5: 'Done', img: 'assets/robert-1.png'),
              //               const SizedBox(height: 10,),
              //               MemberProgress2demo(txt1: 'Michael Johnson', txt2: 'Asus', txt3: 'Laptop', txt4: '\$20,573', txt5: 'Done', img: 'assets/robert-1.png'),
              //               const SizedBox(height: 10,),
              //               MemberProgress2demo(txt1: 'Daniel White', txt2: 'Google', txt3: 'Watch', txt4: '\$17,457', txt5: 'Pendin', img: 'assets/robert-3.png'),
              //               const SizedBox(height: 10,),
              //               MemberProgress2demo(txt1: 'Chris Barin', txt2: 'Apple', txt3: 'Computer', txt4: '\$15,354', txt5: 'Done', img: 'assets/robert-4.png'),
              //               const SizedBox(height: 10,),
              //               MemberProgress2demo(txt1: 'Daniel Pink', txt2: 'Panasonic', txt3: 'Sunglass', txt4: '\$12,354', txt5: 'Done', img: 'assets/robert-1.png'),
              //             ],
              //           ):
              //           Column(
              //             children: [
              //               MemberProgress33demo(txt1: 'SELLER NAME', txt2: 'COMPANY', txt3: 'PRODUCT', txt4: 'REVENUE', txt5: 'SELLER NAME',txt6: 'price'),
              //               const SizedBox(height: 20,),
              //               MemberProgress22demo(txt1: 'Robert Clinton', txt2: 'Samsung', txt3: 'Smart Phone', txt4: '\$38,536', txt5: 'Done', img: 'assets/robert-1.png',txt6: '200'),
              //               const SizedBox(height: 10,),
              //               MemberProgress22demo(txt1: 'Michael Johnson', txt2: 'Asus', txt3: 'Laptop', txt4: '\$20,573', txt5: 'Done', img: 'assets/robert-1.png',txt6: '300'),
              //               const SizedBox(height: 10,),
              //               MemberProgress22demo(txt1: 'Daniel White', txt2: 'Google', txt3: 'Watch', txt4: '\$17,457', txt5: 'Pendin', img: 'assets/robert-3.png',txt6: '400'),
              //               const SizedBox(height: 10,),
              //               MemberProgress22demo(txt1: 'Chris Barin', txt2: 'Apple', txt3: 'Computer', txt4: '\$15,354', txt5: 'Done', img: 'assets/robert-4.png',txt6: '500'),
              //               const SizedBox(height: 10,),
              //               MemberProgress22demo(txt1: 'Daniel Pink', txt2: 'Panasonic', txt3: 'Sunglass', txt4: '\$12,354', txt5: 'Done', img: 'assets/robert-1.png',txt6: '600'),
              //             ],
              //           )
              //         ],
              //       ),
              //     ),
              //   ),
              // )
            ],
          )
      ),
    );
  }

  Widget fourcontain({required double size}){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              size<1100?
              SizedBox(
                height: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 50,
                      child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu.length,itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                a = index;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                color: a == index ? const Color(0xffF2EAFB): Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('${menu[index]}',style: TextStyle(color: Colors.purple[800] ))),
                            ),
                          ),
                        );
                      },),
                    ),
                    PopupMenuButton<SampleItem>(
                      initialValue: selectedMenu,
                      child:  Image(image: const AssetImage('assets/more-horizontal.png'),color: notifire.textcolore),
                      onSelected: (SampleItem item) {
                        setState(() {
                          selectedMenu = item;
                        });
                      },
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemOne,
                          child: Text('Action'),
                        ),
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemTwo,
                          child: Text('Another Action'),
                        ),
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemThree,
                          child: Text('Something else Here'),
                        ),
                      ],
                    ),
                  ],
                ),
              ):
              SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 20,),
                    const SizedBox(height: 20,),
                     Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                    const Expanded(child: SizedBox(width: 630,)),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu.length,itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                a = index;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                color: a == index ? const Color(0xffF2EAFB) : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('${menu[index]}',style: TextStyle(color: Colors.purple[800]))),
                            ),
                          ),
                        );
                      },),
                    ),
                    const SizedBox(width: 20,),
                    PopupMenuButton<SampleItem>(
                      initialValue: selectedMenu,
                      child:  Image(image: const AssetImage('assets/more-horizontal.png'),color: notifire.textcolore),
                      onSelected: (SampleItem item) {
                        setState(() {
                          selectedMenu = item;
                        });
                      },
                      itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemOne,
                          child: Text('Action'),
                        ),
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemTwo,
                          child: Text('Another Action'),
                        ),
                        const PopupMenuItem<SampleItem>(
                          value: SampleItem.itemThree,
                          child: Text('Something else Here'),
                        ),
                      ],
                    ),
                    const SizedBox(width: 30,),
                  ],
                ),
              ),





              size<1100?
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                    child: Container(
                      height: 340,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 400,
                              width: 400,
                              decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                                border: Border.all(color: Colors.white),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Column(
                                  children: [
                                    Container(
                                        height: 30,
                                        decoration:  BoxDecoration(
                                            color: notifire.getsecoundcontain,
                                            borderRadius: const BorderRadius.vertical(top: Radius.circular(10))
                                        ),
                                        child: SalesLocation(txt1: 'TOP REGION',colo: Colors.grey, txt2: 'ORDER', txt3: 'REVENUE',txt4: '')),
                                    const SizedBox(height: 4,),
                                    SalesLocation(txt1: 'United States', txt2: '90', txt3: '\$536',txt4: '200',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'Australia', txt2: '70', txt3: '\$573',txt4: '300',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'Canada', txt2: '30', txt3: '\$457',txt4: '400',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'Japan', txt2: '50', txt3: '\$524',txt4: '500',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'India', txt2: '20', txt3: '\$354',txt4: '600',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                  ],
                                ),
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 90,),
                  Padding(
                    padding:  const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 350,
                      width: 600,
                      child: SfCartesianChart(
                          series: <ChartSeries<ChartData, int>>[
                            ColumnSeries<ChartData, int>(
                                dataSource: chartData,
                                xValueMapper: (ChartData data, _) => data.x,
                                yValueMapper: (ChartData data, _) => data.y,
                                borderRadius: const BorderRadius.all(Radius.circular(0)),
                                color: notifire.mapclre
                            )
                          ]
                      ),
                    ),
                  )
                ],
              ):
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  color: notifire.getsecoundcontain,
                                  borderRadius: const BorderRadius.vertical(top: Radius.circular(10))
                              ),
                              child: const Row(
                                children: [
                                  SizedBox(width: 10,),
                                  Text('TOP REGION',style: TextStyle(fontSize: 15,color: Colors.grey),),
                                  SizedBox(width: 90,),
                                  Text('ORDER',style: TextStyle(fontSize: 15,color: Colors.grey),),
                                  SizedBox(width: 120,),
                                  Text('REVENUE',style: TextStyle(fontSize: 15,color: Colors.grey),),
                                  SizedBox(width: 110,),
                                  Text('REVENUE',style: TextStyle(fontSize: 15,color: Colors.grey),),
                                ],
                              ),
                            ),
                            Container(
                              height: 330,
                              width: 600,
                              color: notifire.containcolore1,
                              child: Padding(
                                padding: const EdgeInsets.all(13),
                                child: Column(
                                  children: [
                                    // const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'United States', txt2: '90', txt3: '\$536',txt4: '200',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'Australia', txt2: '70', txt3: '\$573',txt4: '300',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'Canada', txt2: '30', txt3: '\$457',txt4: '400',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'Japan', txt2: '50', txt3: '\$524',txt4: '500',colo: notifire.textcolore),
                                    const SizedBox(height: 45,),
                                    SalesLocation(txt1: 'India', txt2: '20', txt3: '\$354',txt4: '600',colo: notifire.textcolore),
                                    // const SizedBox(height: 45,),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Flexible(
                    child: Padding(
                      padding:  const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 350,
                        // width: 600,
                        child: SfCartesianChart(
                            series: <ChartSeries<ChartData, int>>[
                              ColumnSeries<ChartData, int>(
                                  dataSource: chartData,
                                  xValueMapper: (ChartData data, _) => data.x,
                                  yValueMapper: (ChartData data, _) => data.y,
                                  borderRadius: const BorderRadius.all(Radius.circular(0)),
                                color: notifire.mapclre
                              )
                            ]
                        ),

                      ),
                    ),
                  )
                ],
              ),
            ],
          )
      ),
    );
  }

  Widget fivecontain({required double size}){
    return  Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          // height: 450,
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
                size<1200?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(width: 20,),
                     Text('Top Selling Products',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
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
                            child: Text('Today',style: TextStyle(color: Color(0xff8231DA))),
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
                       Text('Top Selling Products',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
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
                              child: Text('Today',style: TextStyle(color: Color(0xff8231DA))),
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
                            width: size<1000 ? 700 : 1000,
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
                                      0: FixedColumnWidth(80),
                                      // 1: FixedColumnWidth(130),
                                      // 2: FixedColumnWidth(100),
                                      // 3: FixedColumnWidth(100),
                                    },
                                    children:   <TableRow>[
                                      MemberProgress5demoi(txt1: 'PRDUCTS', txt2: 'NAME', txt3: 'SOLD', txt4: 'REVENUE',clor: const Color(0xff747474)),
                                      MemberProgress3(txt1: 'Premium Clock', txt2: '\$280', txt3: '339', txt4: '\$38,536', img: 'assets/premium-clock.png'),
                                      MemberProgress3(txt1: 'Boys T-Shirt', txt2: '\$25', txt3: '80', txt4: '\$38,536', img: 'assets/t-shirt.png'),
                                      MemberProgress3(txt1: 'Nike Shoes', txt2: '\$32', txt3: '58', txt4: '\$38,536', img: 'assets/nike.png'),
                                      MemberProgress3(txt1: 'Smart Glass', txt2: '\$9,50', txt3: '36', txt4: '\$15,354', img: 'assets/cup-glass.png'),
                                      MemberProgress3(txt1: 'Women Bag', txt2: '\$32', txt3: '40', txt4: '\$12,354', img: 'assets/women-bag.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 400,
                            width: size<1000 ? 700 : 1000,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Table(
                                    columnWidths:  const <int, TableColumnWidth>{
                                      0: FixedColumnWidth(80),
                                      // 1: FixedColumnWidth(130),
                                      // 2: FixedColumnWidth(100),
                                      // 3: FixedColumnWidth(100),
                                    },
                                    children:   <TableRow>[
                                      MemberProgress5demoi(txt1: 'PRDUCTS', txt2: 'NAME', txt3: 'SOLD', txt4: 'REVENUE',clor: const Color(0xff747474)),
                                      MemberProgress3(txt1: 'Samsung Galaxy', txt2: '\$289', txt3: '339', txt4: '\$60,258', img: 'assets/287.png'),
                                      MemberProgress3(txt1: 'Half Sleeve Shirt', txt2: '\$29', txt3: '136', txt4: '\$2,483', img: 'assets/165.png'),
                                      MemberProgress3(txt1: 'Marco Shoes', txt2: '\$59', txt3: '448', txt4: '\$19,758', img: 'assets/166.png'),
                                      MemberProgress3(txt1: '15" Mackbook Pro', txt2: '\$1,299', txt3: '159', txt4: '197,458', img: 'assets/315.png'),
                                      MemberProgress3(txt1: 'Apple iPhone X', txt2: '\$899', txt3: '146', txt4: '115,254', img: 'assets/506.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 400,
                            width: size<1000 ? 700 : 1000,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Table(
                                    columnWidths:  const <int, TableColumnWidth>{
                                      0: FixedColumnWidth(80),
                                      // 1: FixedColumnWidth(130),
                                      // 2: FixedColumnWidth(100),
                                      // 3: FixedColumnWidth(100),
                                    },
                                    children:   <TableRow>[
                                      MemberProgress5demoi(txt1: 'PRDUCTS', txt2: 'NAME', txt3: 'SOLD', txt4: 'REVENUE',clor: const Color(0xff747474)),
                                      MemberProgress3(txt1: 'Samsung Galaxy', txt2: '\$289', txt3: '339', txt4: '\$60,258', img: 'assets/287.png'),
                                      MemberProgress3(txt1: 'Half Sleeve Shirt', txt2: '\$29', txt3: '136', txt4: '\$2,483', img: 'assets/165.png'),
                                      MemberProgress3(txt1: 'Marco Shoes', txt2: '\$59', txt3: '448', txt4: '\$19,758', img: 'assets/166.png'),
                                      MemberProgress3(txt1: '15" Mackbook Pro', txt2: '\$1,299', txt3: '159', txt4: '197,458', img: 'assets/315.png'),
                                      MemberProgress3(txt1: 'Apple iPhone X', txt2: '\$899', txt3: '146', txt4: '115,254', img: 'assets/506.png'),
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
          )
      ),
    );
  }



  Widget sixcontain({required double size}){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          // height: 450,
          // width: 570,
          decoration: BoxDecoration(
            color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              size<1200?
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right: 0),
                child: Column(
                  children: [
                     Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                    const SizedBox(width: 195,),
                    const SizedBox(height: 15,),
                    SizedBox(
                      height: 40,
                      // width: 230,
                      child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                b = index;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff8931D3)))),
                            ),
                          ),
                        );
                      },),
                    ),
                  ],
                ),
              ):
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 10,right: 0),
                child: Row(
                  children: [
                     Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: notifire.textcolore)),
                    const Expanded(child: SizedBox(width: 195,)),
                    SizedBox(
                      height: 40,
                      // width: 230,
                      child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
                        return  Padding(
                          padding: const EdgeInsets.all(2),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                b = index;
                              });
                            },
                            child: Container(
                              height: 30,
                              width: 70,
                              decoration: BoxDecoration(
                                color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff8931D3)))),
                            ),
                          ),
                        );
                      },),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child: Container(
                    // height: 360,
                    width: size<1000 ? 1200 : size,
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
                            columnWidths: const <int, TableColumnWidth>{
                              0: FixedColumnWidth(100),
                              1: FixedColumnWidth(100),
                              2: FixedColumnWidth(100),
                              3: FixedColumnWidth(100),
                              4: FixedColumnWidth(100),
                            },
                            children: [
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _ruw(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _ruw1(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _ruw2(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _ruw3(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _ruw4(),
                              const TableRow(
                                  children: [
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                    SizedBox(height: 10,),
                                  ]
                              ),
                              _ruw5(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }








  TableRow _row (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-1 11.png'))
              ),
            ),
            title: Text('Thai Ukrainian',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$38,536',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Reactjs,HTML',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.4),
              color: Colors.purple,
              value: 0.2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('80%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _row1 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-2 11.png'))
              ),
            ),
            title: Text('Gluttakh Biblical',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$20,573',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Laravel,Angular',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.4),
              color: Colors.blue,
              value: 0.3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('52%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _row2 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-3 2c.png'))
              ),
            ),
            title: Text('English White',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$17,457',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Python,MySQL',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.4),
              color: Colors.green,
              value: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('72%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _row3 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-4 2m.png'))
              ),
            ),
            title: Text('Hinduism Barin',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$15,354',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Wordpress',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.4),
              color: Colors.deepPurpleAccent,
              value: 0.4,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('92%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _row4 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-5 2z.png'))
              ),
            ),
            title: Text('Egyptian Belarusian',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$12,354',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Photoshop',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.4),
              color: Colors.orange,
              value: 0.2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('25%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _row5 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-1 11.png'))
              ),
            ),
            title: Text('Whimsical German',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$12,354',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Illustrator',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.4),
              color: Colors.purpleAccent,
              value: 0.1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('18%',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _rew (){
    return  TableRow(
        children: [
          ListTile(
            title: Text('SELLER NAME',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('COMPANY',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('PRODUCT',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('REVENUE',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('STATUS',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _rew1 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-1 11.png'))
              ),
            ),
            title: Text('Gluttakh Biblical',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Samsung',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Smart Phone',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$38,536',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Done',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _rew2 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-5 2z.png'))
              ),
            ),
            title: Text('Celtic johan',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Aus',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Laptop',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$20,573',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Done',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _rew3 (){
    return  TableRow (
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-4 2m.png'))
              ),
            ),
            title: Text('Basque Belarusian',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Google',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Watch',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$17,457',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Pendinge',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _rew4 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/robert-4.png'))
              ),
            ),
            title: Text('Tsang Xalaxxi',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Apple',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Computer',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$15,354',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Done',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _rew5 (){
    return  TableRow(
        children: [
          ListTile(
            leading: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xffF2EAFB),
                  image: const DecorationImage(image: AssetImage('assets/avatar-1 11.png'))
              ),
            ),
            title: Text('Finnish French',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Panasonic',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Sunglass',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('\$12,354',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text('Done',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
        ]
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

  TableRow _ruw3 (){
    return  TableRow(
        children: [
          ListTile(
            title: Text('Apple Safari',style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
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




  Widget somecontain({required String txt1,required String txt2,required String txt3,required String txt4,required String img1,required String img2,required Color colore1,required Color colore2}) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
          height: 170,
          // width: 570,
          decoration: BoxDecoration(color: notifire.containcolore1, borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: ListTile(
                  title:  Text(txt1, style: TextStyle(fontSize: 30, color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
                  subtitle:  Text(txt2, style: const TextStyle(color: Colors.grey, fontSize: 15), overflow: TextOverflow.ellipsis),
                  trailing: Container(
                    height: 90,
                    width: 60,
                    decoration: BoxDecoration(color: colore1, borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Image(image:  AssetImage(img1), color: colore2,)
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Container(
                  height: 40,
                  // width: 500,
                  decoration: BoxDecoration(color: notifire.getsecoundcontain, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      Image(image: AssetImage(img2), color: Colors.green, height: 15, width: 15,),
                      const SizedBox(width: 5,),
                      Text(txt3, style: const TextStyle(color: Colors.green, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 5,),
                      Text(txt4, style: TextStyle(color: notifire.textcolore, fontSize: 13), overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }

  Widget SalesLocation({required String txt1,required String txt2,required String txt3, Color? colo,required String txt4}){
    return Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(4.5),
        1: FlexColumnWidth(4),
        2: FlexColumnWidth(4),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              Text(txt1,style: TextStyle(color: colo),overflow: TextOverflow.ellipsis),
              Text(txt2,style: TextStyle(color: colo),overflow: TextOverflow.ellipsis),
              Text(txt3,style: TextStyle(color: colo),overflow: TextOverflow.ellipsis),
              Text(txt4,style: TextStyle(color: colo),overflow: TextOverflow.ellipsis),
            ]),
      ],
    );
  }

  Widget MemberProgress({required String txt1,required String txt2,required String txt3,required String txt4,required String img,required Color color,required Color backgrounde,required double vle}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(6),
        1: FlexColumnWidth(6),
        2: FlexColumnWidth(6),
        3: FlexColumnWidth(4),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF2EAFB),
                      image: DecorationImage(image: AssetImage(img))
                  ),
                ),
                title: Text(txt1,style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text(txt2),
              Text(txt3),
              LinearProgressIndicator(
                backgroundColor: backgrounde,
                color: color,
                value: vle,
              ),
              Text(txt4)
            ]),
      ],
    );
  }

  Widget MemberProgress2({required String txt1,required String txt2,required String txt3,required String txt4,required String txt5,required String img}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(6),
        1: FlexColumnWidth(6),
        2: FlexColumnWidth(6),
        3: FlexColumnWidth(4),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF2EAFB),
                      image: DecorationImage(image: AssetImage(img))
                  ),
                ),
                title: Text(txt1,style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
              Text(txt2),
              Text(txt3),
              Text(txt4),
              Text(txt5),
            ]),
      ],
    );
  }

  TableRow MemberProgress3({required String txt1,required String txt2,required String txt3,required String txt4,required String img}){
    return  TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 40,top: 20,bottom: 10),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(image: AssetImage(img),fit: BoxFit.cover),
              ),
            ),
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
            padding: const EdgeInsets.only(top: 25,bottom: 10),
            child: Text(txt4,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
          ),
        ]);
  }

  Widget MemberProgress4({required String txt1,required String txt2,required String txt3,required String txt4,required String txt5, Color? clore}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              Text(txt1,style: TextStyle(overflow: TextOverflow.ellipsis,color: clore)),
              Text(txt2,style: TextStyle(overflow: TextOverflow.ellipsis,color: clore)),
              Text(txt3,style: TextStyle(overflow: TextOverflow.ellipsis,color: clore)),
              Text(txt4,style: TextStyle(overflow: TextOverflow.ellipsis,color: clore)),
              Text(txt5,style: TextStyle(overflow: TextOverflow.ellipsis,color: clore)),
            ]),
      ],
    );
  }

  Widget MemberProgressdemo({required String txt1,required String txt2,required String txt3,required String txt4,required String img,required Color color,required Color backgrounde,required double vle}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(6),
        1: FlexColumnWidth(6),
        2: FlexColumnWidth(6),
        3: FlexColumnWidth(4),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF2EAFB),
                      image: DecorationImage(image: AssetImage(img))
                  ),
                ),
                title: Text(txt1,style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt3,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              LinearProgressIndicator(
                backgroundColor: backgrounde,
                color: color,
                value: vle,
              ),
              const SizedBox(width: 3,),
              Text(txt4,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore))
            ]),
      ],
    );
  }

  Widget MemberProgressdemo1({required String txt1,required String txt2,required String txt3,required String txt4,required String img,required Color color,required Color backgrounde,required double vle,required String txt5,required String txt6}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(3),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(2.3),
        3: FlexColumnWidth(2.3),
        4: FlexColumnWidth(2.3),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF2EAFB),
                      image: DecorationImage(image: AssetImage(img))
                  ),
                ),
                title: Text(txt1,style: const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis),
              Text(txt3,overflow: TextOverflow.ellipsis),
              Text(txt5,overflow: TextOverflow.ellipsis),
              Text(txt6,overflow: TextOverflow.ellipsis),
              LinearProgressIndicator(
                backgroundColor: backgrounde,
                color: color,
                value: vle,
              ),
              const SizedBox(width: 3,),
              Text(txt4,overflow: TextOverflow.ellipsis)
            ]),
      ],
    );
  }

  Widget MemberProgress2demo({required String txt1,required String txt2,required String txt3,required String txt4,required String txt5, String? img}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(4),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(3),
        3: FlexColumnWidth(3),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF2EAFB),
                      image: DecorationImage(image: AssetImage(img!))
                  ),
                ),
                title: Text(txt1,style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt3,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt4,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt5,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
            ]),
      ],
    );
  }

  Widget MemberProgress22demo({required String txt1,required String txt2,required String txt3,required String txt4,required String txt5, String? img,required String txt6}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                leading: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xffF2EAFB),
                      image: DecorationImage(image: AssetImage(img!))
                  ),
                ),
                title: Text(txt1,style: const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis),
              Text(txt3,overflow: TextOverflow.ellipsis),
              Text(txt4,overflow: TextOverflow.ellipsis),
              Text(txt5,overflow: TextOverflow.ellipsis),
              Text(txt6,overflow: TextOverflow.ellipsis),
            ]),
      ],
    );
  }

  Widget MemberProgress33demo({required String txt1,required String txt2,required String txt3 ,required String txt4, required String txt5, required String txt6}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                title: Text(txt1,style: const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis),
              Text(txt3,overflow: TextOverflow.ellipsis),
              Text(txt4,overflow: TextOverflow.ellipsis),
              Text(txt5,overflow: TextOverflow.ellipsis),
              Text(txt6,overflow: TextOverflow.ellipsis),
            ]),
      ],
    );
  }

  Widget MemberProgress3demo({required String txt1,required String txt2,required String txt3 ,required String txt5, String? txt4}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(4),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(3),
        3: FlexColumnWidth(3),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                title: Text(txt1,style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt3,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt4!,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt5,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
            ]),
      ],
    );
  }

  Widget MemberProgress4demo({required String txt1,required String txt2,required String txt3 ,required String txt5, String? txt4}){
    return  Table(
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(3),
        1: FlexColumnWidth(3.3),
        2: FlexColumnWidth(2.7),
        3: FlexColumnWidth(2.5),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                title: Text(txt1,style:  TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis,color: notifire.textcolore)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt3,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt4!,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              Text(txt5,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
            ]),
      ],
    );
  }

  Widget MemberProgress44demo({required String txt1,required String txt2,required String txt3,required String txt4, required String txt5, required String txt6, required String txt7}){
    return  Table(
      columnWidths: const <int,TableColumnWidth>{
        0: FlexColumnWidth(2.8),
        1: FlexColumnWidth(2.7),
        2: FlexColumnWidth(1.9),
        3: FlexColumnWidth(2.2),
        4: FlexColumnWidth(2),
        5: FlexColumnWidth(1.8),
        // 6: FlexColumnWidth(0.2),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children:  <TableRow>[
        TableRow(
            children: [
              ListTile(
                title: Text(txt1,style: const TextStyle(fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis)),
              ),
              Text(txt2,overflow: TextOverflow.ellipsis),
              Text(txt3,overflow: TextOverflow.ellipsis),
              Text(txt4,overflow: TextOverflow.ellipsis),
              Text(txt5,overflow: TextOverflow.ellipsis),
              Text(txt6,overflow: TextOverflow.ellipsis),
              Text(txt7,overflow: TextOverflow.ellipsis),
            ]),
      ],
    );
  }

  TableRow MemberProgress5demoi({required String txt1,required String txt2,required String txt3 ,required String txt4,required Color clor}) {
    return TableRow(
        children: [
          Text(txt1, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt2, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt3, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt4, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
          Text(txt4, overflow: TextOverflow.ellipsis,
              style: TextStyle(color: clor)),
        ]);
  }

}



class ChartData {
  ChartData(this.x, this.y, this.y1);
  final int x;
  final double y;
  final double y1;
}

