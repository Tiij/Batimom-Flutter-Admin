// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import '../Provider/colore_provider.dart';
import '../extra_screen/all_controller.dart';

class Invoices extends StatefulWidget {
  const Invoices({super.key});

  @override
  State<Invoices> createState() => _InvoicesState();
}

class _InvoicesState extends State<Invoices> {
  ColorNotifire notifire = ColorNotifire();
  InvoiceController invoiceController = Get.put(InvoiceController());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<InvoiceController>(
      builder: (invoiceController) {
        return LayoutBuilder(builder: (context, constraints) {
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: notifire.bgcolore,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
              children:  [
              Expanded(
              child: SizedBox(
                // color: Colors.red,
                height: 50,
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text('Data Table',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
                  ),
                  trailing:  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 0),
                    child: SizedBox(
                      height: 60,
                      width: 140,
                      child: Row(
                        children: [
                          const SizedBox(width: 0,),
                          Image(image: const AssetImage('assets/shopping-cart-star123.png'),color: notifire.textcolore),
                          // SizedBox(width: 10,),
                          // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                          const SizedBox(width: 10,),
                          Text('Data Table',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            ],
          ),
                  const SizedBox(height: 15,),



                  Padding(
                    padding:  const EdgeInsets.only(left: 10,right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                           height: 800,
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
                                                columnWidths: const {
                                                  0: FixedColumnWidth(50),
                                                  5: FixedColumnWidth(230),
                                                },
                                                children: [
                                                  const TableRow(children: [
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
                                                    Divider(
                                                     height: 15,
                                                    ),
                                                  ]),
                                                  TableRow(children: [
                                                    SizedBox(
                                                      height: 20,
                                                      width: 20,
                                                      child: Checkbox(
                                                        side: BorderSide(
                                                            color: notifire.textcolore),
                                                        shape: CircleBorder(side: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                                        value: invoiceController.checkboxis,
                                                        onChanged: (value) {
                                                          invoiceController.setchekboxis(invoiceController.checkboxis = !invoiceController.checkboxis);
                                                          if (invoiceController.checkboxis == true) {
                                                            for (var a = 0; a <= invoiceController.listtiletitle.length; a++) {
                                                              invoiceController.checkBoxs.add(a);
                                                            }
                                                          } else {
                                                            invoiceController.checkBoxs.clear();
                                                          }
                                                        },
                                                      ),
                                                    ),
                                                    dataColumn1(
                                                        title: "Name",
                                                        iconpath:
                                                        "assets/doublearrow.png",
                                                        iscenter: false),
                                                    dataColumn1(
                                                        title: "Date",
                                                        iconpath:
                                                        "assets/doublearrow.png",
                                                        iscenter: false),
                                                    dataColumn1(
                                                        title: "Client",
                                                        iconpath:
                                                        "assets/doublearrow.png",
                                                        iscenter: false),
                                                    dataColumn1(
                                                        title: "Price",
                                                        iconpath:
                                                        "assets/doublearrow.png",
                                                        iscenter: false),
                                                    Center(
                                                      child: dataColumn1(
                                                          title: "Status",
                                                          iconpath:
                                                          "assets/doublearrow.png",
                                                          iscenter: true),
                                                    ),
                                                    Center(
                                                      child: dataColumn1(
                                                          title: "Actions",
                                                          iconpath:
                                                          "assets/doublearrow.png",
                                                          iscenter: true),
                                                    ),
                                                  ]),
                                                  TableRow(children: [
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
                                                    Divider(
                                                      color: Colors.grey.withOpacity(0.4),height: 30,
                                                    ),
                                                  ]),
                                                  for (var a = invoiceController.loadmore; a < invoiceController.loadmore + invoiceController.selectindex; a++)
                                                    TableRow(
                                                        children: [
                                                          Padding(
                                                            padding:  const EdgeInsets.symmetric(vertical:  25),
                                                            child: Center(
                                                              child: SizedBox(
                                                                  height: 22,
                                                                  width: 22,
                                                                  child: Checkbox(
                                                                    side: BorderSide(
                                                                        color: notifire.textcolore),
                                                                    shape: CircleBorder(
                                                                        side: BorderSide(
                                                                            color: Colors.grey.withOpacity(0.4))),
                                                                    value: invoiceController.checkBoxs.contains(a) ? true : false,
                                                                    onChanged: (value) {
                                                                      invoiceController.selcetcheckbox(a);
                                                                    },
                                                                  )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.symmetric(
                                                                vertical: 8),
                                                            child: ListTile(
                                                              title: Text(
                                                                  invoiceController.listtiletitle[a],
                                                                  style: TextStyle(color: notifire.textcolore)),
                                                              leading: const CircleAvatar(
                                                                  radius: 24,
                                                                  backgroundColor:
                                                                  Colors.red,
                                                                  child: Image(image: AssetImage('assets/30.png'),color: Colors.white),
                                                              ),
                                                              dense: true,
                                                              contentPadding: const EdgeInsets.all(0),
                                                              subtitle: Padding(
                                                                padding:
                                                                const EdgeInsets.only(top: 10.0),
                                                                child: Text("INV110XXX",
                                                                    style: TextStyle(color: notifire.textcolore)),
                                                              ),
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
                                                            child: Center(
                                                              child: Container(
                                                                  height: 40,
                                                                  width: 96,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius:
                                                                    BorderRadius.circular(8),
                                                                    color: invoiceController
                                                                        .iteamcolor[a]
                                                                        .withOpacity(0.10),
                                                                  ),
                                                                  child: Center(
                                                                      child: Text(
                                                                          invoiceController.status[a],
                                                                          style: TextStyle(color: invoiceController.iteamcolor[a])))),
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
                                                                child: Container(
                                                                  height: 30,
                                                                  width: 30,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                      BorderRadius.circular(8),
                                                                      color: Colors.transparent,
                                                                      border: Border.all(
                                                                          color: Colors.grey.withOpacity(0.4))),
                                                                  child: Center(
                                                                      child: Icon(Icons.more_horiz,color: notifire.textcolore,)
                                                                  ),
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
                              Flexible(
                                child: Row(
                                  children: [
                                    Text(
                                      "Show result:",
                                      style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,maxLines: 1,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Flexible(
                                      child: PopupMenuButton(
                                        tooltip: "",
                                        offset: const Offset(0, -50),
                                        constraints: const BoxConstraints(
                                            maxWidth: 60, minWidth: 60,maxHeight: 120,minHeight: 120),
                                        onOpened: () {
                                          invoiceController.setmenuu(true);
                                        },
                                        onCanceled: () {
                                          invoiceController.setmenuu(false);
                                        },
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        color: notifire.bgcolore,
                                        child: Container(
                                          height: 37,
                                          width: 68,
                                          decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                  color:
                                                      Colors.grey.withOpacity(0.4))),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  invoiceController.selectindex
                                                      .toString(),
                                                  style: TextStyle(color: notifire.textcolore),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                // SvgPicture.asset(invoiceController
                                                //         .ismenuopen
                                                //     ? "assets/images/chevron-up.svg"
                                                //     : "assets/images/chevron-down.svg"),
                                              ]),
                                        ),
                                        itemBuilder: (context) {
                                          return [
                                            PopupMenuItem(
                                                enabled: false,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.spaceEvenly,
                                                  children: [
                                                    InkWell(
                                                        onTap: () {
                                                          invoiceController
                                                              .setindexforitem(5);
                                                          Get.back();
                                                        },
                                                        child: Text(
                                                          "5",
                                                          style: TextStyle(color: notifire.textcolore),
                                                        )),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          invoiceController
                                                              .setindexforitem(6);
                                                          Get.back();
                                                        },
                                                        child: Text(
                                                          "6",
                                                          style: TextStyle(color: notifire.textcolore),
                                                        )),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          invoiceController.setindexforitem(7);
                                                          Get.back();
                                                        },
                                                        child: Text(
                                                          "7",
                                                          style: TextStyle(color: notifire.textcolore),
                                                        )),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          invoiceController.setindexforitem(10);
                                                          Get.back();
                                                        },
                                                        child: Text(
                                                          "10",
                                                          style: TextStyle(color: notifire.textcolore),
                                                        )),
                                                  ],
                                                )),
                                          ];
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
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
                  constraints.maxWidth<600?const SizedBox(height: 130,):const SizedBox(height: 0,),
                ],
              ),
            ),
          );
        });
      }
    );
  }

  Widget _buildRow({required String title}){
    return Row(
      children: [

        Text(title,style: TextStyle(color: notifire.textcolore)),

      ],);
  }

  // DataColumn dataColumn({required String title, required String iconpath}) {
  //   return DataColumn(
  //     label: Row(
  //       children: [
  //         Text(title,
  //             style: TextStyle(color: Colors.grey.withOpacity(0.4))),
  //         const SizedBox(
  //           width: 16,
  //         ),
  //         SizedBox(
  //             height: 16,
  //             width: 16,
  //             child: Center(
  //                 child: SvgPicture.asset(iconpath,
  //                     height: 22,
  //                     width: 22,
  //                     color: Colors.grey.withOpacity(0.4)))),
  //       ],
  //     ),
  //   );
  // }

  Widget dataColumn1({required String title, required String iconpath, required bool iscenter}) {
    return Row(
      mainAxisAlignment:
          iscenter ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(color: notifire.textcolore)),
        const SizedBox(
          width: 16,
        ),
        SizedBox(
            height: 16,
            width: 16,
            child: Center(
                child: Image(image: AssetImage(iconpath),color: notifire.textcolore,)
            )),
      ],
    );
  }

}
