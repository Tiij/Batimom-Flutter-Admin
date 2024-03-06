// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';

class Pricing_Screen extends StatefulWidget {
  const Pricing_Screen({super.key});

  @override
  State<Pricing_Screen> createState() => _Pricing_ScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _Pricing_ScreenState extends State<Pricing_Screen> {
  bool is3 = false;

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Container(
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
                    mainrow(),
                    const SizedBox(height: 30,),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: Container(
                        // height: 1500,
                        decoration:  BoxDecoration(
                          color: notifire.containcolore1,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                   Text('Pricing',style: TextStyle(fontSize: 20,color: notifire.textcolore),),
                                  const Expanded(child: SizedBox(width: 10,)),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff9E50F4)),
                                    child: const Text('Edit Pricing'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                             SizedBox(
                              width: 200,
                              height: 50,
                              child:   TabBar(
                                  unselectedLabelColor: notifire.textcolore,
                                  labelColor: Colors.white,
                                  indicator: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xff9E50F4)),
                                  tabs: const [
                                    Text("Yearly"),
                                    Text("Month"),
                                  ]),
                            ),
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 2300,
                              width: Get.width,
                              child: TabBarView(
                                  children: [
                                    SizedBox(
                                      child: GridView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: 4,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,mainAxisExtent: 530,mainAxisSpacing: 15),
                                        itemBuilder: (context, index) {
                                          return  firstcontain(index: index);
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      child: GridView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                        itemCount: 4,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,mainAxisExtent: 530),
                                        itemBuilder: (context, index) {
                                          return  firstcontain(index: index);
                                        },
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: Container(
                        decoration:  BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            SizedBox(
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 4,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,mainAxisExtent: 430),
                                itemBuilder: (context, index) {
                                  return  secoundcontain(index: index);
                                },
                              ),
                            ),

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
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: Container(
                        // height: 1500,
                        decoration:  BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Pricing',style: TextStyle(fontSize: 20),),
                                  const Expanded(child: SizedBox(width: 10,)),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff9E50F4)),
                                    child: const Text('Edit Pricing'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            const SizedBox(
                              width: 200,
                              height: 50,
                              child:   TabBar(
                                  unselectedLabelColor: Colors.black,
                                  labelColor: Colors.white,
                                  indicator: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xff9E50F4)),
                                  tabs: [
                                    Text("Yearly"),
                                    Text("Month"),
                                  ]),
                            ),
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 600,
                              width: Get.width,
                              child: TabBarView(
                                  children: [
                                    SizedBox(
                                      child: GridView.builder(
                                        itemCount: 4,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,mainAxisExtent: 530),
                                        itemBuilder: (context, index) {
                                          return  firstcontain(index: index);
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      child: GridView.builder(
                                        itemCount: 4,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,mainAxisExtent: 530),
                                        itemBuilder: (context, index) {
                                          return  firstcontain(index: index);
                                        },
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: Container(
                        decoration:  BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            SizedBox(
                              child: GridView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,mainAxisExtent: 430),
                                itemBuilder: (context, index) {
                                  return  secoundcontain(index: index);
                                },
                              ),
                            ),

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
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: Container(
                        decoration:  BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            const SizedBox(height: 20,),
                             Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                   Text('Pricing',style: TextStyle(fontSize: 20,color: notifire.textcolore),),
                                  const Expanded(child: SizedBox(width: 10,)),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff9E50F4)),
                                    child: const Text('Edit Pricing'),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                              SizedBox(
                               width: 200,
                               height: 50,
                               child: TabBar(
                                 unselectedLabelColor: notifire.textcolore,
                                 labelColor: Colors.white,
                                 indicator: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color(0xff9E50F4)),
                                   tabs: const [
                                 Text("Yearly",),
                                 Text("Month",),
                               ]),
                             ),
                            const SizedBox(height: 20,),
                            SizedBox(
                              height: 570,
                              width: Get.width,
                              child: TabBarView(
                                  children: [
                                    SizedBox(
                              child: GridView.builder(
                              itemCount: 4,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,mainAxisExtent: 530),
                                itemBuilder: (context, index) {
                                  return  firstcontain(index: index);
                                },
                              ),
                            ),
                                    SizedBox(
                                      child: GridView.builder(
                                        itemCount: 4,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 4,mainAxisExtent: 530),
                                        itemBuilder: (context, index) {
                                          return firstcontain(index: index);
                                        },
                                      ),
                                    ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                      child: Container(
                        decoration:  BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            SizedBox(
                              child: GridView.builder(
                                itemCount: 4,
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,mainAxisExtent: 430),
                                itemBuilder: (context, index) {
                                  return  secoundcontain(index: index);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
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
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Pricing', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child: Row(
                    children: [
                      const SizedBox(width: 50,),
                      Image(image: const AssetImage('assets/dollar-circle.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Pricing', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
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

  Widget firstcontain({int? index}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 550,
        width: 280,
        padding: const EdgeInsets.all(10),
        decoration:  BoxDecoration(
          // color: Color(0xffEBDCFD),
          // color: Color(0xffF9F6FD),
          color: notifire.bgcolore,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: index ==0?Colors.yellow: index == 1? Colors.purple:index == 2?Colors.deepOrange:Colors.green,
              child: index ==0?const Image(image: AssetImage('assets/bolt-alt.png')): index == 1? const Image(image: AssetImage('assets/crown-alt.png'),color: Colors.white,) :index == 2?const Image(image: AssetImage('assets/trophy-star.png'),color: Colors.white):const Image(image: AssetImage('assets/bolt-alt.png'),color: Colors.white),
            ),
            const SizedBox(height: 20,),
            index ==0? Text('Basic Pack', style: TextStyle(fontSize: 20,color: notifire.textcolore)): index == 1?  Text('Standard Pack', style: TextStyle(fontSize: 20,color: notifire.textcolore)) :index == 2? Text('Premium Pack', style: TextStyle(fontSize: 20,color: notifire.textcolore)): Text('Basic Pack', style: TextStyle(fontSize: 20,color: notifire.textcolore)),
            const SizedBox(height: 10,),
            const Divider(color: Color(0xffEFEEF4),),
            const SizedBox(height: 10,),
            row(txt: 'Unlimited Access Courses', img: 'assets/check-circle.png', clore: Colors.red),
            const SizedBox(height: 10,),
            row(txt: 'Certificate After Completion', img: 'assets/check-circle.png', clore: Colors.red),
            const SizedBox(height: 10,),
            row(txt: 'High Resolution Video', img: 'assets/check-circle.png', clore: Colors.red),
            const SizedBox(height: 10,),
            row(txt: '24/7 Dedicated Support', img: 'assets/check-circle.png', clore: Colors.red),
            const SizedBox(height: 10,),
            row(txt: '5 Free PDF Book', img: 'assets/check-circle.png', clore: Colors.red),
            const SizedBox(height: 10,),
            row(txt: '5 Free PDF Book', img: 'assets/times-circle.png', clore: const Color(0xffF0C3BF)),
            const SizedBox(height: 10,),
            row(txt: 'Exercise Files & Notes', img: 'assets/times-circle.png', clore: const Color(0xffF0C3BF)),
            const SizedBox(height: 10,),
            row(txt: 'Personal instructor Assistance', img: 'assets/times-circle.png', clore: const Color(0xffF0C3BF)),
            const SizedBox(height: 20,),
            index ==0?const Text('\$29.99/Monthly', style: TextStyle(fontSize: 20, color: Color(0xff9F53F4)),): index == 1? const Text('\$119.99/Monthly', style: TextStyle(fontSize: 20, color: Color(0xff9F53F4)),) :index == 2?const Text('\$399.99/Monthly', style: TextStyle(fontSize: 20, color: Color(0xff9F53F4)),) : const Text('\$119.99/Monthly', style: TextStyle(fontSize: 20, color: Color(0xff9F53F4)),),
            const SizedBox(height: 20,),
            index ==0? Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffEBDCFD), fixedSize: const Size.fromHeight(40)),
                    child: const Text('Become A Member', style: TextStyle(color: Color(0xff9F53F4))),
                  ),
                ),
              ],
            ): index == 1? Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffAC69F6), fixedSize: const Size(350, 40)),
                    child: const Text('Become A Member', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ) :index == 2? Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffEBDCFD), fixedSize: const Size(350, 40)),
                    child: const Text('Become A Member', style: TextStyle(color: Color(0xff9F53F4))),
                  ),
                ),
              ],
            ): Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffEBDCFD), fixedSize: const Size(350, 40)),
                    child: const Text('Become A Member', style: TextStyle(color: Color(0xff9F53F4))),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget row({required String txt, required String img, required Color clore}) {
    return Row(
      children: [
        Image(image: AssetImage(img), color: clore),
        const SizedBox(width: 10,),
        Flexible(child: Text(txt,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),)),
      ],
    );
  }


  Widget secoundcontain({int? index}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10, right: 10,top: 20,bottom: 20),
      child: Container(
        // height: index==2 ? 400:400,
        width: 260,
        padding: const EdgeInsets.all(10),
        decoration:  BoxDecoration(
          // color: Color(0xffEBDCFD),
          // color: Color(0xffF9F6FD),
          color: index==0? notifire.bgcolore: index==1? notifire.bgcolore : index==2? Colors.black : notifire.bgcolore,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            index ==0? Text('Free', style: TextStyle(fontSize: 25,color: notifire.textcolore)): index == 1? const Text('Pro', style: TextStyle(fontSize: 25,color: Colors.blue)) :index == 2? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Enterprise', style: TextStyle(fontSize: 25,color: Colors.green)),
                const Expanded(child: SizedBox(width: 60,)),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 20,
                    width: 80,
                    decoration: const BoxDecoration(
                        color: Color(0xffFF97E8),
                        borderRadius: BorderRadius.all(Radius.circular(3))
                    ),
                    child: const Center(child: Text('Popular',style: TextStyle(color: Colors.black),)),
                  ),
                )
              ],
            ):
             Text('Free', style: TextStyle(fontSize: 25,color: notifire.textcolore)),
            const SizedBox(height: 10,),
            index ==0? Text('Basic chat functionality', style: TextStyle(fontSize: 15,color: notifire.textcolore),overflow: TextOverflow.ellipsis,): index == 1?  Text('More advanced AI capabilities', style: TextStyle(fontSize: 15,color: notifire.textcolore),overflow: TextOverflow.ellipsis,) :index == 2?const Text('For large team and business', style: TextStyle(fontSize: 15,color: Colors.white),overflow: TextOverflow.ellipsis,): Text('Basic chat functionality', style: TextStyle(fontSize: 15,color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
            const SizedBox(height: 10,),
            index==0?Row(
              children: [
                Text('\$0',style: TextStyle(fontSize: 40,color: notifire.textcolore),),
                const Text('/mo',style: TextStyle(color: Colors.grey,fontSize: 25),)
              ],
            ): index==1? Row(
              children: [
                Text('\$89',style: TextStyle(fontSize: 40,color: notifire.textcolore),),
                const Text('/mo',style: TextStyle(color: Colors.grey,fontSize: 25),)
              ],
            ): index==2? const Row(
              children: [
                Text('\$399',style: TextStyle(fontSize: 40,color: Colors.white),),
                Text('/mo',style: TextStyle(color: Colors.grey,fontSize: 25),)
              ],
            ): Row(
              children: [
                Text('\$0',style: TextStyle(fontSize: 40,color: notifire.textcolore),),
                const Text('/mo',style: TextStyle(color: Colors.grey,fontSize: 25),)
              ],
            ),
            const SizedBox(height: 5,),
            index ==0?const Text('Free forever', style: TextStyle(fontSize: 15,color: Colors.grey),overflow: TextOverflow.ellipsis,): index == 1? const Text('Per month,per team members', style: TextStyle(fontSize: 15,color: Colors.grey),overflow: TextOverflow.ellipsis,) :index == 2?const Text('Per month,per team members', style: TextStyle(fontSize: 15,color: Colors.grey),overflow: TextOverflow.ellipsis,):const Text('Free forever', style: TextStyle(fontSize: 15,color: Colors.grey),overflow: TextOverflow.ellipsis,),
            const Divider(color: Color(0xffEFEEF4),),
            const SizedBox(height: 10,),
            const SizedBox(height: 10,),
            index==0? Column(
              children: [
                row1(txt: '30 days history', img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row1(txt: 'Up to 1000 messages/mo', img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row1(txt: 'Limited AI capabilities', img: 'assets/check-circle.png', clore: Colors.grey),
              ],
            ) : index==1? Column(
              children: [
                row1(txt: 'Email support', img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row1(txt: 'Unlimited messages', img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row1(txt: 'Access to AI capabilities', img: 'assets/check-circle.png', clore: Colors.grey),
              ],
            ) : index==2? Column(
              children: [
                row2(txt: 'Customizable AI models',img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row2(txt: 'Advanced team management', img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row2(txt: 'Enterprise-level support',img: 'assets/check-circle.png', clore: Colors.grey),
              ],
            ) : Column(
              children: [
                row1(txt: '30 days history', img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row1(txt: 'Up to 1000 messages/mo', img: 'assets/check-circle.png', clore: Colors.grey),
                const SizedBox(height: 10,),
                row1(txt: 'Limited AI capabilities', img: 'assets/check-circle.png', clore: Colors.grey),
              ],
            ),
            const SizedBox(height: 20,),
            index ==0?
            Row(
              children: [
                Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      ),
                      child: const Center(child: Text('Current plan',style: TextStyle(color: Colors.grey),)),
                    )
                ),
              ],
            ): index == 1? Row(
              children: [
                Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      ),
                      child: const Center(child: Text('Upgrade',style: TextStyle(color: Colors.grey),)),
                    )
                ),
              ],
            ) :index == 2? Row(
              children: [
                Expanded(
                    child: Container(
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(child: Text('Upgrade',style: TextStyle(color: Colors.white),)),
                    )
                ),
              ],
            ): Row(
              children: [
                Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey.withOpacity(0.4)),
                      ),
                      child: const Center(child: Text('Current plan',style: TextStyle(color: Colors.grey),)),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  Widget row1({required String txt, required String img, required Color clore,Color? clre}) {
    return Row(
      children: [
        Image(image: AssetImage(img), color: clore),
        const SizedBox(width: 10,),
        Flexible(child: Text(txt,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),)),
      ],
    );
  }

  Widget row2({required String txt, required String img, required Color clore,Color? clre}) {
    return Row(
      children: [
        Image(image: AssetImage(img), color: clore),
        const SizedBox(width: 10,),
        Flexible(child: Text(txt,overflow: TextOverflow.ellipsis,style: const TextStyle(color: Colors.white),)),
      ],
    );
  }



}
