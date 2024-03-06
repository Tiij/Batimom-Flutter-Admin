// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';

class Cart_screen_1 extends StatefulWidget {
  const Cart_screen_1({Key? key}) : super(key: key);

  @override
  State<Cart_screen_1> createState() => _Cart_screen_1State();
}

class _Cart_screen_1State extends State<Cart_screen_1> {


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
                firstcontain(size: constraints.maxWidth),
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
                    Expanded(child:  firstcontain(size: constraints.maxWidth)),
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
                    Expanded(child: firstcontain(size: constraints.maxWidth))
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff3952dd))),
                        child: const Text('Checkout Now',style: TextStyle(color: Colors.white)),
                      ),
                    ),
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



  bool isChecked = false;

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
                                      border: TableBorder.all(color: Colors.grey.withOpacity(0.4),borderRadius: BorderRadius.circular(10)),
                                      columnWidths: const <int, TableColumnWidth>{
                                        0: FixedColumnWidth(400),
                                        1: FixedColumnWidth(200),
                                        2: FixedColumnWidth(10),
                                        3: FixedColumnWidth(60),
                                        4: FixedColumnWidth(10),
                                      },
                                      children: [
                                        _row(),
                                        _row1(),
                                        _row2(),
                                        _row3(),
                                        _row4(),
                                        _row5(),
                                        _row6(),
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

  TableRow _row (){
    return TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('Product',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('Product',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('Product',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('Product',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('Remove',style: TextStyle(color: notifire.textcolore)),
          ),
        ]
    );
  }

  TableRow _row1 (){
    return TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  10,bottom: 10,left: 20,right: 20),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('assets/bitbucket.png')),
                )),
              ),
              title: Text('Home Base',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
              subtitle: Text('Size: Large',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  30,bottom: 10,left: 20,right: 20),
            child: Text('\$148.66',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Container(
              // height: 30,
              // width: 100,
              decoration: BoxDecoration(
                color: notifire.bgcolore,
                borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  contentPadding: const EdgeInsets.only(top: 10,left: 10),
                  hintText: '5',hintStyle: TextStyle(fontSize: 15,color: notifire.textcolore)
                ),
              ),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('\$743.30',style: TextStyle(color: notifire.textcolore)),
          ),
          const Padding(
            padding:  EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: CircleAvatar(backgroundColor: Colors.red,child: Padding(
              padding: EdgeInsets.all(11),
              child: Image(image: AssetImage('assets/trash (1).png'),color: Colors.white),
            )),
          ),
        ]
    );
  }

  TableRow _row2 (){
    return TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  10,bottom: 10,left: 20,right: 20),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('assets/bitbucket.png')),
                )),
              ),
              title: Text('Camera Base',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
              subtitle: Text('Size: Large',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  30,bottom: 10,left: 20,right: 20),
            child: Text('\$124.66',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Container(
              // height: 30,
              // width: 10,
              decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.only(top: 10,left: 10),
                    hintText: '7',hintStyle: TextStyle(fontSize: 15,color: notifire.textcolore)
                ),
              ),
            ),
          ),
          Padding (
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('\$547.30',style: TextStyle(color: notifire.textcolore)),
          ),
          const Padding(
            padding:  EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: CircleAvatar(backgroundColor: Colors.red,child: Padding(
              padding: EdgeInsets.all(11),
              child: Image(image: AssetImage('assets/trash (1).png'),color: Colors.white),
            )),
          ),


        ]
    );
  }

  TableRow _row3 (){
    return TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  10,bottom: 10,left: 20,right: 20),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('assets/bitbucket.png')),
                )),
              ),
              title: Text('Bluethood',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
              subtitle: Text('Size: Large',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  30,bottom: 10,left: 20,right: 20),
            child: Text('\$148.66',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Container(
              // height: 30,
              // width: 10,
              decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.only(top: 10,left: 10),
                    hintText: '5',hintStyle: TextStyle(fontSize: 15,color: notifire.textcolore)
                ),
              ),
            ),
          ),
          Padding (
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('\$743.30',style: TextStyle(color: notifire.textcolore)),
          ),
          const Padding(
            padding:  EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: CircleAvatar(backgroundColor: Colors.red,child: Padding(
              padding: EdgeInsets.all(11),
              child: Image(image: AssetImage('assets/trash (1).png'),color: Colors.white),
            )),
          ),


        ]
    );
  }


  TableRow _row4 (){
    return TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  10,bottom: 10,left: 20,right: 20),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('assets/bitbucket.png')),
                )),
              ),
              title: Text('Home Base',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
              subtitle: Text('Size: Large',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  30,bottom: 10,left: 20,right: 20),
            child: Text('\$148.66',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Container(
              // height: 30,
              // width: 10,
              decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.only(top: 10,left: 10),
                    hintText: '5',hintStyle: TextStyle(fontSize: 15,color: notifire.textcolore)
                ),
              ),
            ),
          ),
          Padding (
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('\$743.30',style: TextStyle(color: notifire.textcolore)),
          ),
          const Padding(
            padding:  EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: CircleAvatar(backgroundColor: Colors.red,child: Padding(
              padding: EdgeInsets.all(11),
              child: Image(image: AssetImage('assets/trash (1).png'),color: Colors.white),
            )),
          ),


        ]
    );
  }

  TableRow _row5 (){
    return TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  10,bottom: 10,left: 20,right: 20),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('assets/bitbucket.png')),
                )),
              ),
              title: Text('Home Base',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
              subtitle: Text('Size: Large',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  30,bottom: 10,left: 20,right: 20),
            child: Text('\$148.66',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Container(
              // height: 30,
              // width: 10,
              decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.only(top: 10,left: 10),
                    hintText: '5',hintStyle: TextStyle(fontSize: 15,color: notifire.textcolore)
                ),
              ),
            ),
          ),
          Padding (
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('\$743.30',style: TextStyle(color: notifire.textcolore)),
          ),
          const Padding(
            padding:  EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: CircleAvatar(backgroundColor: Colors.red,child: Padding(
              padding: EdgeInsets.all(11),
              child: Image(image: AssetImage('assets/trash (1).png'),color: Colors.white),
            )),
          ),


        ]
    );
  }

  TableRow _row6 (){
    return TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  10,bottom: 10,left: 20,right: 20),
            child: ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image(image: AssetImage('assets/bitbucket.png')),
                )),
              ),
              title: Text('Home Base',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
              subtitle: Text('Size: Large',style: TextStyle(color: notifire.textcolore,fontSize: 12)),
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  30,bottom: 10,left: 20,right: 20),
            child: Text('\$148.66',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Container(
              // height: 30,
              // width: 10,
              decoration: BoxDecoration(
                  color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.only(top: 10,left: 10),
                    hintText: '5',hintStyle: TextStyle(fontSize: 15,color: notifire.textcolore)
                ),
              ),
            ),
          ),
          Padding (
            padding:  const EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: Text('\$743.30',style: TextStyle(color: notifire.textcolore)),
          ),
          const Padding(
            padding:  EdgeInsets.only(top:  20,bottom: 10,left: 20,right: 20),
            child: CircleAvatar(backgroundColor: Colors.red,child: Padding(
              padding: EdgeInsets.all(11),
              child: Image(image: AssetImage('assets/trash (1).png'),color: Colors.white),
            )),
          ),


        ]
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
                child: Text('Cart',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
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
                      Text('Cart',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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











  static const Color appGreyColor = Color(0xffa1a1ae);

//..............TextStyle....................

  TextStyle mainTextStyle =  const TextStyle(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black,fontFamily: "Gilroy");
  TextStyle mediumGreyTextStyle = const TextStyle(fontSize: 14,color: appGreyColor,fontFamily: "Gilroy");
  TextStyle mediumBlackTextStyle = const TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Gilroy");





  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;

  void counterfun() {
    setState(() {
      counter1++;
    });
  }

  void counterfun1() {
    setState(() {
      counter2++;
    });
  }

  void counterfun2() {
    setState(() {
      counter3++;
    });
  }

  void decrimant() {
    setState(() {
      if (counter1 > 0) {
        counter1--;
      }
    });
  }

  void decrimant1() {
    setState(() {
      if (counter2 > 0) {
        counter2--;
      }
    });
  }

  void decrimant2() {
    setState(() {
      if (counter3 > 0) {
        counter3--;
      }
    });
  }









}
