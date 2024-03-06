// ignore_for_file: unnecessary_import, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../Provider/colore_provider.dart';

class Zig_and_Zag_Screen extends StatefulWidget {
  const Zig_and_Zag_Screen({super.key});

  @override
  State<Zig_and_Zag_Screen> createState() => _Zig_and_Zag_ScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _Zig_and_Zag_ScreenState extends State<Zig_and_Zag_Screen> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          firstcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('More content',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          secoundcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Zigzag',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 20,),
                          thirdcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 130,),
                ],
              ),
            );
          } else if (constraints.maxWidth < 1000) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          firstcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('More content',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          secoundcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Zigzag',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 20,),
                          thirdcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          firstcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('More content',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          secoundcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text('Zigzag',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                          ),
                          const SizedBox(height: 20,),
                          thirdcontain(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            );
          }
        },
      ),
    );
  }
  


//-----------------------------------------:-
  int currenstep=0;
  continueStep(){
    if(currenstep<2){
      setState(() {
        currenstep = currenstep+1;
      });
    }
  }

  cancelstep(){
    if(currenstep>0){
      setState(() {
        currenstep = currenstep - 1;
      });
    }
  }

  Widget controlsBuilder(context,details){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ElevatedButton(onPressed: details.onStepContinue, child: const Text('Next')),
        ),
        const SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: OutlinedButton(onPressed: details.onStepCancel, child: const Text('Back')),
        )
      ],
    );
  }

  Widget firstcontain(){
    return Column(
      children: [
        Stepper(
          currentStep:currenstep,
            onStepContinue: continueStep,
            onStepCancel: cancelstep,
            controlsBuilder: controlsBuilder,
            steps:  [
              Step(title: Text('Step 1',style: TextStyle(color: notifire.textcolore)), content: Container(
            height: 50,
            width: Get.width,
            decoration: BoxDecoration(
                color: notifire.bgcolore,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.withOpacity(0.4))
            ),
            child:  Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(child: Text('Consecteture',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis)),
                  const Flexible(child: Text('Dapibuse ac facillisis in',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis)),
                ],
              ),
            ),
          )),
              Step(title: Text('Step 2',style: TextStyle(color: notifire.textcolore)), content: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                          color: notifire.bgcolore,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            Flexible(child: Text('Conjecture',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,)),
                            const Flexible(child: Text('Lorem ipsum dolore sit amet, Consecteture adipinge flutter developer',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis)),
                            const Flexible(child: Text('Consecteture adipinge flutter developer,Lorem ipsum dolore sit amet,',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis)),
                            const SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
              Step(title: Text('Step 3',style: TextStyle(color: notifire.textcolore)), content: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: notifire.bgcolore,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      ),
                      child:  Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            Flexible(child: Text('Conjecture',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,)),
                            const Flexible(child: Text('Lorem ipsum dolore sit amet, Consecteture adipinge flutter developer',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis)),
                            const Flexible(child: Text('Consecteture adipinge flutter developer,Lorem ipsum dolore sit amet,',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis)),
                            const SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ])
      ],
    );
  }
//-----------------------------------------:-

