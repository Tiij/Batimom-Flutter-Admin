

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/web_screen/drawer_code.dart';

import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';
import '../web_screen/app_bar_screen.dart';

class screen1 extends StatefulWidget {

  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}
ColorNotifire notifire = ColorNotifire();
class _screen1State extends State<screen1> {
  InboxController inboxController = Get.put(InboxController());
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<InboxController>(
      builder: (inboxController) {
        return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return  Scaffold(
              drawer: Drawer1(size: constraints.maxWidth),
              appBar: appber(size: constraints.maxWidth ),
              body:  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    // laout(),
                    // Inbox()
                    inboxController.page12[inboxController.pageselecter]
                  ],
                ),
              ),
            );
          } else {
            return Scaffold(
              body:  Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  inboxController.drwar ? const SizedBox() : SizedBox(
                      height: MediaQuery.of(context).size.height,
                      width: 270,
                      child: Drawer1(size: constraints.maxWidth),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: Get.width,
                            color: Colors.red,
                            child: appber(size: constraints.maxWidth),
                          ),
                          Expanded(
                            child: SizedBox(
                              height: Get.height,
                            width: Get.width,
                             child: inboxController.page12[inboxController.pageselecter],
                             // Inbox(),
                             //  laout(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
             );
          }
        },);
      }
    );
  }
}
