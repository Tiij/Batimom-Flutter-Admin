

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';

enum SampleItem { itemOne, itemTwo, itemThree }


class Order_Screen_1 extends StatefulWidget {
  const Order_Screen_1({Key? key}) : super(key: key);

  @override
  State<Order_Screen_1> createState() => _Order_Screen_1State();
}

class _Order_Screen_1State extends State<Order_Screen_1> {


  InboxController inboxController = Get.put(InboxController());

  List text=[
    'All Project',
    'Pending',
    'Done',
    'Archieved',
  ];

  int currentIndex = 0;

  ColorNotifire notifire = ColorNotifire();

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
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
                firstcontain(size: constraints.maxWidth,context: context),
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
                    Expanded(child: firstcontain(size: constraints.maxWidth,context: context))
                  ],
                )
              ],),
          );
        }
        else{
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
                    Expanded(child: firstcontain(size: constraints.maxWidth,context: context))
                  ],
                ),
                const SizedBox(height: 20,),
              ],
            ),
          );
        }
      },),
    );
  }






  Widget firstcontain({required double size,context}){
    return GetBuilder<InboxController>(
        builder: (inboxController) {
          return Padding(
            padding: const EdgeInsets.only(left: 0,right: 10),
            child: Container(
              // height: 780,
              decoration: BoxDecoration(
                // color: Colors.black,
                // color: Colors.orangeAccent.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 20),
                        child: Container(
                          // height: 550,
                          width: size<1400 ? 1600 : size,
                          decoration: BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Table(
                                      // border: TableBorder.all(color: Colors.black),
                                      columnWidths: const <int, TableColumnWidth>{
                                        0: FixedColumnWidth(10),
                                        1: FixedColumnWidth(200),
                                        2: FixedColumnWidth(50),
                                        3: FixedColumnWidth(400),
                                        4: FixedColumnWidth(20),
                                        5: FixedColumnWidth(50),
                                      },
                                      children: [
                                        _row(size),
                                        const TableRow (
                                          children: [
                                            SizedBox(height: 15,),
                                            SizedBox(height: 15,),
                                            SizedBox(height: 15,),
                                            SizedBox(height: 15,),
                                            SizedBox(height: 15,),
                                            SizedBox(height: 15,),
                                          ]
                                        ),
                                        _row1(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row2(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row3(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row4(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row5(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row6(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row7(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row8(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row9(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row10(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                        _row11(size),
                                        const TableRow (
                                            children: [
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                              SizedBox(height: 15,),
                                            ]
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }

  bool isChecked0 = false;
  TableRow _row (double size){
    return  TableRow(
      decoration: const BoxDecoration(
        color: Color(0xffdcdfe5),
        borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
      ),
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:10,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => const BorderSide(width: 1.0, color: Colors.black),
              ),
              value: isChecked0,
              onChanged: (bool? value) {
                setState(() {
                  isChecked0 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 16: 16),
            child: const Text('Order',style: TextStyle(color: Colors.black)),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 16: 16),
            child: const Text('Date',style: TextStyle(color: Colors.black)),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 16: 16),
            child: const Text('Ship To',style: TextStyle(color: Colors.black)),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20,top: size<700? 16: 16),
            child: const Text('Status',style: TextStyle(color: Colors.black)),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 16: 16,left: 50),
            child: const Text('Amount',style: TextStyle(color: Colors.black)),
          ),
        ]
    );
  }

  SampleItem? selectedMenu;

  bool isChecked1 = false;
  TableRow _row1 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked1,
              onChanged: (bool? value) {
                setState(() {
                  isChecked1 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
            child: Container(
               height: 25,
               // width: 100,
                decoration: BoxDecoration(
                 color: const Color(0xffa6fee9),
                  borderRadius: BorderRadius.circular(5),
               ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(child: Text('Complated',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                  SizedBox(width: 5,),
                  Icon(Icons.rotate_right,color: Colors.black,)
                ],
              ),
            )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                       const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked2 = false;
  TableRow _row2 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked2,
              onChanged: (bool? value) {
                setState(() {
                  isChecked2 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffdadde3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('Processing',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked3 = false;
  TableRow _row3 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked3,
              onChanged: (bool? value) {
                setState(() {
                  isChecked3 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffdadde3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('On Hold',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked4 = false;
  TableRow _row4 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked4,
              onChanged: (bool? value) {
                setState(() {
                  isChecked4 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('Pending',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked5 = false;
  TableRow _row5 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked5,
              onChanged: (bool? value) {
                setState(() {
                  isChecked5 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffdadde3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('On Hold',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked6 = false;
  TableRow _row6 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked6,
              onChanged: (bool? value) {
                setState(() {
                  isChecked6 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffdadde3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('Processing',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked7 = false;
  TableRow _row7 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked7,
              onChanged: (bool? value) {
                setState(() {
                  isChecked7 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffa6fee9),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('Complated',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }


  bool isChecked8 = false;
  TableRow _row8 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked8,
              onChanged: (bool? value) {
                setState(() {
                  isChecked8 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffdadde3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('Processing',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked9 = false;
  TableRow _row9 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked9,
              onChanged: (bool? value) {
                setState(() {
                  isChecked9 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffdadde3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('On Hold',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }


  bool isChecked10 = false;
  TableRow _row10 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked10,
              onChanged: (bool? value) {
                setState(() {
                  isChecked10 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('Pending',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }

  bool isChecked11 = false;
  TableRow _row11 (double size){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              checkColor: Colors.black,
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              value: isChecked11,
              onChanged: (bool? value) {
                setState(() {
                  isChecked11 = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('£181 by Ricky Antony',style: TextStyle(color: notifire.textcolore),),
                Text('ricky@example.com',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text('20/04/2020',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('text ever since the 1500s, when an unknown printer took',style: TextStyle(color: notifire.textcolore),),
                Text('when an unknown printer',style: TextStyle(color: notifire.textcolore),),
              ],
            ),
          ),
          Padding(
              padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20,right: 20),
              child: Container(
                height: 25,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffdadde3),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(child: Text('On Hold',style: TextStyle(color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 1,)),
                    SizedBox(width: 5,),
                    Icon(Icons.rotate_right,color: Colors.black,)
                  ],
                ),
              )
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 10),
            child: Row(
              children: [
                const Spacer(),
                Text('\$99',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                const Spacer(),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEAEBEE),
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: PopupMenuButton<SampleItem>(
                    initialValue: selectedMenu,
                    child: const Icon(Icons.more_vert),
                    onSelected: (SampleItem item) {
                      setState(() {
                        selectedMenu = item;
                      });
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemOne,
                        child: Text('Completed'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemTwo,
                        child: Text('Processing'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('On Hold'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Pendinge'),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Divider(color: Colors.black),
                      ),
                      const PopupMenuItem<SampleItem>(
                        value: SampleItem.itemThree,
                        child: Text('Delete',style: TextStyle(color: Colors.red)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
              ],
            ),
          ),
        ]
    );
  }



  Widget mainrow(){
    return   Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: Text('Order',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 100,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Order',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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




}
