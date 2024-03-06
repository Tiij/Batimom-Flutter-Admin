// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';
import 'package:flutter/material.dart';

import '../extra_screen/ComunTitle_screen.dart';
import '../extra_screen/sizebox_screen.dart';




class Product_Screen_11 extends StatefulWidget {
  const Product_Screen_11({Key? key}) : super(key: key);

  @override
  State<Product_Screen_11> createState() => _Product_Screen_11State();
}

class _Product_Screen_11State extends State<Product_Screen_11>  {

  bool istrue = false;

  var days;
  var hours;
  var minutes;
  var seconds;

  List size = [
    "S",
    "M",
    "L",
    "XL",
  ];


  List productimage11 = [
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
  ];


  List productimage20 = [
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
  ];

  List prodectname = [
    'Conform et Malorum',
    'Striped Dress',
    'BBow polka-dot',
    'Z Product 360',
    'Back Bag',
    'Bonorum et Malorum',
  ];


  List prodectprice = [
    "\$26.00",
    "\$56.00",
    "\$56.00",
    "\$16.00",
    "\$26.00",
    "\$26.00",
  ];

  List color =[
    Colors.tealAccent,
    Colors.blue,
    Colors.greenAccent,
    Colors.pinkAccent,
  ];

  @override
  void initState() {
    super.initState();
    startTimer();
  }
  final AppConst controller = Get.put(AppConst());

  TextEditingController projecttitle = TextEditingController();
  TextEditingController clientname = TextEditingController();