Widget secoundcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         const Row(
           children: [],
         ),
         TimelineTile(
           endChild: Row(
             children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 20,top: 20),
                   child: Container(
                     height: 70,
                     decoration: BoxDecoration(
                       color: notifire.bgcolore,
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.grey.withOpacity(0.4)),
                     ),
                     child:  Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 10),
                             child: Container(
                               height: 50,
                               width: 50,
                               decoration: BoxDecoration(
                                 color: const Color(0xffEFF2F7),
                                 borderRadius: BorderRadius.circular(10),
                                 image: const DecorationImage(image: AssetImage('assets/star.png'))
                               ),
                             ),
                           ),
                           Expanded(
                             child: ListTile(
                               title: Text('Consecture',style: TextStyle(color: notifire.textcolore)),
                               subtitle: Text('Dapital ac facillits in',style: TextStyle(color: notifire.textcolore)),
                               trailing: Container(
                                 height: 30,
                                 width: 60,
                                 decoration: BoxDecoration(
                                   color: Colors.green,
                                   borderRadius: BorderRadius.circular(10)
                                 ),
                                 child: const Center(child: Text('9+',)),
                               ),
                             ),
                           )
                         ],
                       ),
                     ),
                   ),
                 ),
               ),
             ],
           ),
           // isFirst: true,
           beforeLineStyle: LineStyle(color: Colors.grey.withOpacity(0.4),thickness: 2),
           indicatorStyle: IndicatorStyle(
               indicator: Container(
                 decoration: BoxDecoration(
                     color:  Colors.white,
                     borderRadius: const BorderRadius.all(Radius.circular(65)),
                     border: Border.all(color: Colors.green,width: 4)
                 ),)
           ),
         ),
         SizedBox(
             height: 100,
             width: Get.width,
             // color: Colors.red,
             child: TimelineTile(
               endChild: Row(
                 children: [
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20,top: 20),
                       child: Container(
                         height: 200,
                         decoration: BoxDecoration(
                           color: notifire.bgcolore,
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Colors.grey.withOpacity(0.4)),
                         ),
                         child:  Padding(
                           padding: const EdgeInsets.only(left: 15),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 10),
                                 child: Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       color: const Color(0xffEFF2F7),
                                       borderRadius: BorderRadius.circular(10),
                                       image: const DecorationImage(image: AssetImage('assets/rocket.png')),
                                   ),
                                 ),
                               ),
                               Flexible(child: Padding(
                                 padding:  const EdgeInsets.only(left: 10,right: 10,top: 10),
                                 child: Text('Porta Lorem ipsum dolore sit amet, constriget adtipinge elite, sed do eipumes tempor,constriget adtipinge elite, sed do eipumes tempor,Lorem ipsum dolore sit amet,Consequte',overflow: TextOverflow.ellipsis,maxLines: 3,style: TextStyle(color: notifire.textcolore)),
                               )),
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               beforeLineStyle: LineStyle(color: Colors.grey.withOpacity(0.4),thickness: 2),
               indicatorStyle: IndicatorStyle(
                   indicator: Container(
                     decoration: BoxDecoration(
                         color:  Colors.white,
                         borderRadius: const BorderRadius.all(Radius.circular(65)),
                         border: Border.all(color: Colors.greenAccent,width: 4)
                     ),)
               ),
             )),
         SizedBox(
             height: 100,
             width: Get.width,
             child: TimelineTile(
               endChild: Row(
                 children: [
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.only(left: 20,top: 20),
                       child: Container(
                         height: 70,
                         decoration: BoxDecoration(
                           color: notifire.bgcolore,
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Colors.grey.withOpacity(0.4)),
                         ),
                         child:  Padding(
                           padding: const EdgeInsets.only(left: 15),
                           child: Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(top: 10),
                                 child: Container(
                                   height: 50,
                                   width: 50,
                                   decoration: BoxDecoration(
                                       color: const Color(0xffEFF2F7),
                                       borderRadius: BorderRadius.circular(10),
                                       image: const DecorationImage(image: AssetImage('assets/settings.png'))
                                   ),
                                 ),
                               ),
                               Expanded(
                                 child: ListTile(
                                   title: Text('Vestibulum',style: TextStyle(color: notifire.textcolore)),
                                   subtitle: Text('Morbi leo risum',style: TextStyle(color: notifire.textcolore)),
                                   trailing: Container(
                                     height: 30,
                                     width: 60,
                                     decoration: BoxDecoration(
                                         color: Colors.blue,
                                         borderRadius: BorderRadius.circular(10)
                                     ),
                                     child: const Center(child: Text('New',)),
                                   ),
                                 ),
                               )
                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
               beforeLineStyle: LineStyle(color: Colors.grey.withOpacity(0.4),thickness: 2),
               indicatorStyle: IndicatorStyle(
                   indicator: Container(
                     decoration: BoxDecoration(
                         color:  Colors.white,
                         borderRadius: const BorderRadius.all(Radius.circular(65)),
                         border: Border.all(color: Colors.red,width: 4)
                     ),)
               ),
             )),
         const SizedBox(height: 20,),
       ],
      ),
    );
}

