

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import '../demo-1-screen/common_layout.dart';

class invoice_screen extends StatefulWidget {
  const invoice_screen({super.key});

  @override
  State<invoice_screen> createState() => _invoice_screenState();
}

class _invoice_screenState extends State<invoice_screen> {
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
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: firstcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 70,),
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
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: firstcontain(size: constraints.maxWidth))
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
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: firstcontain(size: constraints.maxWidth))
                  ],
                )
              ],
            ),
          );
        }
      },),
    );
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
                child: Text('Invoice',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 103,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/document123.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Invoice',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  bool isChecked = false;
  Widget firstcontain({required double size}){
    return Padding(
      padding: const EdgeInsets.only(left: 0,right: 10),
      child: Container(
        height: 780,
        decoration: BoxDecoration(
          // color: Colors.black,
          // color: Colors.orangeAccent.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 20),
                child: Container(
                  // height: 660,
                  width: size<1000 ? 1200 : size,
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
                              // border: TableBorder.all(color: Colors.white),
                              columnWidths: const <int, TableColumnWidth>{
                                0: FixedColumnWidth(50),
                                1: FixedColumnWidth(100),
                                2: FixedColumnWidth(200),
                                3: FixedColumnWidth(100),
                                4: FixedColumnWidth(50),
                                5: FixedColumnWidth(100),
                                6: FixedColumnWidth(100),
                                7: FixedColumnWidth(100),
                              },
                              children: [
                                const TableRow(
                                  children: [
                                    SizedBox(height: 20,),
                                    SizedBox(height: 20,),
                                    SizedBox(height: 20,),
                                    SizedBox(height: 20,),
                                    SizedBox(height: 20,),
                                    SizedBox(height: 20,),
                                    SizedBox(height: 20,),
                                  ]
                                ),
                                _row(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                    ]
                                ),
                                _row1(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                    ]
                                ),
                                _row2(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                    ]
                                ),
                                _row3(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                    ]
                                ),
                                _row4(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                    ]
                                ),
                                _row5(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                    ]
                                ),
                                _row6(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                    ]
                                ),
                                _row7(),
                                const TableRow(
                                    children: [
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
                                      SizedBox(height: 20,),
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
          ],
        ),
      ),
    );
  }

  TableRow _row (){
    return  TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 40,),
            child: Text('#',style: TextStyle(color: Colors.blue),),
          ),
          Text('Name',style: TextStyle(color: notifire.textcolore),),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Client Name',style: TextStyle(color: notifire.textcolore),),
          ),
          Text('Issued Date',style: TextStyle(color: notifire.textcolore),),
          Text('Total',style: TextStyle(color: notifire.textcolore),),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text('Balance',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Text('Action',style: TextStyle(color: notifire.textcolore),),
          ),
        ]
    );
  }


  SampleItem? selectedMenu;
  TableRow _row1 (){
    return   TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Text('#14251',style: TextStyle(color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Degin of artic',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-2 1.png'),backgroundColor: Colors.yellow,radius: 20,),
            title: Text('Ophelia Olson',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
            subtitle: Text('@opheliaolson',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('14 Mar 2023',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('\$400',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 15),
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xffE4F7F4),
                borderRadius: BorderRadius.circular(5)
              ),
              child: const Center(child: Text('Paid',style: TextStyle(color: Colors.green),maxLines: 1,)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 13),
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xffF4F5F7),
                borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child:  PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                child: const Icon(Icons.more_vert,color: Colors.black),
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
              )),
            ),
          )
        ]
    );
  }

  TableRow _row2 (){
    return   TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Text('#14251',style: TextStyle(color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Stephanie Macdonald',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-4 2.png'),backgroundColor: Colors.pink,radius: 20,),
            title: Text('Remy Cross',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
            subtitle: Text('@remycross',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('12 Feb 2023',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('\$400',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 15),
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.pinkAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: const Center(child: Text('\$400',style: TextStyle(color: Colors.pink),maxLines: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 13),
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child:  PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                child: const Icon(Icons.more_vert,color: Colors.black),
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
              )),
            ),
          )
        ]
    );
  }

  TableRow _row3 (){
    return   TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Text('#14251',style: TextStyle(color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Genesis Hampton degn',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-1 1.png'),backgroundColor: Colors.orange,radius: 20,),
            title: Text('Gia Roy',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
            subtitle: Text('@giaroy',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('10 Mar 2023',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('\$321',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 15),
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffE4F7F4),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: const Center(child: Text('Paid',style: TextStyle(color: Colors.green),maxLines: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 13),
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child:  PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                child: const Icon(Icons.more_vert,color: Colors.black),
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
              )),
            ),
          )
        ]
    );
  }

  TableRow _row4 (){
    return   TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Text('#14251',style: TextStyle(color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Johnathan McCullough',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-5 2.png'),backgroundColor: Colors.deepOrange,radius: 20,),
            title: Text('Evie Lucas',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
            subtitle: Text('@evielucas',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('8 Mar 2023',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('\$200',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 15),
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffE4F7F4),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: const Center(child: Text('Paid',style: TextStyle(color: Colors.green),maxLines: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 13),
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child:  PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                child: const Icon(Icons.more_vert,color: Colors.black),
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
              )),
            ),
          )
        ]
    );
  }

  TableRow _row5 (){
    return   TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Text('#14251',style: TextStyle(color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Veronica Anderson',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-2 1.png'),backgroundColor: Colors.yellow,radius: 20,),
            title: Text('Carl Marin',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
            subtitle: Text('@carlmarin',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('1 Mar 2023',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('\$123',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 15),
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: const Center(child: Text('Paid',style: TextStyle(color: Colors.pink),maxLines: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 13),
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child:  PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                child: const Icon(Icons.more_vert,color: Colors.black),
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
              )),
            ),
          )
        ]
    );
  }

  TableRow _row6 (){
    return   TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Text('#14251',style: TextStyle(color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Maximiliano Gonzales',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-4 2.png'),backgroundColor: Colors.pink,radius: 20,),
            title: Text('June Price',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
            subtitle: Text('@juneprice',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('3 Apr 2023',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('\$99',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 15),
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: const Center(child: Text('\$99',style: TextStyle(color: Colors.pink),maxLines: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 13),
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child:  PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                child: const Icon(Icons.more_vert,color: Colors.black),
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
              )),
            ),
          )
        ]
    );
  }

  TableRow _row7 (){
    return   TableRow(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 20),
            child: Text('#14251',style: TextStyle(color: Colors.blue),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('Guadalupe name',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-1 1.png'),backgroundColor: Colors.orange,radius: 20,),
            title: Text('Elle Murillo',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
            subtitle: Text('@ellemurillo',style: TextStyle(color: notifire.textcolore,fontSize: 13),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('14 Mar 2023',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text('\$400',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60,top: 15),
            child: Container(
              height: 30,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffE4F7F4),
                  borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(child: Text('Paid',style: TextStyle(color: Colors.green),maxLines: 1)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 70,right: 70,top: 13),
            child: Container(
              height: 35,
              width: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffF4F5F7),
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Center(child:  PopupMenuButton<SampleItem>(
                initialValue: selectedMenu,
                child: const Icon(Icons.more_vert,color: Colors.black),
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
              )),
            ),
          )
        ]
    );
  }



}