  ColorNotifire notifire = ColorNotifire();
  @override
  Widget build(BuildContext context) {

    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Consumer<ColorNotifire>(

      builder: (context, value, child) =>  Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: notifire.bgcolore,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 600) {
              // Mobile layout
              return NestedScrollView(headerSliverBuilder: (context, innerBoxIsScrolled) {
                return [
                 SliverToBoxAdapter(child: mainrow(),),
                  SliverToBoxAdapter(child: _buildimageselction(width: constraints.maxWidth),),
                  SliverToBoxAdapter(child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: _builddetils(constraints.maxWidth),
                  ),),
                  SliverToBoxAdapter(child: _buildtabviewandbar(size: constraints.maxWidth),),
                ];
              }, body: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 1000,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: _buildgridview(width: constraints.maxWidth,count: 1),
                      ),
                    ),
                  ),


                ],
              ),);


            } else if (constraints.maxWidth < 1200) {
              if(constraints.maxWidth<1000){
                return SizedBox(
                  height: 1000,
                  width: double.infinity,

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        mainrow(),
                        const SizedBox(height: 15,),

                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: _buildimageselction(width: constraints.maxWidth),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: _builddetils(constraints.maxWidth),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: _buildtabviewandbar(size: constraints.maxWidth),
                                    ),
                                  ],
                                ),
                              ],
                            ),

                          ),
                        ),
                        const SizedBox(height: 15,),




                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 800,
                                child: _buildgridview(width: constraints.maxWidth,count: 2),
                              ),
                            ),
                          ],
                        ),

                        const SizeBoxx(),
                      ],
                    ),
                  ),
                );

              }else{
                return SizedBox(
                  height: 1000,
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        mainrow(),
                        const SizedBox(height: 15,),

                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: _buildimageselction(width: constraints.maxWidth),
                                    ),

                                    Expanded(
                                      flex: 4,
                                      child: _builddetils(constraints.maxWidth),
                                    ),

                                    // Expanded(
                                    //   flex: 2,
                                    //   child: _buildbarddetils(),
                                    // ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: _buildtabviewandbar(size: constraints.maxWidth),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15,),





                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 800,
                                child: _buildgridview(width: constraints.maxWidth,count: 4),
                              ),
                            ),
                          ],
                        ),
                        const SizeBoxx(),
                      ],
                    ),
                  ),
                );
              }
              // Tablet layout
            } else {
              // Website layout
              return SizedBox(
                height: 1000,
                width: double.infinity,

                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      mainrow(),
                      const SizedBox(height: 15,),

                      Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: Container(
                          // height: Get.height,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: notifire.containcolore1,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: _buildimageselction(width: constraints.maxWidth),
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: _builddetils(constraints.maxWidth),
                                  ),

                                  // Expanded(
                                  //   flex: 2,
                                  //   child: _buildbarddetils(),
                                  // ),

                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: _buildtabviewandbar(size: constraints.maxWidth),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15,),

                            ],
                          ),
                        ),
                      ),




                      const SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text("Related Product",style: mainTextStyle.copyWith(color: notifire.textcolore),),
                      ),



                      const SizedBox(height: 8,),




                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 400,
                              child: _buildgridview(width: constraints.maxWidth,count: 6),
                            ),
                          ),
                        ],
                      ),
                      const SizeBoxx(),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }


  Widget mainrow(){
    return  Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                  child: Text('Detail Product',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 50),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child: Row(
                    children: [
                      const SizedBox(width: 50,),
                      Image(image: const AssetImage('assets/3.png'),color: notifire.textcolore,),
                      // SizedBox(width: 10,),
                      // Text('Email',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Product',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  // Widget _buildgridview({required double width,required int count}) {
  //   return  GridView.builder(
  //     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: count, mainAxisExtent: 400),
  //     itemCount: 4,
  //     itemBuilder: (context, index) {
  //       return Padding(
  //         padding:  EdgeInsets.all(padding),
  //         child: Container(
  //           height: 150,
  //           decoration: BoxDecoration(
  //             borderRadius: const BorderRadius.all(Radius.circular(12)),
  //             color: notifire!.bgcolore,
  //             boxShadow: boxShadow,
  //           ),
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Expanded(
  //                 flex: 5,
  //                 child: InkWell(
  //                     onTap: () {},
  //                     child: Stack(
  //                       alignment: Alignment.center,
  //                       children: [
  //                         Container(
  //                           // color: Colors.deepPurple,
  //                           height: 400,
  //                           width: 400,
  //                           decoration: BoxDecoration(
  //                               borderRadius: const BorderRadius.vertical(
  //                                   top: Radius.circular(12)),
  //                               image: DecorationImage(
  //                                 image: AssetImage(
  //                                     productimage11[index]),
  //                                 fit: BoxFit.cover,
  //                               )),
  //                         ),
  //                         Positioned(
  //                           bottom: 20,
  //                           left: 10,
  //                           child: Container(
  //                             height: 30,
  //                             width: 80,
  //                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white.withOpacity(0.8)),
  //                             child:Row(
  //                               mainAxisAlignment: MainAxisAlignment.center,
  //                               children: [
  //                                 SvgPicture.asset("assets/fire.svg",color: Colors.deepPurpleAccent,width: 20,height: 20,),
  //                                 const SizedBox(width: 8,),
  //                                 Text("New",style: mediumBlackTextStyle,),
  //                               ],
  //                             ),
  //                           ),
  //                         ),
  //                         // Positioned(
  //                         //   bottom: 20,
  //                         //   right: 10,
  //                         //   child: Container(
  //                         //     height: 30,
  //                         //     width: 100,
  //                         //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.white.withOpacity(0.8)),
  //                         //     child:Row(
  //                         //       mainAxisAlignment: MainAxisAlignment.center,
  //                         //       children: [
  //                         //         SvgPicture.asset("assets/bolt.svg",color: Colors.deepOrange,height: 20,width: 20,),
  //                         //         const SizedBox(width: 8,),
  //                         //         Text(
  //                         //           '$hours:$minutes:$seconds',
  //                         //           style: mediumBlackTextStyle,
  //                         //         ),
  //                         //       ],
  //                         //     ),
  //                         //   ),
  //                         // ),
  //                       ],
  //                     )),
  //               ),
  //               Expanded(
  //                 flex: 2,
  //                 child: SizedBox(
  //                   height: 100,
  //                   child: Padding(
  //                     padding: const EdgeInsets.all(10.0),
  //                     child: Column(
  //                       crossAxisAlignment: CrossAxisAlignment.start,
  //                       children: [
  //
  //                         const SizedBox(height: 10,),
  //
  //                         Text(controller.prodectname[index], style: mediumGreyTextStyle.copyWith(fontSize: 13), overflow: TextOverflow.ellipsis),
  //                         const SizedBox(height: 3,),
  //                         Text(controller.prodectdiscription[index], style: mainTextStyle.copyWith(fontSize: 17, color: notifire!.textcolore), overflow: TextOverflow.ellipsis),
  //                         const SizedBox(height: 10,),
  //                         Row(
  //                           children: [
  //                             Text(controller.prodectprice[index], style: mainTextStyle.copyWith(fontSize: 17).copyWith(color: appGreyColor,decoration: TextDecoration.lineThrough), overflow: TextOverflow.ellipsis),
  //                             const SizedBox(width: 8,),
  //                             Text(controller.prodectprice[index], style: mainTextStyle.copyWith(fontSize: 17).copyWith(color: appMainColor), overflow: TextOverflow.ellipsis,),
  //                           ],
  //                         ),
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  Widget _buildgridview({required double width,required int count}) {
    return  GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          mainAxisExtent: 400),
      itemCount: productimage20.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: notifire.containcolore1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: InkWell(
                      onTap: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            // color: Colors.deepPurple,
                            height: 500,
                            width: 400,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12)),
                                image: DecorationImage(
                                  image: AssetImage(productimage20[index]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(prodectname[index],overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(
                            height: 3,
                          ),
                          start(),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(prodectprice[index],overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                              const SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        );
      },
    );
  }


  Timer? countdownTimer;

  Duration myDuration = const Duration(days: 5);

  void startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }
  void setCountDown() {
    const reduceSecondsBy = 1;
    if (!mounted) return;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  String strDigits(int n) => n.toString().padLeft(2, '0');


  Widget _buildimageselction({required double width}){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
          height: width<600? 350:550,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            color: notifire.bgcolore,
            boxShadow: boxShadow,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              CarouselSlider(
                items: [
                  _buildimage(image:   "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",),
                  _buildimage(image: "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg"),
                  _buildimage(image: "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",),
                  _buildimage(image: "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg"),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  height: width<600? 300:550,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),
            ],
          )
      ),
    );
  }

  int counter = 0;
  Widget _buildcounter() {
    return Consumer<ColorNotifire>(
      builder: (context, value, child) => Container(
        height: 35,
        width: 120,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
            color: notifire.bgcolore,
            borderRadius: BorderRadius.circular(14)),
        child:
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    setState(() {
                      if (counter > 0) {
                        counter--;
                      }
                    });
                  },
                  child: Image.asset("assets/ic_minus_top.png")),
              Text("$counter", style: mediumBlackTextStyle.copyWith(fontSize: 18,color: notifire.textcolore)),
              InkWell(
                  onTap: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Image.asset("assets/ic_plus_top.png")),
            ]),
      ),
    );
  }

  int selectSize = 0;
  int selectColor = 0;
  Widget start(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
          ],
        ),
      ],
    );
  }

  Widget _builddetils(double harsh){
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {

          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              // height: 580,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: notifire.bgcolore,
                boxShadow: boxShadow,
              ),
              child:   Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),

                      Text("Solid Women`s V-neck T-Shirt",style: mainTextStyle.copyWith(fontSize: 15,color: notifire.textcolore),overflow: TextOverflow.ellipsis),

                      const SizedBox(height: 12,),
                      Row(
                        children: [
                          start(),
                          const SizedBox(width: 12,),
                          Flexible(child: Text("(34 reviews) /Write a review?",style: mediumGreyTextStyle.copyWith(fontSize: 15),overflow: TextOverflow.ellipsis))
                        ],
                      ),
                      const SizedBox(height: 12,),

                      Text(
                        "\$325.00",
                        style: TextStyle(
                            color: notifire.textcolore,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Text('Availability: in stock',style: mediumGreyTextStyle.copyWith(fontSize: 15),overflow: TextOverflow.ellipsis),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Text('Product code: 0405689',style: mediumGreyTextStyle.copyWith(fontSize: 15),overflow: TextOverflow.ellipsis),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      Row(
                        children: [
                          Text('Brand: Lee',style: mediumGreyTextStyle.copyWith(fontSize: 15),overflow: TextOverflow.ellipsis),
                        ],
                      ),
                      const SizedBox(height: 6,),
                      harsh<600?
                      Row(
                        children: [
                          Text('Product tags:',style: mediumGreyTextStyle.copyWith(fontSize: 15),overflow: TextOverflow.ellipsis),
                          const SizedBox(width: 10,),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0XFFa7ffea),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(child: Text('Clothes',style: mediumGreyTextStyle.copyWith(fontSize: 12,color: Colors.black),overflow: TextOverflow.ellipsis),),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0XFFa7ffea),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(child: Text('bags',style: mediumGreyTextStyle.copyWith(fontSize: 12,color: Colors.black),overflow: TextOverflow.ellipsis),),
                          ),
                          const SizedBox(width: 5,),
                        ],
                      ):
                      Row(
                        children: [
                          Text('Product tags:',style: mediumGreyTextStyle.copyWith(fontSize: 15),overflow: TextOverflow.ellipsis),
                          const SizedBox(width: 10,),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                                color: const Color(0XFFa7ffea),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(child: Text('Clothes',style: mediumGreyTextStyle.copyWith(fontSize: 12,color: Colors.black),overflow: TextOverflow.ellipsis),),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0XFFa7ffea),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(child: Text('bags',style: mediumGreyTextStyle.copyWith(fontSize: 12,color: Colors.black),overflow: TextOverflow.ellipsis),),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0XFFa7ffea),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(child: Text('shoes',style: mediumGreyTextStyle.copyWith(fontSize: 12,color: Colors.black),overflow: TextOverflow.ellipsis),),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            height: 20,
                            width: 70,
                            decoration: BoxDecoration(
                              color: const Color(0XFFa7ffea),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(child: Text('dresses',style: mediumGreyTextStyle.copyWith(fontSize: 12,color: Colors.black),overflow: TextOverflow.ellipsis),),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Text('On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue',style: mediumGreyTextStyle.copyWith(fontSize: 15),overflow: TextOverflow.ellipsis,maxLines: 2),
                      // SizedBox(
                      //   height: 50,
                      //   width: Get.width*04,
                      //   child: ListView.builder(
                      //     shrinkWrap: true,
                      //     itemCount: size.length,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, index) {
                      //       return InkWell(
                      //         onTap: () {
                      //           setState(() {
                      //             selectSize=index;
                      //           });
                      //         },
                      //         child: Padding(
                      //           padding: const EdgeInsets.all(5.0),
                      //           child: Container(
                      //             height: 50,
                      //             width: 50,
                      //             decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(12),
                      //               border: Border.all(color:selectSize==index? Colors.grey.withOpacity(0.3):Colors.transparent),
                      //               color: Colors.transparent,
                      //             ),
                      //             child: Center(child: Text(size[index],style: mediumBlackTextStyle.copyWith(color: notifire!.textcolore),)),
                      //           ),
                      //         ),
                      //       );
                      //     },),
                      // ),

                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Colors",
                        style: TextStyle(
                            color: notifire.textcolore,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        height: 50,
                        width: Get.width*04,
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: size.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectColor=index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 50,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(65),
                                    border: Border.all(color:selectColor==index? Colors.grey.withOpacity(0.3):Colors.transparent),
                                    color: Colors.transparent,
                                  ),
                                  child: Center(child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(65),
                                      color: color[index],
                                    ),
                                  )),
                                ),
                              ),
                            );
                          },),
                      ),
                      const SizedBox(height: 15,),
                      Text("Quantity", style: TextStyle(
                          color: notifire.textcolore,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                      const SizedBox(height: 20,),
                      _buildcounter(),
                      const SizedBox(height: 20,),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xffdcdfe5))),
                        child: const Text('Add to cart',style: TextStyle(color: Colors.black)),
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }

  Widget _buildtabviewandbar({required double size}){
    return DefaultTabController(length: 2, child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 0),
      child: Container(
        height: 330,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: notifire.bgcolore,
          boxShadow: boxShadow,
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              // height: 80,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: appMainColor,
                      tabs: [
                        Tab( child: Text("Description",style: TextStyle(fontSize: 15,color: notifire.textcolore),),),
                        Tab( child: Text("Reviews",style: TextStyle(fontSize: 15,color: notifire.textcolore),),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                height: 200,
                child:   TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15)),
                          const SizedBox(height: 15,),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15)),
                          const SizedBox(height: 15,),
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15)),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          size<1000?
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('Average Rating',style: TextStyle(color: notifire.textcolore,fontSize: 20),),
                                    const Text('4/5',style: TextStyle(color: Colors.blue,fontSize: 50),),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.star,color: Colors.yellow,size: 30,),
                                        const SizedBox(width: 5,),
                                        const Icon(Icons.star,color: Colors.yellow,size: 30,),
                                        const SizedBox(width: 5,),
                                        const Icon(Icons.star,color: Colors.yellow,size: 30,),
                                        const SizedBox(width: 5,),
                                        const Icon(Icons.star,color: Colors.yellow,size: 30,),
                                        const SizedBox(width: 5,),
                                        Icon(Icons.star,size: 30,color: notifire.textcolore),
                                        const SizedBox(width: 5,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        children: [
                                          Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                          const SizedBox(width: 5,),
                                          const Expanded(
                                            child: LinearProgressIndicator(
                                              backgroundColor: Colors.red,
                                              color: Colors.green,
                                              value: 0.1,
                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        children: [
                                          Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                          const SizedBox(width: 5,),
                                          const Expanded(
                                            child: LinearProgressIndicator(
                                              backgroundColor: Colors.red,
                                              color: Colors.green,
                                              value: 0.1,
                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        children: [
                                          Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                          const SizedBox(width: 5,),
                                          const Expanded(
                                            child: LinearProgressIndicator(
                                              backgroundColor: Colors.red,
                                              color: Colors.green,
                                              value: 0.1,
                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        children: [
                                          Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                          const SizedBox(width: 5,),
                                          const Expanded(
                                            child: LinearProgressIndicator(
                                              backgroundColor: Colors.red,
                                              color: Colors.green,
                                              value: 0.1,
                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,right: 10),
                                      child: Row(
                                        children: [
                                          Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                          const SizedBox(width: 5,),
                                          const Expanded(
                                            child: LinearProgressIndicator(
                                              backgroundColor: Colors.red,
                                              color: Colors.green,
                                              value: 0.1,
                                            ),
                                          ),
                                          const SizedBox(width: 5,),
                                          Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 10,),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(),
                                    Container(
                                      height: 40,
                                      width: 160,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0xff5d87ff)),
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.edit,color: Color(0xff5d87ff)),
                                          SizedBox(width: 5,),
                                          Text('Write an Review',style: TextStyle(color: Color(0xff5d87ff)),)
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ):
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 200,
                                    decoration: BoxDecoration(
                                     border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Average Rating',style: TextStyle(color: notifire.textcolore,fontSize: 20),),
                                        const Text('4/5',style: TextStyle(color: Colors.blue,fontSize: 50),),
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            const Icon(Icons.star,color: Colors.yellowAccent,size: 30,),
                                            const SizedBox(width: 5,),
                                            const Icon(Icons.star,color: Colors.yellowAccent,size: 30,),
                                            const SizedBox(width: 5,),
                                            const Icon(Icons.star,color: Colors.yellowAccent,size: 30,),
                                            const SizedBox(width: 5,),
                                            const Icon(Icons.star,color: Colors.yellowAccent,size: 30,),
                                            const SizedBox(width: 5,),
                                            Icon(Icons.star,size: 30,color: notifire.textcolore),
                                            const SizedBox(width: 5,),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              const SizedBox(width: 10,),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                      borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                            padding: const EdgeInsets.only(left: 10,right: 10),
                                            child: Row(
                                              children: [
                                                Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                                const SizedBox(width: 5,),
                                                const Expanded(
                                                  child: LinearProgressIndicator(
                                                    backgroundColor: Colors.red,
                                                    color: Colors.green,
                                                    value: 0.1,
                                                  ),
                                                ),
                                                const SizedBox(width: 5,),
                                                Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                              ],
                                            ),
                                          ),
                                      const SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10),
                                        child: Row(
                                          children: [
                                            Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                            const SizedBox(width: 5,),
                                            const Expanded(
                                              child: LinearProgressIndicator(
                                                backgroundColor: Colors.red,
                                                color: Colors.green,
                                                value: 0.1,
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10),
                                        child: Row(
                                          children: [
                                            Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                            const SizedBox(width: 5,),
                                            const Expanded(
                                              child: LinearProgressIndicator(
                                                backgroundColor: Colors.red,
                                                color: Colors.green,
                                                value: 0.1,
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10),
                                        child: Row(
                                          children: [
                                            Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                            const SizedBox(width: 5,),
                                            const Expanded(
                                              child: LinearProgressIndicator(
                                                backgroundColor: Colors.red,
                                                color: Colors.green,
                                                value: 0.1,
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10,right: 10),
                                        child: Row(
                                          children: [
                                            Text('1 Stars',style: TextStyle(color: notifire.textcolore),),
                                            const SizedBox(width: 5,),
                                            const Expanded(
                                              child: LinearProgressIndicator(
                                                backgroundColor: Colors.red,
                                                color: Colors.green,
                                                value: 0.1,
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('(485)',style: TextStyle(color: notifire.textcolore),),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 10,),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10,),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                      borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0xff5d87ff)),
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: const Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Icon(Icons.edit,color: Color(0xff5d87ff)),
                                            SizedBox(width: 5,),
                                            Text('Write an Review',style: TextStyle(color: Color(0xff5d87ff)),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // SingleChildScrollView(
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15)),
                    //       const SizedBox(height: 15,),
                    //
                    //       Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15)),
                    //     ],
                    //   ),
                    // ),


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }



  Widget _buildimage({required String image}){
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image:  DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }









  //Extra code



  //..............Colors....................

  static const Color appMainColor = Color(0xff0059E7);
  static const Color appGreyColor = Color(0xffa1a1ae);

//..............TextStyle....................

  TextStyle mainTextStyle =  const TextStyle(fontSize: 24,fontWeight: FontWeight.w800,color: Colors.black,fontFamily: "Gilroy");
  TextStyle mediumGreyTextStyle = const TextStyle(fontSize: 14,color: appGreyColor,fontFamily: "Gilroy");
  TextStyle mediumBlackTextStyle = const TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Gilroy");



  List<BoxShadow>? boxShadow =  [

  ];



}
