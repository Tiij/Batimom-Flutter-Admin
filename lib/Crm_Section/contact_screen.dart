// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import '../extra_screen/all_controller.dart';

class Contact_Details_Screen extends StatefulWidget {
  const Contact_Details_Screen({super.key});

  @override
  State<Contact_Details_Screen> createState() => _Contact_Details_ScreenState();
}

class _Contact_Details_ScreenState extends State<Contact_Details_Screen> {

  ColorNotifire notifire = ColorNotifire();
  InvoiceController invoiceController = Get.put(InvoiceController());
  List listtiletitle = [
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
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
              return   SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    mainrow(),
                    const SizedBox(height: 15,),
                    secoundrow(),
                    const SizedBox(height: 15,),
                    contattable(),
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
                        Expanded(child: secoundrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: contattable()),
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
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: secoundrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: contattable()),
                      ],
                    ),

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
                child: Text('Contacts',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
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
                      Text('Contacts',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget contattable(){
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          padding:  const EdgeInsets.only(left: 10,right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 720,
                width: constraints.maxWidth,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: constraints.maxWidth<1400 ? 1500 : constraints.maxWidth,
                      child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Table(
                                      // border: TableBorder.all(color: Colors.red),
                                      columnWidths: const {
                                        0: FixedColumnWidth(300),
                                        1: FixedColumnWidth(300),
                                        2: FixedColumnWidth(300),
                                        3: FixedColumnWidth(150),
                                        4: FixedColumnWidth(300),
                                        5: FixedColumnWidth(300),

                                      },
                                      children: [
                                        const TableRow(children: [
                                          // Divider(
                                          //   height: 15,
                                          // ),
                                          Divider(
                                            height: 15,
                                          ),
                                          Divider(
                                            height: 15,
                                          ),
                                          Divider(
                                            height: 15,
                                          ),
                                          Divider(
                                            height: 15,
                                          ),
                                          Divider(
                                            height: 15,
                                          ),
                                          Divider(
                                            height: 15,
                                          ),
                                        ]),
                                        TableRow(children: [
                                          dataColumn1(
                                              title: "Customer",
                                              iscenter: false),
                                          dataColumn1(
                                              title: "Phone",
                                              iscenter: false),
                                          dataColumn1(
                                              title: "Email",
                                              iscenter: false),
                                          dataColumn1(
                                              title: "Data",
                                              iscenter: false),
                                          Center(
                                            child: dataColumn1(
                                                title: "Status",
                                                iscenter: true),
                                          ),
                                          Center(
                                            child: dataColumn1(
                                                title: "Action",
                                                iscenter: true),
                                          ),
                                        ]),
                                        TableRow(children: [
                                          // Divider(
                                          //   color: Colors.grey.withOpacity(0.4),height: 30,
                                          // ),
                                          Divider(
                                            color: Colors.grey.withOpacity(0.4),height: 30,
                                          ),
                                          Divider(
                                            color: Colors.grey.withOpacity(0.4),height: 30,
                                          ),
                                          Divider(
                                            color: Colors.grey.withOpacity(0.4),height: 30,
                                          ),
                                          Divider(
                                            color: Colors.grey.withOpacity(0.4),height: 30,
                                          ),
                                          Divider(
                                            color: Colors.grey.withOpacity(0.4),height: 30,
                                          ),
                                          Divider(
                                            color: Colors.grey.withOpacity(0.4),height: 30,
                                          ),
                                        ]),
                                        for (var a = invoiceController.loadmore; a < invoiceController.loadmore + invoiceController.selectindex; a++)
                                          TableRow(
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 8,horizontal: 8),
                                                  child: ListTile(
                                                    title: Text(
                                                        listtiletitle[a],
                                                        style: TextStyle(color: notifire.textcolore)),
                                                    leading: CircleAvatar(
                                                      radius: 24,
                                                      child: Image(image: AssetImage('${invoiceController.imageintable[a]}')),
                                                    ),
                                                    dense: true,
                                                    contentPadding: const EdgeInsets.all(0),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 20),
                                                  child: Text(invoiceController.date[a],
                                                      style: TextStyle(color: notifire.textcolore)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 20),
                                                  child: Text(invoiceController.clint[a],
                                                      style: TextStyle(color: notifire.textcolore)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 20),
                                                  child: Text(invoiceController.price[a],
                                                      style: TextStyle(color: notifire.textcolore)),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      vertical: 10),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      const SizedBox(width: 120,),
                                                      Container(
                                                        height: 7,
                                                        width: 7,
                                                        decoration: BoxDecoration(
                                                          color: invoiceController.containecolore[a],
                                                          borderRadius: BorderRadius.circular(65)
                                                        ),
                                                      ),
                                                      const SizedBox(width: 5,),
                                                      Text(
                                                          invoiceController.status[a],
                                                          style: TextStyle(color: invoiceController.iteamcolor[a])),
                                                    ],
                                                  ),
                                                ),
                                                PopupMenuButton(
                                                  tooltip: "",
                                                  color: notifire.bgcolore,
                                                  offset: const Offset(30,52),
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(
                                                        right: 20, top: 20, bottom: 20),
                                                    child: Center(
                                                      child: Center(
                                                          child: Icon(Icons.more_vert,color: notifire.textcolore,)
                                                      ),
                                                    ),
                                                  ),
                                                  itemBuilder: (context) {
                                                    return [
                                                      PopupMenuItem(
                                                          padding: const EdgeInsets.all(8),
                                                          child: Column(
                                                            children: [
                                                              _buildRow(title: "Copy"),
                                                              const SizedBox(height: 8,),
                                                              _buildRow(title: "Print"),
                                                              const SizedBox(height: 8,),
                                                              _buildRow(title: "Download PDF"),
                                                              const SizedBox(height: 8,),
                                                              _buildRow(title: "Share Link"),
                                                              const SizedBox(height: 8,),
                                                              _buildRow(title: "Archive"),

                                                            ],
                                                          ))
                                                    ];
                                                  },
                                                ),
                                              ]),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
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
                                  //                             invoiceController.setindexforitem(5);
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
                                          child: Icon(Icons.chevron_left,color: notifire.textcolore,)
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
                                                    listtiletitle.shuffle();
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
      },
    );
  }

  Widget dataColumn1({required String title, required bool iscenter}) {
    return Row(
      mainAxisAlignment:
      iscenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        const SizedBox(width: 8,),
        Text(title,
            style: TextStyle(color: notifire.textcolore)),
        const SizedBox(
          width: 10,
        ),
        Icon(Icons.keyboard_arrow_down,color: notifire.textcolore,),
      ],
    );
  }

  Widget _buildRow({required String title}){
    return Row(
      children: [

        Text(title,style: TextStyle(color: notifire.textcolore)),

      ],);
  }

}