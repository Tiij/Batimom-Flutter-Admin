// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kanban_board/custom/board.dart';
import 'package:kanban_board/models/inputs.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';
import '../extra_screen/all_controller.dart';

class Task_Screen extends StatefulWidget {
  const Task_Screen({super.key});

  @override
  State<Task_Screen> createState() => _Task_ScreenState();
}

class _Task_ScreenState extends State<Task_Screen> {

  ColorNotifire notifire = ColorNotifire();
  InvoiceController invoiceController = Get.put(InvoiceController());
  double value = 25;

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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                          height: 800,
                          width: MediaQuery.of(context).size.width * 2,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: firstcontain(),
                          )),
                    ),
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
                    SizedBox(
                        height: 800,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: firstcontain(),
                        )),
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
                    SizedBox(
                        height: 800,
                        width: MediaQuery.of(context).size.width+105,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: firstcontain(),
                        )),
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
                child: Text('Task',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
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
                      const SizedBox(width: 10,),
                      Text('Task',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget firstcontain() {
    return KanbanBoard(
      List.generate(
        taskData.length,
            (index1) => BoardListsData(
                footerBackgroundColor: notifire.containcolore1,
                headerBackgroundColor: notifire.containcolore1,
                // headerBackgroundColor: index1 == 0? const Color(0xff5d87ff): index1 == 1? const Color(0xfff3ae21) : index1 == 2? const Color(0xfff1896b) : index1 == 3? const Color(0xff5adeb9) : index1==4? const Color(0xff5d87ff) : const Color(0xfff3ae21) ,
                // footerBackgroundColor: index1 == 0? const Color(0xff5d87ff): index1 == 1? const Color(0xfff3ae21) : index1 == 2? const Color(0xfff1896b) : index1 == 3? const Color(0xff5adeb9) : index1==4? const Color(0xff5d87ff) : const Color(0xfff3ae21) ,
            backgroundColor: notifire.background,
            items: List.generate(
              taskData[index1].length,
                  (index) => Padding(
                padding: const EdgeInsets.only(bottom: 5,top: 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: notifire.containcolore1,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 27,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: taskData[index1][index].containerColor,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6),
                              child: Text(
                                "${taskData[index1][index].status}",
                                style: TextStyle(
                                  color: taskData[index1][index].statusColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: notifire.textcolore,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "${taskData[index1][index].name}",
                        style: TextStyle(
                          color: notifire.textcolore,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel hendrerit ipsum...",
                        style: TextStyle(
                          color: notifire.textcolore,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                        maxLines: 2,
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            size: 16,
                            color: notifire.textcolore,
                          ),
                          Text(
                            "01 Jun 2023",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: notifire.textcolore,
                              letterSpacing: 0.5,
                            ),
                          ),
                          const Spacer(),
                          const Stack(
                            children: [
                              CircleAvatar(backgroundImage: AssetImage('assets/avatar-3 2c.png'),radius: 15,),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: CircleAvatar(backgroundImage: AssetImage('assets/avatar-1 11.png'),radius: 15,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: CircleAvatar(backgroundImage: AssetImage('assets/avatar-5 2z.png'),radius: 15,),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )),
      ),
      onItemLongPress: (cardIndex, listIndex) {},
      onItemReorder: (oldCardIndex, newCardIndex, oldListIndex, newListIndex) {},
      onListLongPress: (listIndex) {},
      onListReorder: (oldListIndex, newListIndex) {},
      onItemTap: (cardIndex, listIndex) {},
      onListTap: (listIndex) {},
      onListRename: (oldName, newName) {},
      backgroundColor: notifire.containcolore1,
      // displacementY: 124,
      // boardDecoration: const BoxDecoration(
      //   color: Color(0xffF9F9FC),
      // ),
      listDecoration: BoxDecoration(
        color: notifire.background,
      ),
      // displacementX: 100,
      textStyle:  TextStyle(
          fontSize: 18, color: notifire.textcolore, fontWeight: FontWeight.w500),
    );
  }



}



class Task {
  String status;
  Color statusColor;
  Color containerColor;
  String name;
  String value;
  Color sliderColor;

  Task({
    required this.status,
    required this.statusColor,
    required this.containerColor,
    required this.name,
    required this.value,
    required this.sliderColor,
  });
}

List taskData = [
  [
    Task(
        status: "High",
        statusColor: const Color(0xffEB3D4D),
        containerColor: const Color(0xffFEECEE),
        name: "Main Flow Design",
        value: "0%",
        sliderColor: const Color(0xffE0E2E7)),
    Task(
        status: "Medium",
        statusColor: const Color(0xffF86624),
        containerColor: const Color(0xffFFF0EA),
        name: "Prototype",
        value: "0%",
        sliderColor: const Color(0xffE0E2E7)),
    Task(
        status: "Medium",
        statusColor: const Color(0xffF86624),
        containerColor: const Color(0xffFFF0EA),
        name: "Copy Writing",
        value: "0%",
        sliderColor: const Color(0xffE0E2E7)),
    Task(
        status: "Low",
        statusColor: const Color(0xff1A9882),
        containerColor: const Color(0xffE9FAF7),
        name: "Blog Content",
        value: "0%",
        sliderColor: const Color(0xffE0E2E7)),
  ],
  [
    Task(
        status: "High",
        statusColor: const Color(0xffEB3D4D),
        containerColor: const Color(0xffFEECEE),
        name: "Preparing Infrastructure",
        value: "25%",
        sliderColor: const Color(0xffF86624)),
    Task(
        status: "High",
        statusColor: const Color(0xffEB3D4D),
        containerColor: const Color(0xffFEECEE),
        name: "Register & Login Design",
        value: "25%",
        sliderColor: const Color(0xffF86624)),
    Task(
        status: "Medium",
        statusColor: const Color(0xffF86624),
        containerColor: const Color(0xffFFF0EA),
        name: "Developing Register & Login Flow",
        value: "25%",
        sliderColor: const Color(0xffF86624)),
  ],
  [
    Task(
        status: "Medium",
        statusColor: const Color(0xffF86624),
        containerColor: const Color(0xffFFF0EA),
        name: "User Flow",
        value: "Done",
        sliderColor: const Color(0xff22CAAD)),
    Task(
        status: "Low",
        statusColor: const Color(0xff1A9882),
        containerColor: const Color(0xffE9FAF7),
        name: "Blog Content",
        value: "Done",
        sliderColor: const Color(0xff22CAAD)),
  ],
  [
    Task(
        status: "High",
        statusColor: const Color(0xffEB3D4D),
        containerColor: const Color(0xffFEECEE),
        name: "Logo & Brand Design",
        value: "25%",
        sliderColor: const Color(0xffEB3D4D)),
    Task(
        status: "Medium",
        statusColor: const Color(0xffF86624),
        containerColor: const Color(0xffFFF0EA),
        name: "Defining MVP",
        value: "25%",
        sliderColor: const Color(0xffEB3D4D)),
    Task(
        status: "Medium",
        statusColor: const Color(0xffF86624),
        containerColor: const Color(0xffFFF0EA),
        name: "Create PRD",
        value: "25%",
        sliderColor: const Color(0xffEB3D4D)),
  ]

  // Task(status: "", statusColor: Color(0xff), containerColor: Color(0xff), name: "", value: "", sliderColor: Color(0xff)),
];



class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
