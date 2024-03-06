// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import '../extra_screen/all_controller.dart';

class Opportunitie_Screen extends StatefulWidget {
  const Opportunitie_Screen({super.key});

  @override
  State<Opportunitie_Screen> createState() => _Opportunitie_ScreenState();
}

class _Opportunitie_ScreenState extends State<Opportunitie_Screen> {

  List isHover = [];
  List checkBox = [];
  int boxBorder = 0;
  ColorNotifire notifire = ColorNotifire();
  List Image1 = [
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
    'assets/womanqp.png',
  ];
  InvoiceController invoiceController = Get.put(InvoiceController());
  List titletext = [
    'Amazon Inc.',
    'Google LLC',
    'Airbnb Inc',
    'Apple Inc',
    'Atlassicn JIRA',
    'Zapier',
    'Linear',
    'Slack',
    'Cisco System',
    'Git Hub',
    'Notion',
    'Dropbox',
    'Snapchat',
    'Invision',
    'Spotify',
  ];
  List subtitletext = [
    'Ecommerce.',
    'Search Engine',
    'Search Engine',
    'Ecommerce',
    'Search Engine',
    'Search Engine',
    'Ecommerce',
    'Ecommerce',
    'Search Engine',
    'Ecommerce',
    'Search Engine',
    'Ecommerce',
    'Search Engine',
    'Ecommerce',
    'Search Engine',
  ];
  List phonelist = [
    "15 2136 8956",
    "45 2563 7896",
    "45 2563 3654",
    "79 1489 5274",
    "02 2222 6541",
    "15 2136 8956",
    "45 2563 7896",
    "45 2563 3654",
    "79 1489 5274",
    "02 2222 6541",
    "15 2136 8956",
    "45 2563 7896",
    "45 2563 3654",
    "79 1489 5274",
    "02 2222 6541",
  ];
  List maillist = [
    "harsh@gmail.com",
    "seema@gmail.com",
    "hamil@gmail.com",
    "rrian@gmail.com",
    "join@gmail.com",
    "cido@gmail.com",
    "animal@gmail.com",
    "gift@gmail.com",
    "hare@gmail.com",
    "omgl@gmail.com",
    "omitv@gmail.com",
    "make@gmail.com",
    "irral@gmail.com",
    "kjhg@gmail.com",
    "axds@gmail.com",
  ];
  List lasttextlist = [
    "Won",
    "Progress",
    "Lost",
    "Cold",
    "Progress",
    "Lost",
    "Won",
    "Won",
    "Progress",
    "Lost",
    "Cold",
    "Progress",
    "Lost",
    "Won",
    "Progress",
  ];
  List textcolor = [
    const Color(0xff936DFF),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xff936DFF),
    const Color(0xffFACC15),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff936DFF),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xff936DFF),
    const Color(0xffFACC15),
  ];

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
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    mainrow(),
                    const SizedBox(height: 15,),
                    secoundrow(),
                    const SizedBox(height: 15,),
                    firstcontainer(size: constraints.maxWidth),
                    const SizedBox(height: 100,),
                  ],
                ),
              );
            }
            else if(constraints.maxWidth<1000){
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
                        Expanded(child: secoundrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: firstcontainer(size: constraints.maxWidth)),
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
                        Expanded(child: secoundrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: firstcontainer(size: constraints.maxWidth)),
                      ],
                    ),
                    const SizedBox(height: 15,),
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
                child: Text('Opportunitie',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 145,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      const SizedBox(width: 10,),
                      Text('Opportunitie',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget secoundrow(){
    return Row(
      children:  [
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: notifire.containcolore1,
                borderRadius: BorderRadius.circular(15)
            ),
            child: TextField(
              style: TextStyle(color: notifire.textcolore),
              decoration: InputDecoration(
                  border:  OutlineInputBorder(
                      borderSide:  BorderSide(color: notifire.textcolore),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  prefixIcon: Icon(Icons.search,color: notifire.textcolore),
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.grey.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: notifire.textcolore)
              ),
            ),
          ),
        ),
        const Spacer(),
        const Spacer(),
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add,color: notifire.textcolore,),
                const SizedBox(width: 4,),
                Text('Add Customer',style: TextStyle(color: notifire.textcolore),)
              ],
            ),
          ),
        ),
        const SizedBox(width: 10,),
      ],
    );
  }

  Widget firstcontainer({required size}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 15,
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: size < 210 ? 1 : size < 500 ? 1 : size < 750 ? 2 : size < 1200 ? 3 : 5,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                mainAxisExtent: 180,
            ),
            itemBuilder: (context, index) {
              return InkWell(
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
                  decoration: BoxDecoration(
                    color: notifire.containcolore1,
                    border: isHover.contains(index)? Border.all(
                        color:  notifire.textcolore, width: 1)  :  checkBox.contains(index)  ? Border.all(
                        color: notifire.textcolore, width: 1) : null,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10,),
                        ListTile(
                          leading: CircleAvatar(backgroundImage: AssetImage("${Image1[index]}"),),
                          title: Text('${titletext[index]}',style: TextStyle(color: notifire.textcolore)),
                          subtitle: Text('${subtitletext[index]}',style: const TextStyle(color: Colors.grey,fontSize: 12,)),
                          trailing: Icon(Icons.more_vert,color: notifire.textcolore),

                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Icon(Icons.phone,color: Colors.grey,size: 15),
                            const SizedBox(width: 6,),
                            Text('${phonelist[index]}',style: const TextStyle(color: Colors.grey))
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            const Icon(Icons.mail,color: Colors.grey,size: 15),
                            const SizedBox(width: 6,),
                            Text('${maillist[index]}',style: const TextStyle(color: Colors.grey))
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('${lasttextlist[index]}',style: TextStyle(color: textcolor[index])),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10,),
          GetBuilder<InvoiceController> (
              builder: (invoiceController) {
                return Row(
                  children: [
                    Expanded(
                        child: Padding(padding: const EdgeInsets.symmetric(horizontal:  15 ,vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Flexible(
                              //   child: Row(
                              //     children: [
                              //       Text(
                              //         "Show result:",
                              //         style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,maxLines: 1,
                              //       ),
                              //       const SizedBox(
                              //         width: 10,
                              //       ),
                              //       Flexible(
                              //         child: PopupMenuButton(
                              //           tooltip: "",
                              //           offset: const Offset(0, -50),
                              //           constraints: const BoxConstraints(
                              //               maxWidth: 60, minWidth: 60,maxHeight: 120,minHeight: 120),
                              //           onOpened: () {
                              //             invoiceController.setmenuu(true);
                              //           },
                              //           onCanceled: () {
                              //             invoiceController.setmenuu(false);
                              //           },
                              //           shape: RoundedRectangleBorder(
                              //               borderRadius: BorderRadius.circular(8)),
                              //           color: notifire.bgcolore,
                              //           child: Container(
                              //             height: 37,
                              //             width: 68,
                              //             decoration: BoxDecoration(
                              //                 color: Colors.transparent,
                              //                 borderRadius:
                              //                 BorderRadius.circular(12),
                              //                 border: Border.all(
                              //                     color:
                              //                     Colors.grey.withOpacity(0.4))),
                              //             child: Row(
                              //                 mainAxisAlignment:
                              //                 MainAxisAlignment.center,
                              //                 children: [
                              //                   Text(
                              //                     invoiceController.selectindex
                              //                         .toString(),
                              //                     style: TextStyle(color: notifire.textcolore),
                              //                   ),
                              //                   const SizedBox(
                              //                     width: 10,
                              //                   ),
                              //                   // SvgPicture.asset(invoiceController
                              //                   //         .ismenuopen
                              //                   //     ? "assets/images/chevron-up.svg"
                              //                   //     : "assets/images/chevron-down.svg"),
                              //                 ]),
                              //           ),
                              //           itemBuilder: (context) {
                              //             return [
                              //               PopupMenuItem(
                              //                   enabled: false,
                              //                   child: Column(
                              //                     mainAxisAlignment:
                              //                     MainAxisAlignment.spaceEvenly,
                              //                     children: [
                              //                       InkWell(
                              //                           onTap: () {
                              //                             invoiceController
                              //                                 .setindexforitem(5);
                              //                             Get.back();
                              //                           },
                              //                           child: Text(
                              //                             "5",
                              //                             style: TextStyle(color: notifire.textcolore),
                              //                           )),
                              //                       const SizedBox(
                              //                         height: 10,
                              //                       ),
                              //                       InkWell(
                              //                           onTap: () {
                              //                             invoiceController
                              //                                 .setindexforitem(6);
                              //                             Get.back();
                              //                           },
                              //                           child: Text(
                              //                             "6",
                              //                             style: TextStyle(color: notifire.textcolore),
                              //                           )),
                              //                       const SizedBox(
                              //                         height: 10,
                              //                       ),
                              //                       InkWell(
                              //                           onTap: () {
                              //                             invoiceController.setindexforitem(7);
                              //                             Get.back();
                              //                           },
                              //                           child: Text(
                              //                             "7",
                              //                             style: TextStyle(color: notifire.textcolore),
                              //                           )),
                              //                       const SizedBox(
                              //                         height: 10,
                              //                       ),
                              //                       InkWell(
                              //                           onTap: () {
                              //                             invoiceController.setindexforitem(10);
                              //                             Get.back();
                              //                           },
                              //                           child: Text(
                              //                             "10",
                              //                             style: TextStyle(color: notifire.textcolore),
                              //                           )),
                              //                     ],
                              //                   )),
                              //             ];
                              //           },
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              const Spacer(),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        invoiceController.scrollController.animateTo(-40, duration: const Duration(milliseconds: 1000), curve: Curves.bounceOut);
                                      },
                                      child: Icon(Icons.chevron_left,color: notifire.textcolore,),
                                  ),
                                  SizedBox(
                                    height: 37,
                                    width: 140,
                                    child: Center(
                                      child: ListView.builder(
                                        controller: invoiceController.scrollController,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return InkWell(
                                            onTap: () {
                                              setState(() {
                                                titletext.shuffle();
                                              });
                                              invoiceController.setloadmore(invoiceController.selectpage);
                                              invoiceController.setpage(index);
                                            },
                                            child: Container(
                                                width: 37,
                                                margin: const EdgeInsets.symmetric(horizontal: 5),
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8),
                                                    border: Border.all(color: invoiceController.selectpage == index? Colors.blue : notifire.textcolore),
                                                    color: Colors.transparent
                                                ),
                                                child: Center(child: Text("$index",style: TextStyle(color: invoiceController.selectpage == index? Colors.blue : notifire.textcolore),))),
                                          );
                                        },),
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        invoiceController.scrollController.animateTo(10 * 100, duration: const Duration(milliseconds: 1000), curve: Curves.easeIn);
                                      },
                                      child: Icon(Icons.chevron_right,color: notifire.textcolore,)
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  ],
                );
              }),
        ],
      ),
    );
  }
}