//-----------------------------------------:-

  Widget thirdcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [],
          ),
              SizedBox(
              height: 100,
              width: Get.width,
              child: TimelineTile(
                alignment: TimelineAlign.center,
                startChild: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: notifire.bgcolore,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        children: [
                          Flexible(child: Text('Port Lorem ipsum dolore sit amet, constriget adtipinge elite, sed do eipumes tempor,constriget adtipinge elite, sed do eipumes tempor,Lorem ipsum dolore sit amet,Consequte',overflow: TextOverflow.ellipsis,maxLines: 3,style: TextStyle(color: notifire.textcolore),))
                        ],
                      ),
                    ),
                  ),
                ),
                // isFirst: true,
                beforeLineStyle: LineStyle(color: Colors.grey.withOpacity(0.4),thickness: 2),
                indicatorStyle: IndicatorStyle(
                    color: Colors.green,
                    indicator: Container(
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(65)),
                          border: Border.all(color: Colors.green,width: 4)
                      ),)
                ),
              )),
              SizedBox(
              height: 70,
              width: Get.width,
              child: TimelineTile(
                alignment: TimelineAlign.center,
                endChild: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: notifire.bgcolore,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        children: [
                          Flexible(child: Text('Lorem ipsum dolore sit amit,consectetur eiusmdd tempor incididunt ut labore et dolore magna',overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: notifire.textcolore),))
                        ],
                      ),
                    ),
                  ),
                ),
                // isFirst: true,
                beforeLineStyle: LineStyle(color: Colors.grey.withOpacity(0.4),thickness: 2),
                indicatorStyle: IndicatorStyle(
                    indicator: Container(
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(65)),
                          border: Border.all(color: Colors.blue,width: 4)
                      ),)
                ),
              )),
              SizedBox(
              height: 150,
              width: Get.width,
              child: TimelineTile(
                alignment: TimelineAlign.center,

                startChild: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: notifire.bgcolore,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        children: [
                          Flexible(child: Text('Port Lorem ipsum dolore sit amet, constriget adtipinge elite, sed do eipumes tempor,constriget adtipinge elite, sed do eipumes tempor,Lorem ipsum dolore sit amet,ConsequtePort Lorem ipsum dolore sit amet, constriget adtipinge elite, sed do eipumes tempor,constriget adtipinge elite, sed do eipumes tempor,Lorem ipsum dolore sit amet,Consequte,',overflow: TextOverflow.ellipsis,maxLines: 6,style: TextStyle(color: notifire.textcolore),))
                        ],
                      ),
                    ),
                  ),
                ),
                // isFirst: true,
                beforeLineStyle: LineStyle(color: Colors.grey.withOpacity(0.4),thickness: 2),
                indicatorStyle: IndicatorStyle(
                    indicator: Container(
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(65)),
                          border: Border.all(color: Colors.red,width: 4),
                      ),)

                ),
              )),
              SizedBox(
              height: 70,
              width: Get.width,
              child: TimelineTile(
                alignment: TimelineAlign.center,
                endChild: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: notifire.bgcolore,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Row(
                        children: [
                          Flexible(child: Text('Lorem ipsum dolore sit amit,consectetur eiusmdd tempor incididunt ut labore et dolore magna',overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: notifire.textcolore),))
                        ],
                      ),
                    ),
                  ),
                ),
                // isFirst: true,
                beforeLineStyle: LineStyle(color: Colors.grey.withOpacity(0.4),thickness: 2),
                indicatorStyle: IndicatorStyle(
                    indicator: Container(
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: const BorderRadius.all(Radius.circular(65)),
                          border: Border.all(color: Colors.yellow,width: 4)
                      ),)
                ),
              )),
              const SizedBox(height: 20,),
        ],
      ),
    );
  }


  Widget mainrow() {
    return  Row(
      children: [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Zig-Zag', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child:  Row(
                    children: [
                      const SizedBox(width: 50,),
                      Image(image: const AssetImage('assets/chart-line-dots.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('zig-zag', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
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



