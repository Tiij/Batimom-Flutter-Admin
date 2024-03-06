// ignore_for_file: camel_case_types, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';

enum SampleItem { itemOne, itemTwo, itemThree, itemfour, itemfive, itemsix}

class appber extends StatefulWidget implements PreferredSizeWidget {
  final double size;
  const appber({super.key, required this.size});

  @override
  State<appber> createState() => _appberState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _appberState extends State<appber> {

  double? amt;
  double _count = 1;
  int price=100;
  InboxController inboxController = Get.put(InboxController());

  double? amt1;
  double _count1 = 1;
  int price1=100;

  double? amt2;
  int price2=100;



  SampleItem? selectedMenu;
  bool tap = false;
  ColorNotifire notifire = ColorNotifire();

  List image = [
   'assets/harsh1.png',
   'assets/harsh2.png',
   'assets/harsh3.png',
   'assets/harsh4.png',
   'assets/harsh7.png',
   'assets/harsh8.png',
  ];

  List txt = [
    'Slack',
    'Stack Overflow',
    'Google',
    'Mail chimp',
    'Facebook',
    'Github'
  ];

  bool rtl = false;

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return AppBar(
     backgroundColor: notifire.getdrwer,
      elevation: 0,
      leading: InkWell(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: widget.size<600? Padding(
            padding: const EdgeInsets.all(15),
            child: Image(image: const AssetImage('assets/menu-left.png'),color: notifire.textcolore,fit: BoxFit.fill,),
          ): GetBuilder<InboxController>(
            builder: (inboxController) {
              return InkWell(
                onTap: () {
                  setState(() {
                    inboxController.setvalue();
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image(image: const AssetImage('assets/menu-left.png'),color: notifire.textcolore,fit: BoxFit.fill,),
                ),
              );
            }
          )),
      actions: [
        Row(
        children: [
          tap? SizedBox(
            height: 42,
            width: 200,
            child: TextField(
              style: TextStyle(color: notifire.textcolore),
              decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide(color: notifire.bgcolore),borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: notifire.bgcolore),borderRadius: BorderRadius.circular(10)),
                contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                hintText: 'Search',hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
          ) : const SizedBox(),
           const SizedBox(width: 15,),
        widget.size<600?
        PopupMenuButton(
          color: notifire.bgcolore,
          tooltip: '',
          constraints: BoxConstraints(maxWidth: Get.width,minWidth: Get.width),offset: const Offset(0, 50),child:  Padding(
            padding: const EdgeInsets.only(top: 15,bottom: 15),
            child: Image(image: const AssetImage('assets/search20.png'),height: 25,width: 30,color: notifire.textcolore),
          ),itemBuilder: (context) {
          return [
             PopupMenuItem(
              child: Container(
                width: 510,
                // height: 30,
                decoration: BoxDecoration(
                    color: notifire.bgcolore,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  TextField(
                  style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(left: 10,top: 0),
                    border: OutlineInputBorder(borderSide: BorderSide(color: notifire.bgcolore)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: notifire.bgcolore),borderRadius: BorderRadius.circular(10)),
                    hintText: 'Search',hintStyle: TextStyle(color: notifire.textcolore),
                ),
            ),
              ),
            ),
          ];
        },):
          InkWell(
              onTap: () {
                setState(() {
                  tap =! tap;
                });
              },
              child:  Image(image: AssetImage(tap?"assets/times.png" :'assets/search20.png'),height: 25,width: 30,color: notifire.textcolore,)
          ),

          const SizedBox(width: 15,),
          PopupMenuButton<SampleItem>(
            tooltip: '',
            offset:  const Offset(0, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            initialValue: selectedMenu,
            constraints: const BoxConstraints(
              maxWidth: 400,
              maxHeight: 400,
            ),
            color: notifire.containcolore1,
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            padding: const EdgeInsets.all(0),
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<SampleItem>(
                enabled: false,
                padding: const EdgeInsets.all(0),
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            color: notifire.bgcolore,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              const SizedBox(width: 10,),
                              Text('My Cart',style: TextStyle(color: notifire.textcolore),),
                              const SizedBox(width: 5,),
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(child: Text('5',style: TextStyle(color: Colors.white,fontSize: 10),)),
                              ),
                              const Expanded(child: SizedBox(width: 5,)),
                              const Text('View All',style: TextStyle(color: Colors.deepPurpleAccent)),
                              const SizedBox(width: 10,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: StatefulBuilder(
                  builder: (context, setState) {
                    return Column(
                      children: [
                        const SizedBox(height: 10,),
                        ListTile(
                         contentPadding: const EdgeInsets.all(0),
                         leading: Container(
                           height: 40,
                           width: 40,
                           decoration: BoxDecoration(
                             color: const Color(0xffF4F5F7),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: const Center(child: Image(image: AssetImage('assets/tshirtert.png'),height: 20,width: 20,)),
                         ),
                         title: const Text('Fashion',style: TextStyle(color: Colors.grey,fontSize: 13)),
                         subtitle: Text('Alive Printed Men  Round Neck',style: TextStyle(color: notifire.textcolore,fontSize: 13),overflow: TextOverflow.ellipsis,),
                         trailing: Icon(Icons.close,size: 20,color: notifire.textcolore),
                       ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 5,),
                                  InkWell(
                                   onTap: () {
                                     setState(() {
                                       if(_count!=0)
                                       {_count--;amt=price*_count;}
                                     }
                                     );
                                   },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF4F5F7),
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Center(child: Icon(Icons.remove,color: Colors.black,)),
                                    ),
                                  ),
                                  const Expanded(child: SizedBox(width: 5,)),
                                  Text('$_count',style: TextStyle(color: notifire.textcolore)),
                                  const Expanded(child: SizedBox(width: 5,)),
                                  InkWell(
                                    onTap: () {
                                      setState(() {_count++;amt=price*_count;});
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF4F5F7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Center(child: Icon(Icons.add,color: Colors.black,)),
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                ],
                              ),
                            ),
                            const Expanded(child: SizedBox(width: 5,)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('${amt ?? price}',style:  TextStyle(color: notifire.textcolore,fontWeight: FontWeight.bold),),
                            )
                          ],
                        )
                      ],
                    );
                  }
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: StatefulBuilder(
                    builder: (context, setState) {
                    return Column(
                      children: [
                        const SizedBox(height: 10,),
                        ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xffF4F5F7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(child: Image(image: AssetImage('assets/volleyball.png'),height: 20,width: 20,)),
                          ),
                          title: const Text('Sportwear',style: TextStyle(color: Colors.grey,fontSize: 13)),
                          subtitle: Text('Willage Volleyball Ball',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                          trailing: Icon(Icons.close,size: 20,color: notifire.textcolore),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(width: 5,),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if(_count1!=0)
                                        {_count1--;amt1=price1*_count1;}
                                      }
                                      );
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF4F5F7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Center(child: Icon(Icons.remove,color: Colors.black,)),
                                    ),
                                  ),
                                  const Expanded(child: SizedBox(width: 5,)),
                                  Text('$_count1',style: TextStyle(color: notifire.textcolore)),
                                  const Expanded(child: SizedBox(width: 5,)),
                                  InkWell(
                                    onTap: () {
                                      setState(() {_count1++;amt1=price1*_count1;});
                                    },
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffF4F5F7),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Center(child: Icon(Icons.add,color: Colors.black,)),
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                ],
                              ),
                            ),
                            const Expanded(child: SizedBox(width: 5,)),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('${amt1 ?? price1}',style:  TextStyle(color: notifire.textcolore,fontWeight: FontWeight.bold),),
                            )
                          ],
                        )
                      ],
                    );
                  }
                ),
              ),
              PopupMenuItem<SampleItem>(
                padding: const EdgeInsets.all(0),
                enabled: false,
                value: SampleItem.itemOne,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          Text('Total:',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                          const Spacer(),
                          Text('\$1338.86',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 35,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff4AB0C1)),
                          child:  const Text('Checkout'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            child:  Row(
              children: [
                Image(image: const AssetImage('assets/shopping-bagsa.png'),height: 25,width: 30,color: notifire.textcolore),
              ],
            ),
          ),

          const SizedBox(width: 15,),
          PopupMenuButton<SampleItem>(
            tooltip: '',
            padding: const EdgeInsets.all(0),
            offset: const Offset(0, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            initialValue: selectedMenu,
            constraints: const BoxConstraints(
              maxWidth: 400,
              maxHeight: 400,
            ),
            color: notifire.containcolore1,
            child:  Row(
              children: [
                Image(image: const AssetImage('assets/envelopea.png'),height: 25,width: 30,color: notifire.textcolore),
              ],
            ),
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              PopupMenuItem<SampleItem>(
                padding: const EdgeInsets.all(0),
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          color: notifire.bgcolore,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              const SizedBox(width: 10,),
                              Text('Emails',style: TextStyle(color: notifire.textcolore),),
                              const Expanded(child: SizedBox(width: 5,)),
                              Text('Mark all as read',style: TextStyle(color: notifire.textcolore),),
                              const SizedBox(width: 10,),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-2 1.png'),backgroundColor: Colors.yellow,radius: 20,),
                      title: Text('Invoice have been paid',style: TextStyle(color: notifire.textcolore,fontSize: 13),overflow: TextOverflow.ellipsis,maxLines: 1,),
                      subtitle: Row(
                        children: [
                          Icon(Icons.watch_later,color: notifire.textcolore,size: 15),
                          const SizedBox(width: 5,),
                         Text('14 mins ago',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                        ],
                      ),
                      trailing: Icon(Icons.close,color: notifire.textcolore),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-4 2.png'),backgroundColor: Colors.pink,radius: 20,),
                      title: Text('Allow users to like products',style: TextStyle(color: notifire.textcolore,fontSize: 13),overflow: TextOverflow.ellipsis,maxLines: 1,),
                      subtitle: Row(
                        children: [
                          Icon(Icons.watch_later,color: notifire.textcolore,size: 15),
                          const SizedBox(width: 5,),
                          Text('30 mins ago',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                        ],
                      ),
                      trailing: Icon(Icons.close,color: notifire.textcolore),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-1 1.png'),backgroundColor: Colors.orange,radius: 20,),
                      title: Text('your leave is approved',style: TextStyle(color: notifire.textcolore,fontSize: 13),overflow: TextOverflow.ellipsis,maxLines: 1,),
                      subtitle: Row(
                        children: [
                          Icon(Icons.watch_later,color: notifire.textcolore,size: 15),
                          const SizedBox(width: 5,),
                          Text('2 mins ago',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                        ],
                      ),
                      trailing: Icon(Icons.close,color: notifire.textcolore),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/avatar-5 2.png'),backgroundColor: Colors.deepOrange,radius: 20,),
                      title: Text('Live visits on our site',style: TextStyle(color: notifire.textcolore,fontSize: 13),overflow: TextOverflow.ellipsis,maxLines: 1,),
                      subtitle: Row(
                        children: [
                          Icon(Icons.watch_later,color: notifire.textcolore,size: 15),
                          const SizedBox(width: 5,),
                          Text('5 mins ago',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                        ],
                      ),
                      trailing: Icon(Icons.close,color: notifire.textcolore),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                padding: const EdgeInsets.all(0),
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                            // color: notifire.bgcolore,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: notifire.bgcolore),
                          child:  const Text('View All >',style: TextStyle(color: Colors.deepPurpleAccent)),
                        ),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 10,right: 10),
                    //   child: Container(
                    //     height: 50,
                    //     width: 400,
                    //     decoration: BoxDecoration(
                    //         color: notifire.bgcolore,
                    //         borderRadius: BorderRadius.circular(10)
                    //     ),
                    //     child: const Center(
                    //       child: Row(
                    //         children: [
                    //           Expanded(child: SizedBox(width: 10,)),
                    //           Text('View All',style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 13),),
                    //           SizedBox(width: 3,),
                    //           Icon(Icons.chevron_right,color: Colors.deepPurpleAccent),
                    //           Expanded(child: SizedBox(width: 10,)),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(width: 15,),
          PopupMenuButton<SampleItem>(
            tooltip: '',
            offset: const Offset(0, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            initialValue: selectedMenu,
            constraints: const BoxConstraints(
              maxWidth: 350,
              maxHeight: 430,
            ),
            color: notifire.containcolore1,
            child:  Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Image(image: const AssetImage('assets/bellqw.png'),height: 25,width: 30,color: notifire.textcolore),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(65)
                    ),
                    child: const Center(child: Text('1',style: TextStyle(fontSize: 8),)),
                  ),
                ),
              ],
            ),
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                   Row(
                     children: [
                       Text('Notification',style: TextStyle(color: notifire.textcolore),),
                       const Spacer(),
                       Container(
                         height: 30,
                         width: 80,
                         decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.circular(25)
                         ),
                         child: ElevatedButton(
                           onPressed: () {},
                           style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff5D87FF),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),),
                           child:  const Text('5 new',style: TextStyle(color: Colors.white)),
                         ),
                       ),
                     ],
                   )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-3 1.png')),
                      title: Text('Roman joined the Team!',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                      subtitle: Text("Congratulate him",style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-1 1.png')),
                      title: Text('New message recevied',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                      subtitle: Text("Salma sent you new message",style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png')),
                      title: Text('New payment recevied',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                      subtitle: Text("Check your earning",style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(0),
                      leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-2 1q.png')),
                      title: Text('Jolly completed tasks',style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                      subtitle: Text("Assign her new tasks",style: TextStyle(color: notifire.textcolore,fontSize: 13)),
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                padding: const EdgeInsets.all(0),
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    Padding(
                      padding:  const EdgeInsets.only(left: 10,right: 10),
                      child: SizedBox(
                        height: 40,
                        width: 400,
                        child: OutlinedButton(onPressed: () {},
                          style: ButtonStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
                            side: MaterialStateProperty.all(const BorderSide(
                              color: Color(0xff5D87FF),
                            )),
                          ), child: const Text('See all Notification',style: TextStyle(color: Color(0xff5D87FF))),)
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(width: 15,),
          PopupMenuButton<SampleItem>(
            tooltip: '',
            offset: const Offset(0, 50),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            initialValue: selectedMenu,
            constraints: const BoxConstraints(
              maxWidth: 800,
              maxHeight: 480,
            ),
            color: notifire.containcolore1,
            child:  Row(
              children: [
                Image(image: const AssetImage('assets/settingslo.png'),height: 25,width: 30,color: notifire.textcolore),
              ],
            ),
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('Browse by Apps',style: TextStyle(color: notifire.textcolore),),
                        const Expanded(child: SizedBox(width: 5,)),
                        Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffE4F3F6),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                            child:   const Text('View All Apps',style: TextStyle(color: Colors.blue)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              PopupMenuItem<SampleItem>(
                enabled: false,
                value: SampleItem.itemOne,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 170,
                        width: 400,
                        child: GridView.builder(scrollDirection: Axis.vertical,shrinkWrap: true,itemCount: 6,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisExtent: 80), itemBuilder: (context, index) {
                          return  Column(
                            children: [
                              Image(image: AssetImage(image[index]),height: 30,width: 30,),
                              Text(txt[index],style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                            ],
                          );
                        },),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(width: 15,),
          PopupMenuButton<SampleItem>(
            tooltip: '',
            offset: const Offset(0, 40),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            initialValue: selectedMenu,
            color: notifire.containcolore1,
            child: const Row(
              children: [
                CircleAvatar(backgroundImage: AssetImage('assets/flag.png'),radius: 11),
                SizedBox(width: 10,),
              ],
            ),
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
               PopupMenuItem<SampleItem>(
                 padding: const EdgeInsets.all(8),
                enabled: false,
                value: SampleItem.itemOne,
                child: Row(
                  children: [
                    const CircleAvatar(backgroundImage: AssetImage('assets/flag.png'),radius: 10),
                    const SizedBox(width: 10,),
                    Text('English',style: TextStyle(fontSize: 15,color: notifire.textcolore),)
                  ],
                ),
              ),
               PopupMenuItem<SampleItem>(
                 padding: const EdgeInsets.all(8),
                enabled: false,
                value: SampleItem.itemTwo,
                child:  Row(
                  children: [
                    const CircleAvatar(backgroundImage: AssetImage('assets/ger.png'),radius: 10,),
                    const SizedBox(width: 10,),
                    Text('German',style: TextStyle(fontSize: 15,color: notifire.textcolore),)
                  ],
                ),
              ),
               PopupMenuItem<SampleItem>(
                 padding: const EdgeInsets.all(8),
                enabled: false,
                value: SampleItem.itemThree,
                child: Row(
                  children: [
                    const CircleAvatar(backgroundImage: AssetImage('assets/spa.png'),radius: 10,),
                    const SizedBox(width: 10,),
                    Text('Spanice',style: TextStyle(fontSize: 15,color: notifire.textcolore),)
                  ],
                ),
              ),
               PopupMenuItem<SampleItem>(
                 padding: const EdgeInsets.all(8),
                enabled: false,
                value: SampleItem.itemfour,
                child: Row(
                  children: [
                    const CircleAvatar(backgroundImage: AssetImage('assets/tur.png'),radius: 10,),
                    const SizedBox(width: 10,),
                    Text('Turkish',style: TextStyle(fontSize: 15,color: notifire.textcolore),)
                  ],
                ),
              ),
               PopupMenuItem<SampleItem>(
                 padding: const EdgeInsets.all(8),
                enabled: false,
                value: SampleItem.itemfive,
                child: Row(
                  children: [
                    const CircleAvatar(backgroundImage: AssetImage('assets/iraq.png'),radius: 10,),
                    const SizedBox(width: 10,),
                    Text('Arabic',style: TextStyle(fontSize: 15,color: notifire.textcolore),)
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(width: 15,),
          PopupMenuButton<SampleItem>(
            tooltip: '',
            offset: const Offset(0, 40),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            initialValue: selectedMenu,
            color: notifire.containcolore1,
            child:  widget.size<700? const Padding(
              padding: EdgeInsets.only(right: 10),
              child: CircleAvatar(backgroundImage: AssetImage('assets/harshimage.png'),radius: 12),
            ): Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage('assets/harshimage.png'),radius: 12),
                const SizedBox(width: 10,),
                Text('Elon Musk',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: notifire.textcolore),),
                Icon(Icons.arrow_drop_down,size: 15,color: notifire.textcolore,),
                const SizedBox(width: 10,),
              ],
            ),
            onSelected: (SampleItem item) {
              setState(() {
                selectedMenu = item;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
               PopupMenuItem<SampleItem>(
                  enabled: false,
                value: SampleItem.itemTwo,
                child: ListTile(
                  leading: const CircleAvatar(backgroundImage: AssetImage('assets/harshimage.png'),radius: 25),
                  title: Text('Elon Musk',style: TextStyle(fontSize: 15,color: notifire.textcolore,fontWeight: FontWeight.bold)),
                  subtitle: const Text('UI Designer',style: TextStyle(fontSize: 10,color: Colors.grey)),
                )
              ),
                PopupMenuItem<SampleItem>(
                  padding: const EdgeInsets.all(8),
                 enabled: false,
                value: SampleItem.itemOne,
                child: Row(
                  children: [
                    Image(image: const AssetImage('assets/32.png'),color: notifire.textcolore),
                    const SizedBox(width: 15,),
                    Text('Profile',style: TextStyle(color: notifire.textcolore),)
                  ],
                ),
              ),
                PopupMenuItem<SampleItem>(
                  padding: const EdgeInsets.all(8),
                 enabled: false,
                value: SampleItem.itemTwo,
                child:  Row(
                  children: [
                    Image(image: const AssetImage('assets/33.png'),color: notifire.textcolore),
                    const SizedBox(width: 15,),
                    Text('Setting',style: TextStyle(color: notifire.textcolore))
                  ],
                ),
              ),
                PopupMenuItem<SampleItem>(
                  padding: const EdgeInsets.all(8),
                 enabled: false,
                value: SampleItem.itemThree,
                child: Row(
                  children: [
                    Image(image: const AssetImage('assets/34.png'),color: notifire.textcolore),
                    const SizedBox(width: 15,),
                    Text('Billing',style: TextStyle(color: notifire.textcolore))
                  ],
                ),
              ),
                PopupMenuItem<SampleItem>(
                  padding: const EdgeInsets.all(8),
                 enabled: false,
                value: SampleItem.itemfour,
                child:Row(
                  children: [
                    Image(image: const AssetImage('assets/8.png'),color: notifire.textcolore),
                    const SizedBox(width: 15,),
                    Text('Activity',style: TextStyle(color: notifire.textcolore))
                  ],
                ),
              ),
               PopupMenuItem<SampleItem>(
                 padding: const EdgeInsets.all(8),
                enabled: false,
                value: SampleItem.itemfive,
                child:Row(
                  children: [
                    Image(image: const AssetImage('assets/35.png'),color: notifire.textcolore),
                    const SizedBox(width: 15,),
                    Text('Help',style: TextStyle(color: notifire.textcolore))
                  ],
                ),
              ),
               PopupMenuItem<SampleItem>(
                 padding: const EdgeInsets.all(8),
                enabled: false,
                value: SampleItem.itemfive,
                child:StatefulBuilder(
                  builder: (context, setState){
                    return Row(
                      children: [
                        Image(image: const AssetImage('assets/tool.png'),color: notifire.textcolore),
                        const SizedBox(width: 15,),
                        Text('RTL',style: TextStyle(color: notifire.textcolore)),
                        const Spacer(),
                        Switch(
                          value: rtl,
                          onChanged: (bool value) {
                            setState(() {
                            rtl = value;
                            });
                            Future.delayed(const Duration(milliseconds: 300),
                                  () {
                                if (value == true) {
                                  Get.updateLocale(
                                      const Locale('ur', 'PK'));
                                  Get.back();
                                } else {
                                  Get.updateLocale(
                                      const Locale('en', 'US'));
                                  Get.back();
                                }
                              },
                            );
                          },
                        ),
                        const SizedBox(width: 7,),
                      ],
                    );
                  }
                ),
              ),
            ],
          ),
        ],
          )
      ],
    );
  }
}


