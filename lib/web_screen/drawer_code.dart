// ignore_for_file: non_constant_identifier_names, camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/Auth_Screen/create_account_screen.dart';
import 'package:web_project1/Auth_Screen/forgot_screen.dart';
import 'package:web_project1/Auth_Screen/login_screen.dart';
import 'package:web_project1/Auth_Screen/otp_screen.dart';
import 'package:web_project1/Auth_Screen/otp_screen_2.dart';
import 'package:web_project1/Auth_Screen/auth_screen.dart';
import 'package:web_project1/demo-1-screen/common_layout.dart';
import 'package:web_project1/email-inbox-screen/inbox_screen.dart';

import '../Auth_Screen/forgot_screen_2.dart';
import '../Auth_Screen/sign_up_screen.dart';
import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';

class mypages{
 static List page=[
    const laout(),
    const Inbox(),
  ];
 static int pageselecter = 0;
}

class Drawer1 extends StatefulWidget {
  final double size;
  const Drawer1({super.key, required this.size});

  @override
  State<Drawer1> createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {

  List Demo = [
    'Demo 1',
    'Demo 2',
    'Demo 3',
    'Demo 4',
    'Demo 5',
    'Demo 6',
    'Demo 7',
    'Demo 8',
    'Demo 9',
    'Demo 10',
  ];
  List Layout = [
    'Light Mode',
    'Dark Mode',
    'Top Menu',
    'RTL',
    'LTR',
  ];
  List Commerce = [
    'Products',
    'Products Detaile',
    'Products Add',
    'Products Edit',
    'Cart',
    'Orders',
    'Sellers',
    'Invoices',
  ];
  List user = [
    'Team',
    'Users Grid',
    'Users List',
    'Users Grid Style',
    'Users Group',
    'Add Users',
    'Users Table',
  ];
  List Elements = [
    'Alert',
    'Avtare',
    'Badge',
    'Breadcrumb',
    'Button',
    'Cards',
    'Carousl',
    'Checkbox',
    'Callapose',
    'Comments',
    'DatePicker',
    'Drawer',
    'Drage & Drop',
    'Dropdown',
    'Empty',
    'Grid',
    'Input',
    'List',
    'Menu',
    'Messange',
    'Modals',
    'Notification',
    'Page Hearder',
    'Paginatrion',
    'Progress',
    'Radio',
    'Rate',
    'Resuilt',
    'Select',
    'Slider',
    'Spinner',
    'Statistic',
    'Steps',
    'Switch',
    'Tabs',
    'Tags',
    'Timeline',
    'Timeline 2',
    'Timeline 3',
    'Timepicker',
    'Typography',
    'Uploade',
  ];
  InboxController inboxController = Get.put(InboxController());
  int inde = 0;
  int vale = 0;


  @override
  void initState() {
    super.initState();
  }



  bool switchvalue = false;
  ColorNotifire notifire = ColorNotifire();


  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<InboxController>(
        builder: (inboxController) {
          return LayoutBuilder(
              builder: (context, constraints) {
                return  Drawer(
                  backgroundColor: notifire.getdrwer,
                  child: Column(
                    children: [
                      SizedBox(height:widget.size<700?  30 : 20,),

                      Row(
                        children: [
                          const SizedBox(width: 20,),
                          InkWell(
                              onTap: () {
                                inboxController.setTextIsTrue(0);
                              },
                              child: const Image(image: AssetImage('assets/Symbol.png'))),
                          const SizedBox(width: 10,),
                          InkWell(
                              onTap: () {
                                inboxController.setTextIsTrue(0);
                              },
                              child: Text('Firework', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis)),
                        ],
                      ),
                      // Column(
                      //    children: [
                      //      constraints.maxWidth<700?
                      //      SafeArea(
                      //        child: Padding(
                      //          padding: const EdgeInsets.only(top: 50),
                      //          child: Row(
                      //            children: [
                      //              const SizedBox(width: 20,),
                      //              const Image(image: AssetImage('assets/Symbol.png')),
                      //              const SizedBox(width: 10,),
                      //              Text('Firework', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
                      //            ],
                      //          ),
                      //        ),
                      //      ):
                      //      Row(
                      //       children: [
                      //         const SizedBox(width: 20,),
                      //         const Image(image: AssetImage('assets/Symbol.png')),
                      //         const SizedBox(width: 10,),
                      //         Text('Firework', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
                      //       ],
                      // ),
                      //    ],
                      //  ),
                      const SizedBox(height: 10,),



                      Expanded(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 30,),

                                Text('Home',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                                const SizedBox(height: 10,),





                                // Container(
                                //   decoration: BoxDecoration(
                                //     color: inboxController.pageselecter == 0? notifire.deercolore:Colors.transparent,
                                //     borderRadius: BorderRadius.circular(15)
                                //   ),
                                //   child: ListTile(
                                //     onTap: () {
                                //       inboxController.setTextIsTrue(0);
                                //       setState(() {
                                //         inboxController.setTextIsTrue(0);
                                //       });
                                //     },
                                //     trailing: const SizedBox(),
                                //     title: Text('Dashboard', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: inboxController.pageselecter == 0 ? notifire.drwetextcode : notifire.textcolore),),
                                //     leading:  Image(image: const AssetImage('assets/1.png'),color: inboxController.pageselecter == 0 ? notifire.drwetextcode : notifire.textcolore),
                                //   ),
                                // ),



                                Container(
                                  decoration: BoxDecoration(
                                      color: inboxController.pageselecter == 0? notifire.deercolore : Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(0);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Dashboard', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 0? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(
                                        image: const AssetImage('assets/1.png'),height: 20,width: 20, color: inboxController.pageselecter == 0 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: inboxController.pageselecter == 1? notifire.deercolore:Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(1);
                                      Get.back();
                                    },
                                    trailing: Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(65)
                                      ),
                                      child: const Center(child: Text('4',style: TextStyle(color: Colors.white,fontSize: 10),)),
                                    ),
                                    title: Text('Email', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 1 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(
                                        image: const AssetImage('assets/3.png'),height: 20,width: 20, color: inboxController.pageselecter == 1 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 21? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(21);
                                      Get.back();
                                    },
                                    trailing: Container(
                                      height: 20,
                                      width: 45,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff9CCC34),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: const Center(child: Text('New',style: TextStyle(color: Colors.white,fontSize: 13),)),
                                    ),
                                    title: Text('All Widget', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 21 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/grid-web-3.png'),height: 20,width: 20,  color: inboxController.pageselecter == 21 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),

                                const SizedBox(height: 10,),
                                Text('Apps',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                                const SizedBox(height: 10,),



                                Container(
                                  decoration: BoxDecoration(
                                      color: inboxController.pageselecter == 2? notifire.deercolore:Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(2);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Project', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 2 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(
                                        image: const AssetImage('assets/6.png'),height: 20,width: 20, color: inboxController.pageselecter == 2 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: inboxController.pageselecter == 29? notifire.deercolore:Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(29);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Project Create', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 29 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(
                                        image: const AssetImage('assets/file-plus.png'),height: 20,width: 20, color: inboxController.pageselecter == 29 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 20? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(20);
                                      Get.back();
                                    },
                                    trailing: Container(
                                      height: 21,
                                      width: 21,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(65),
                                      ),
                                      child: const Center(child: Text('1',style: TextStyle(color: Colors.white,fontSize: 10),)),
                                    ),
                                    title: Text('Chat', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 20 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/chat-dots-notification.png'),height: 20,width: 20,  color: inboxController.pageselecter == 20 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),



                                const SizedBox(height: 10,),
                                Text('E-commerce',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                                const SizedBox(height: 10,),

                                //  E commerce stack
                                Stack (
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color:  inboxController.pageselecter == 39  ? notifire.deercolore : inboxController.pageselecter == 39  ? notifire.deercolore : Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Theme(
                                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                        onExpansionChanged: (value) {
                                          inboxController.setTextIsTrue(39);
                                          // inboxController.setTextIsTrue(3);
                                        },
                                        title: Text('E commerce', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 39 ? notifire.drwetextcode : notifire.textcolore),),
                                        leading: Image(image: const AssetImage('assets/shopping-cart-star123.png'),height: 20,width: 20, color: inboxController.pageselecter == 39 ? notifire.drwetextcode : notifire.textcolore),
                                        children: <Widget>[
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(39);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Product',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController.pageselecter == 39 ? notifire.drwetextcode : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(40);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Detail Product',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 40
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(41);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Cart',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 41
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(42);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Check out',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 42
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(43);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Order',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 43
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(44);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Add product',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 44
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),

                                        ],
                                      ),
                                    ),

                                  ],
                                ),


                                // Invoice screen
                                Stack (
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color:  inboxController.pageselecter == 30  ? notifire.deercolore : inboxController.pageselecter == 31  ? notifire.deercolore : Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Theme(
                                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                        onExpansionChanged: (value) {
                                          inboxController.setTextIsTrue(30);
                                          // inboxController.setTextIsTrue(3);
                                        },
                                        title: Text('Invoice', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 30 ? notifire.drwetextcode : notifire.textcolore),),
                                        leading: Image(image: const AssetImage('assets/document123.png'),height: 20,width: 20, color: inboxController.pageselecter == 30 ? notifire.drwetextcode : notifire.textcolore),
                                        children: <Widget>[
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(30);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Invoice List',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 30
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(31);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Create Invoice',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController.pageselecter == 31 ? notifire.drwetextcode : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                        ],
                                      ),
                                    ),

                                  ],
                                ),

                                // CRM Screen
                                Stack (
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color:  inboxController.pageselecter == 46  ? notifire.deercolore : inboxController.pageselecter == 46  ? notifire.deercolore : Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Theme(
                                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                        onExpansionChanged: (value) {
                                          inboxController.setTextIsTrue(46);
                                          // inboxController.setTextIsTrue(3);
                                        },
                                        title: Text('CRM', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 46 ? notifire.drwetextcode : notifire.textcolore),),
                                        // leading: Image(image: const AssetImage('assets/crm-icon.png'),height: 20,width: 20, color: inboxController.pageselecter == 46 ? notifire.drwetextcode : notifire.textcolore),
                                       leading: SvgPicture.asset('assets/tool.svg',height: 20,width: 20, color: inboxController.pageselecter == 46 ? notifire.drwetextcode : notifire.textcolore),
                                        children: <Widget>[
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(46);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Dashboard',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 46
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(47);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Contacts',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 47
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(48);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Opportunitie',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 48
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(49);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Task',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 49
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(50);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Contact',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 50
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                inboxController.setTextIsTrue(51);
                                                Get.back();
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: Colors.grey,
                                                          borderRadius: BorderRadius
                                                              .circular(10),
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      Text('Profile Details',
                                                        style: TextStyle(fontSize: 13,
                                                            color: inboxController
                                                                .pageselecter == 51
                                                                ? notifire.drwetextcode
                                                                : notifire.textcolore),),
                                                    ],
                                                  )
                                              ))),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),



                                const SizedBox(height: 10,),
                                Text('Components',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                                const SizedBox(height: 10,),




                                const SizedBox(height: 10,),
                                Text('Pages',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                                const SizedBox(height: 10,),



                                Container(
                                  decoration: BoxDecoration(
                                      color: inboxController.pageselecter == 14? notifire.deercolore:Colors.transparent,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(14);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Pricing', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 14 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/dollar-circle.png'),height: 20,width: 20,color: inboxController.pageselecter == 14 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: inboxController.pageselecter == 15? notifire.deercolore:Colors.transparent,
                                      borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(15);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Avatar', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 15 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/user.png'),height: 20,width: 20,color: inboxController.pageselecter == 15 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 16? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(16);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Carousel', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 16 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/sliders-horizontal.png'),height: 20,width: 20,color: inboxController.pageselecter == 16 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 17? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(17);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Zig Zag', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 17 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/chart-line-dots.png'),height: 20,width: 20,color: inboxController.pageselecter == 17 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 18? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(18);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Map', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 18 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/location-pin.png'),height: 20,width: 20,color: inboxController.pageselecter == 18 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 19? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(19);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Faq', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 19 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/chat-question.png'),height: 20,width: 20,color: inboxController.pageselecter == 19 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 28? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(28);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Chart', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 28 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/chart-trend-up1.png'),height: 20,width: 20,  color: inboxController.pageselecter == 28 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),


                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 38? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(38);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('kanban', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 38 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/file-list-check.png'),height: 20,width: 20,  color: inboxController.pageselecter == 38 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),





                                // Container(
                                //   decoration: BoxDecoration(
                                //     color: inboxController.pageselecter == 30? notifire.deercolore:Colors.transparent,
                                //     borderRadius: BorderRadius.circular(15),
                                //   ),
                                //   child: ListTile(
                                //     onTap: () {
                                //       inboxController.setTextIsTrue(30);
                                //     },
                                //     trailing: const SizedBox(),
                                //     title: Text('Invoice', style: TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: 13,
                                //         color: inboxController.pageselecter == 30 ? notifire.drwetextcode : notifire.textcolore),),
                                //     leading:  Image(image: AssetImage('assets/chart-trend-up1.png'),height: 20,width: 20,  color: inboxController.pageselecter == 30 ? notifire.drwetextcode : notifire.textcolore),
                                //   ),
                                // ),



                                // Container(
                                //   decoration: BoxDecoration(
                                //     color: inboxController.pageselecter == 20? notifire.deercolore:Colors.transparent,
                                //     borderRadius: BorderRadius.circular(15),
                                //   ),
                                //   child: ListTile(
                                //     onTap: () {
                                //       inboxController.setTextIsTrue(20);
                                //     },
                                //     trailing: const SizedBox(),
                                //     title: Text('Chat', style: TextStyle(
                                //         fontWeight: FontWeight.bold,
                                //         fontSize: 16,
                                //         color: inboxController.pageselecter == 20 ? notifire.drwetextcode : notifire.textcolore),),
                                //     leading:  Image(image: AssetImage('assets/bookmarks-settings.png'), color: inboxController.pageselecter == 20 ? notifire.drwetextcode : notifire.textcolore),
                                //   ),
                                // ),





                                const SizedBox(height: 10,),
                                Text('Auth',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                                const SizedBox(height: 10,),

                                Stack(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color:  inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Theme(
                                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),                                      child: ExpansionTile(
                                        trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                        onExpansionChanged: (value) {
                                          // inboxController.setTextIsTrue(22);
                                          // inboxController.setTextIsTrue(3);
                                        },
                                        title: Text('Login', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 22 ? const Color(0xff5648DF) : notifire.textcolore),),
                                        leading: Image(image: const AssetImage('assets/users-group.png'),height: 20,width: 20, color: inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : notifire.textcolore),
                                        children: <Widget>[

                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Auth_Screen(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Auth_Screen(),));

                                                        },
                                                        child: Text('Login',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 22
                                                                  ? const Color(0xff5648DF)
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_up_screen(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_up_screen(),));
                                                        },
                                                        child: Text('Sign up',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 24
                                                                  ? Colors.purple
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                
                                

                                Stack(
                                  children: [

                                    Container(
                                      height: 40,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color:  inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),

                                    Theme(
                                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                        onExpansionChanged: (value) {
                                          // inboxController.setTextIsTrue(22);
                                          // inboxController.setTextIsTrue(3);
                                        },
                                        title: Text('Create Account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 22 ? const Color(0xff5648DF) : notifire.textcolore),),
                                        leading: Image(image: const AssetImage('assets/user-plus-alt.png'),height: 20,width: 20, color: inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : notifire.textcolore),
                                        children: <Widget>[

                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const createaccount(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const createaccount(),));
                                                        },
                                                        child: Text('Create Account',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 23
                                                                  ? Colors.purple
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_Screen(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Login_Screen(),));
                                                        },
                                                        child: Text('Create Account 2',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 25
                                                                  ? Colors.purple
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [

                                    Container(
                                      height: 40,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color:  inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),

                                    Theme(
                                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                        onExpansionChanged: (value) {
                                          // inboxController.setTextIsTrue(22);
                                          // inboxController.setTextIsTrue(3);
                                        },
                                        title: Text('Forgot', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 22 ? const Color(0xff5648DF) : notifire.textcolore),),
                                        leading: Image(image: const AssetImage('assets/fingerprint-viewfinder.png'),height: 20,width: 20, color: inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : notifire.textcolore),
                                        children: <Widget>[
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen(),));
                                                        },
                                                        child: Text('Forgot',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 26
                                                                  ? Colors.purple
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgot_Screen_2(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Forgot_Screen_2(),));
                                                        },
                                                        child: Text('Forgot 2',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 27
                                                                  ? Colors.purple
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color:  inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : Colors.transparent,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),

                                    Theme(
                                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                        onExpansionChanged: (value) {
                                          // inboxController.setTextIsTrue(22);
                                          // inboxController.setTextIsTrue(3);
                                        },
                                        title: Text('OTP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 22 ? const Color(0xff5648DF) : notifire.textcolore),),
                                        leading: Image(image: const AssetImage('assets/lock-viewfinder.png'),height: 20,width: 20, color: inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : notifire.textcolore),
                                        children: <Widget>[
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const OTP_Screen(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const OTP_Screen(),));
                                                        },
                                                        child: Text('Otp',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 28
                                                                  ? Colors.purple
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),
                                          ListTile(onTap: () {}, title: InkWell(
                                              onTap: () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Otp_Screen_2(),));
                                              },
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                      left: 30),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                            color: Colors.grey,
                                                            borderRadius: BorderRadius
                                                                .circular(10)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 20,),
                                                      InkWell(
                                                        onTap: () {
                                                          Get.back();
                                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const Otp_Screen_2(),));
                                                        },
                                                        child: Text('Otp 2',
                                                          style: TextStyle(fontSize: 13,
                                                              color: inboxController
                                                                  .pageselecter == 29
                                                                  ? Colors.purple
                                                                  : notifire.textcolore),),
                                                      ),
                                                    ],
                                                  )
                                              ))),

                                        ],
                                      ),
                                    ),
                                  ],
                                ),


                                Theme(
                                  data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                                  child: ExpansionTile(
                                    trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                    title: Text('Multi level', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: inboxController.pageselecter == 22 ? const Color(0xff5648DF) : notifire.textcolore),),
                                    leading: Image(image: const AssetImage('assets/share.png'),height: 20,width: 20, color: inboxController.pageselecter == 22 ? const Color(0xffF0EFFC) : notifire.textcolore),
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 48.5),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 7),
                                              child: Icon(Icons.circle,size: 5,color: notifire.textcolore),
                                            ),
                                            const SizedBox(width: 10,),
                                            Text('Level 1.1',style: TextStyle(color: notifire.textcolore, fontSize: 13,)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 32),
                                        child: ExpansionTile(
                                          trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                            title: Transform.translate(offset: const Offset(-35, 0),child: Text('Level 1.2',style: TextStyle(color: notifire.textcolore,fontSize: 13),)),
                                          leading: Padding(
                                            padding: const EdgeInsets.only(top: 7),
                                            child: Icon(Icons.circle,size: 5,color: notifire.textcolore),
                                          ),
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 30),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(top: 7),
                                                    child: Icon(Icons.circle,size: 5,color: notifire.textcolore),
                                                  ),
                                                  const SizedBox(width: 10,),
                                                  Text('Level 2.1',style: TextStyle(color: notifire.textcolore, fontSize: 13,)),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 14),
                                              child: ExpansionTile(
                                                leading: Padding(
                                                  padding: const EdgeInsets.only(top: 7),
                                                  child: Icon(Icons.circle,size: 5,color: notifire.textcolore),
                                                ),
                                                  trailing: Icon(Icons.keyboard_arrow_down,color: notifire.textcolore),
                                                  title: Transform.translate(offset: const Offset(-35, 0),child: Text('Level 2.2',style: TextStyle(color: notifire.textcolore,fontSize: 13),)),
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30),
                                                    child: Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.only(top: 7),
                                                          child: Icon(Icons.circle,size: 5,color: notifire.textcolore),
                                                        ),
                                                        const SizedBox(width: 10,),
                                                        Text('Level 3.1',style: TextStyle(color: notifire.textcolore, fontSize: 13,)),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30,top: 13),
                                                    child: InkWell(
                                                      onTap: () {
                                                        inboxController.setTextIsTrue(36);
                                                        Get.back();
                                                      },
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Padding(
                                                            padding: const EdgeInsets.only(top: 7),
                                                            child: Icon(Icons.circle,size: 5,color: notifire.textcolore),
                                                          ),
                                                          const SizedBox(width: 10,),
                                                          Text('Level 3.2',style: TextStyle(color: notifire.textcolore, fontSize: 13,)),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),



                                const SizedBox(height: 10,),
                                Text('Other pages',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                                const SizedBox(height: 10,),



                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 32? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(32);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Error 404', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 32 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/triangle-exclamation123.png'),height: 20,width: 20,  color: inboxController.pageselecter == 32 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 33? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(33);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Error 505', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 33 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/triangle-exclamation123.png'),height: 20,width: 20,  color: inboxController.pageselecter == 33 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 34? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(34);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Started', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 34 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/rocket-launch.png'),height: 20,width: 20,  color: inboxController.pageselecter == 34 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: inboxController.pageselecter == 35? notifire.deercolore:Colors.transparent,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: ListTile(
                                    onTap: () {
                                      inboxController.setTextIsTrue(35);
                                      Get.back();
                                    },
                                    trailing: const SizedBox(),
                                    title: Text('Coming soon', style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: inboxController.pageselecter == 35 ? notifire.drwetextcode : notifire.textcolore),),
                                    leading:  Image(image: const AssetImage('assets/hourglass.png'),height: 20,width: 20,  color: inboxController.pageselecter == 35 ? notifire.drwetextcode : notifire.textcolore),
                                  ),
                                ),









                                const SizedBox(height: 10,),



                                //
                                // ExpansionTile(
                                //   title: const Text('Layouts'),
                                //   leading: const Image(image: AssetImage('assets/3.png')),
                                //   children: <Widget>[
                                //     ListView.builder(itemCount: Layout.length,shrinkWrap: true,itemBuilder: (context, index) {
                                //       return ListTile(title: Text('${Layout[index]}'));
                                //     },)
                                //   ],
                                // ),
                                // ListTile(
                                //   leading: const Image(image: AssetImage('assets/2.png')),
                                //   title: const Text('Changelog',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   trailing: Container(
                                //     height: 20,
                                //     width: 60,
                                //     child: const Center(child: Text('1.1.6',style: TextStyle(color: Colors.blueAccent))),
                                //     decoration: BoxDecoration(
                                //         color: Colors.lightBlueAccent[100],
                                //         borderRadius: const BorderRadius.all(Radius.circular(20))
                                //     ),
                                //   ),
                                // ),
                                // const ListTile(
                                //   leading: Text('APPLICATONS',style: TextStyle(fontSize: 13,color: Colors.black)),
                                // ),
                                //
                                //  ListTile(
                                //   leading: const Image(image: AssetImage('assets/4.png')),
                                //   title: const Text('Chat',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                //   trailing: Container(
                                //     height: 20,
                                //     width: 20,
                                //     child: const Center(child: Text('3',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),
                                //     decoration: BoxDecoration(
                                //         color: Colors.green,
                                //         borderRadius: BorderRadius.circular(20),
                                //     ),
                                //   ),
                                // ),
                                // ExpansionTile(
                                //   title: const Text('e-Commerce',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: const Image(image: AssetImage('assets/5.png')),
                                //   children: <Widget>[
                                //     ListView.builder(itemCount: Commerce.length,shrinkWrap: true,itemBuilder: (context, index) {
                                //       return ListTile(title: Text('${Commerce[index]}'));
                                //     },)
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Project',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/6.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Project',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Project Detail',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Create Project',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/7.png')),
                                //   title: Text('Calendar',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                // ExpansionTile(
                                //   title: const Text('Usesr',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: const Image(image: AssetImage('assets/8.png')),
                                //   children: <Widget>[
                                //     ListView.builder(itemCount: user.length,shrinkWrap: true,itemBuilder: (context, index) {
                                //       return ListTile(title: Text('${user[index]}'));
                                //     },)
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Contact',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/9.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Contact  Grid',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Contact List',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Contact Creat',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/10.png')),
                                //   title: Text('Note',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                //  ListTile(
                                //   leading: Container(
                                //       height: 20,
                                //       width: 30,
                                //       child: const Image(image: AssetImage('assets/11.png')),),
                                //   title: const Text('To-Do',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/12.png')),
                                //   title: Text('Kanban Board',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Imporat & Export',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/13.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('import',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Export',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Export Selected',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/14.png')),
                                //   title: Text('File Manager',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/15.png')),
                                //   title: Text('Task App',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/16.png')),
                                //   title: Text('Bookmarks',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Social App',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/17.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('My Profile',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Profile Settings',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Learning App',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/18.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Course',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Course Detais',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Support',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/19.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Support Ticket',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Ticket Detailse',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('New Ticket',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('JobSearch',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/20.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Gride View',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('List View',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Deatils',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Apply',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Table',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/21.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Basic Table',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Data Table',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Dynamic Table',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Text('CRUD',style: TextStyle(fontSize: 13,color: Colors.black)),
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Firestore Crud',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/22.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('View All',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Add New',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Text('FEATURES',style: TextStyle(fontSize: 13,color: Colors.black)),
                                // ),
                                // ExpansionTile(
                                //   title: const Text('UI Elements',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: const Image(image: AssetImage('assets/23.png')),
                                //   children: <Widget>[
                                //     ListView.builder(itemCount: Elements.length,shrinkWrap: true,itemBuilder: (context, index) {
                                //       return ListTile(title: Text('${Elements[index]}'));
                                //     },)
                                //   ],
                                // ),
                                //  ExpansionTile(
                                //   title: const Text('Chart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading:  const Image(image: AssetImage('assets/24.png')),
                                //   children: <Widget>[
                                //     const ListTile(title: Text('Chart JS',style: TextStyle(color: Colors.black),)),
                                //     ListTile(
                                //         title: const Text('Apexchart',style: TextStyle(color: Colors.black),),
                                //       trailing:  Container(height: 20,width: 40,color: Colors.green,child: const Center(child: Text('New',style: TextStyle(fontSize: 15,color: Colors.white))),),
                                //     ),
                                //     const ListTile(title: Text('Google Charts',style: TextStyle(color: Colors.black),)),
                                //     const ListTile(title: Text('Piety Charts',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Froms',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading:  Image(image: AssetImage('assets/25.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Basics',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Layouts',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Elements',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Componets',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Validations',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Widget',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/26.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Chart',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Mixed',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Card',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Wizards',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/27.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Wizards 1',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Wizards 2',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Wizards 3',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Wizards 4',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Wizards 5',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Icons',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/28.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Unicon icons',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Font Awesome',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Line Awesome',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // ListTile(
                                //   leading: Container(
                                //       height: 20,
                                //       width: 30,
                                //       child: const Image(image: AssetImage('assets/calendar-edit.png'))),
                                //   title: const Text('To-Do',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold)),
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Maps',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/29.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Google Maps',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Leaflet Maps',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Vector Maps',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Text('Gallery',style: TextStyle(fontSize: 13,color: Colors.black)),
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Gallery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/gallery.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Gallery 1',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Gallery 2',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/book-bookmark.png')),
                                //   title: Text('Pricing',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/like.png')),
                                //   title: Text('Banners',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/30.png')),
                                //   title: Text('Testimonial',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/question-circle.png')),
                                //   title: Text('FAQ`s',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/31.png')),
                                //   title: Text('Search Result',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/octagon.png')),
                                //   title: Text('Blank Page',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Knowledge Base',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/layout-web-1.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Knowledge Base',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('All Article',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Single Article',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/headphones.png')),
                                //   title: Text('Support Center',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ExpansionTile(
                                //   title: Text('Blog',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13,),),
                                //   leading: Image(image: AssetImage('assets/package.png')),
                                //   children: <Widget>[
                                //     ListTile(title: Text('Style 1',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Style 2',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Style 3',style: TextStyle(color: Colors.black),)),
                                //     ListTile(title: Text('Detail',style: TextStyle(color: Colors.black),)),
                                //   ],
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/question-circle.png')),
                                //   title: Text('Terms & Conditions',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/presentation.png')),
                                //   title: Text('Maintenance',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/shield-exclamation.png')),
                                //   title: Text('404',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/rotate.png')),
                                //   title: Text('Comming soon',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/arrow-left-square.png')),
                                //   title: Text('Log In',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                                // const ListTile(
                                //   leading: Image(image: AssetImage('assets/arrow-right-circle.png')),
                                //   title: Text('Sign Up',style: TextStyle(fontSize: 13,color: Colors.black,fontWeight: FontWeight.bold,)),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Container(
                          height: 40,
                          width: Get.width,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey.withOpacity(0.4)),
                              color: notifire.darkmaincontain,
                              borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(notifire.getIsDark == false){
                                        setState(() {
                                          notifire.isavalable(true);
                                        });
                                      }else{
                                        setState(() {
                                          notifire.isavalable(false);
                                        });
                                      }
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color:  notifire.getIsDark? Colors.transparent : notifire.getsecoundcontain,
                                          // color: notifire.undrcontaincolore,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child:  Row(
                                        children: [
                                          const Expanded(child: SizedBox(width: 10,)),
                                          Text('Light',style: TextStyle(color: notifire.textcolore)),
                                          const SizedBox(width: 10,),
                                          Image(image: const AssetImage('assets/sun.png'),color: notifire.textcolore),
                                          const Expanded(child: SizedBox(width: 10,)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if(notifire.getIsDark == false){
                                        setState(() {
                                          notifire.isavalable(true);
                                        });
                                      }else{
                                        setState(() {
                                          notifire.isavalable(false);
                                        });
                                      }
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: notifire.getIsDark? notifire.getsecoundcontain : Colors.transparent,
                                          // color: notifire.undrcontaincolore,
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                      child:  Row(
                                        children: [
                                          const Expanded(child: SizedBox(width: 10,)),
                                          Text('Dark',style: TextStyle(color: notifire.textcolore)),
                                          const SizedBox(width: 10,),
                                          Image(image: const AssetImage('assets/moon.png'),color: notifire.textcolore),
                                          const Expanded(child: SizedBox(width: 10,)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                    ],
                  ),
                );
              }
          );
        }
    );
  }
}
