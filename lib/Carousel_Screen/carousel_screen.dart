// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class CAROUSEL_screen extends StatefulWidget {
  const CAROUSEL_screen({super.key});

  @override
  State<CAROUSEL_screen> createState() => _CAROUSEL_screenState();
}
ColorNotifire notifire = ColorNotifire();
class _CAROUSEL_screenState extends State<CAROUSEL_screen> {
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
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Basic',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                          ),
                          pageview1(),
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
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Adaptive Height',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                          ),
                          pageview11(),
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
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Basic',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                          ),
                          pageview1(),
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
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Adaptive Height',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                          ),
                          pageview11(),
                        ],
                      ),
                    ),
                  ),
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
                           Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('Basic',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                          ),
                          pageview1(),
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
                           Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Text('Adaptive Height',style: TextStyle(color: notifire.textcolore,fontSize: 20)),
                          ),
                          pageview11(),
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

  List imglist=[
    'assets/teenager-student-arm-studio-body-removebg-preview.png',
    'assets/attractive-teenager-pointing-side-removebg-preview.png',
    'assets/businessman-presenting-something-isolated-white-background-removebg-preview.png',
  ];

  int a = 0;
  PageController controller = PageController();
  Widget pageview1({int? index}){
    return Padding(
      padding:  const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
      child:   Stack(
        children: [
          SizedBox(
            height: 600,
            width: Get.width,
            child: PageView.builder(
              controller: controller,
              itemCount: imglist.length,
              itemBuilder: (context, index) {
                WidgetsBinding.instance.addPostFrameCallback((_){
                  setState(() {
                    a = index+1;
                  });
                });
                return Container(
                  height: 600,
                  decoration: BoxDecoration(
                      color: index==0?Colors.yellow[800]:index==1?Colors.red:Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: AssetImage(imglist[index]),)
                  ),
                );
              },
            ),
          ),
          Positioned(
            right: 15,
            top: 300,
            child: InkWell(
              onTap: () {
                controller.jumpToPage(a);
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(65),
                ),
                child: const Center(child: Icon(Icons.chevron_right,color: Colors.black)),
              ),
            ),
          ),
          Positioned(
            left: 15,
            top: 300,
            child: InkWell(
              onTap: () {
                controller.jumpToPage(a-2);
                // controller.animateToPage(index!-1, duration:  const Duration(seconds: 1), curve: Curves.linear);
              },
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(65),
                ),
                child: const Center(child: Icon(Icons.keyboard_arrow_left,color: Colors.black)),
              ),
            ),
          ),
        ],
      )
    );
  }



  List imglist11=[
    'assets/attractive-teenager-pointing-side-removebg-preview.png',
    'assets/businessman-presenting-something-isolated-white-background-removebg-preview.png',
    'assets/teenager-student-arm-studio-body-removebg-preview.png',
  ];
 int harsh=0;
  PageController controller11 = PageController();
  Widget pageview11({int? index}){
    return Padding(
      padding:  const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
      child: SizedBox(
        height: 640,
        width: Get.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 620,
                  width: Get.width,
                  child: PageView.builder(
                    controller: controller11,
                    itemCount: imglist11.length,
                    itemBuilder: (context, index) {
                      WidgetsBinding.instance.addPostFrameCallback((_){
                        setState(() {
                          harsh = index+1;
                        });

                      });
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 600,
                                decoration: BoxDecoration(
                                    color: index==0?Colors.deepPurple:index==1?Colors.blue:Colors.teal,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage(imglist11[index]),)
                                ),
                              ),

                            ],
                          ),

                        ],
                      );
                    },
                  ),
                ),
                Positioned(
                  right: 15,
                  top: 300,
                  child: InkWell(
                    onTap: () {
                      controller11.jumpToPage(harsh);
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(65),
                      ),
                      child: const Center(child: Icon(Icons.chevron_right,color: Colors.black)),
                    ),
                  ),
                ),
                Positioned(
                  left: 15,
                  top: 300,
                  child: InkWell(
                    onTap: () {
                      controller11.jumpToPage(harsh-2);
                      // controller.animateToPage(index!-1, duration:  const Duration(seconds: 1), curve: Curves.linear);
                    },
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(65),
                      ),
                      child: const Center(child: Icon(Icons.keyboard_arrow_left,color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),







            SizedBox(
              height: 10,
              width: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return  InkWell(
                      onTap: () {
                        controller11.animateToPage(index, duration:  const Duration(seconds: 1), curve: Curves.linear);
                      },
                      child: Icon(harsh ==index? Icons.circle_outlined :Icons.circle,color: notifire.textcolore,size: 10,));
                },),
            ),
          ],
        ),
      ),
    );
  }




  Widget mainrow() {
    return   Row(
      children: [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Carousel', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: SizedBox(
                  height: 60,
                  width: 140,
                  child: Row(
                    children: [
                      const SizedBox(width: 30,),
                      Image(image: const AssetImage('assets/sliders-horizontal.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Carousel', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
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

