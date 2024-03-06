import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';



class Projct extends StatefulWidget {
  const Projct({super.key});

  @override
  State<Projct> createState() => _ProjctState();
}

class _ProjctState extends State<Projct> {
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
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
                    child: Column(
                      children: [
                        size<1000?
                        Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: text.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          currentIndex=index;
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 80,
                                        color: currentIndex==index?Colors.grey[300]:notifire.containcolore1,
                                        child: Center(child: Text(text[index],style: TextStyle(color: currentIndex==index?Colors.black:notifire.textcolore,fontSize: 12))),
                                      ),
                                    );
                                  }),
                            ),
                            const SizedBox(height: 10,),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  inboxController.setTextIsTrue(29);
                                },
                                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff757FEF)),
                                child:  Text('+ Create Project',style: TextStyle(color: Colors.white)),
                              ),
                            ),

                          ],
                        ):
                        Row(
                          children: [
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                 color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: text.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (BuildContext context, int index) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          currentIndex=index;
                                        });
                                      },
                                    child: Container(
                                        height: 50,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          color: currentIndex==index?Colors.grey[300]:notifire.containcolore1,
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(child: Text(text[index],style: TextStyle(color: currentIndex==index?Colors.black:notifire.textcolore,fontSize: 12))),
                                      ),
                                    );
                                  }),
                            ),
                            const Expanded(child: SizedBox(width: 700,)),
                            Container(
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  inboxController.setTextIsTrue(29);
                                },
                                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff757FEF)),
                                child:  Text('+ Create Project',style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                                   columnWidths: const <int, TableColumnWidth>{
                                     0: FixedColumnWidth(30),
                                     1: FixedColumnWidth(30),
                                     2: FixedColumnWidth(200),
                                     3: FixedColumnWidth(60),
                                     4: FixedColumnWidth(200),
                                     5: FixedColumnWidth(50),
                                     6: FixedColumnWidth(50),
                                     7: FixedColumnWidth(100),
                                     8: FixedColumnWidth(60),
                                     9: FixedColumnWidth(30),
                                   },
                                   children: [
                                     _row(txt1: 'Foot_Ball',txt2: '53/70',txt3: '7',txt4: '3',txt5: '04 Oct 2023',img: 'assets/globe.png',size: size),
                                     _row(txt1: 'Drop box Mobile app',txt2: '40/57',txt3: '9',txt4: '4',txt5: '11 Oct 2023',img: 'assets/733601.png',size: size),
                                     _row(txt1: 'Slate for Company',txt2: '13/18',txt3: '2',txt4: '5',txt5: '13 Oct 2023',img: 'assets/arrows-move1.png',size: size),
                                     _row(txt1: 'Resource website',txt2: '46/55',txt3: '3',txt4: '6',txt5: '20 Oct 2023',img: 'assets/download90.png',size: size),
                                     _row(txt1: 'Photoshop for spotify cover',txt2: '34/40',txt3: '7',txt4: '2',txt5: '16 Nov 2023',img: 'assets/download-removebg-preview.png',size: size),
                                     _row(txt1: 'Dribble mockup',txt2: '53/70',txt3: '7',txt4: '3',txt5: '19 Nov 2023',img: 'assets/globe.png',size: size),
                                     _row(txt1: 'Photoshop for spotify cover',txt2: '40/57',txt3: '9',txt4: '4',txt5: '21 Nov 2023',img: 'assets/733601.png',size: size),
                                     _row(txt1: 'Drop box Mobile app',txt2: '13/18',txt3: '2',txt4: '5',txt5: '25 Nov 2023',img: 'assets/arrows-move1.png',size: size),
                                     _row(txt1: 'Slate for Company',txt2: '46/55',txt3: '3',txt4: '6',txt5: '28 Nov 2023',img: 'assets/download90.png',size: size),
                                     _row(txt1: 'Foot_Ball',txt2: '53/70',txt3: '7',txt4: '3',txt5: '04 Oct 2023',img: 'assets/globe.png',size: size),
                                     _row(txt1: 'Drop box Mobile app',txt2: '40/57',txt3: '9',txt4: '4',txt5: '11 Oct 2023',img: 'assets/733601.png',size: size),
                                     _row(txt1: 'Slate for Company',txt2: '13/18',txt3: '2',txt4: '5',txt5: '13 Oct 2023',img: 'assets/arrows-move1.png',size: size),
                                     _row(txt1: 'Resource website',txt2: '46/55',txt3: '3',txt4: '6',txt5: '20 Oct 2023',img: 'assets/download90.png',size: size),
                                     _row(txt1: 'Photoshop for spotify cover',txt2: '34/40',txt3: '7',txt4: '2',txt5: '16 Nov 2023',img: 'assets/download-removebg-preview.png',size: size),
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

  TableRow _row ({required String txt1,required String txt2,required String txt3,required String txt4,required String txt5,required String img,required double size}){
    return  TableRow(
        children: [
          Padding(
            padding:  const EdgeInsets.only(top:  20,bottom: 10),
            child: Checkbox(
              side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: notifire.textcolore),
              ),
              checkColor: Colors.white,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 20),
            child: CircleAvatar(radius: 15,
              backgroundColor: Colors.orangeAccent.withOpacity(0.1),
              child: Image(image: AssetImage(img),color: notifire.textcolore, height: 15, width: 15),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 33: 20),
            child: Text(txt1, style:  TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 20),
            child: Row(
              children: [
                 Image(image: const AssetImage('assets/60727.png'),color: notifire.textcolore,
                  height: 15,
                  width: 15,),
                Text(txt2,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              ],
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 8,right: 8,bottom: 8,top: size<700? 40: 20),
            child: const LinearProgressIndicator(
              backgroundColor: Colors.red,
              color: Colors.green,
              value: 0.3,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 20,top: size<700? 30: 20),
            child: Row(
              children: [
                 Image(image: const AssetImage('assets/envelopes.png'),color: notifire.textcolore),
                Text(txt3,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 20),
            child: Row(
              children: [
                 Image(image: const AssetImage('assets/paperclip1.png'),color: notifire.textcolore),
                Text(txt4,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 20),
            child: Container(
              height: 30,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: notifire.textcolore),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text(txt5,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),)),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 40,top: size<700? 30: 20),
            child: const Stack(
                children: [
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/avatarsecounde.png'), radius: 9),
                  Positioned(
                    left: 10,
                    child: CircleAvatar(
                        backgroundImage: AssetImage('assets/woman.png'), radius: 9),
                  ),
                  Positioned(
                    left: 20,
                    child: CircleAvatar(backgroundImage: AssetImage('assets/personal-information.png'), radius: 9),
                  ),
                ]
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: size<700? 30: 20),
            child:  Icon(Icons.more_horiz,color: notifire.textcolore),
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
                child: Text('Project',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 101,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Project',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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



