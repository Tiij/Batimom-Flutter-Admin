// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Avater_SCreen extends StatefulWidget {
  const Avater_SCreen({super.key});

  @override
  State<Avater_SCreen> createState() => _Avater_SCreenState();
}
ColorNotifire notifire = ColorNotifire();
class _Avater_SCreenState extends State<Avater_SCreen> {
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
                  mainrow(),
                  const SizedBox(height: 30,),
                  Firstcontain(),
                  const SizedBox(height: 10,),
                  Secoundecontain(),
                  const SizedBox(height: 20,),
                  Thirdcontain(),
                  const SizedBox(height: 20,),
                  Fourcontain(),
                  const SizedBox(height: 20,),
                  Fivecontain(),
                  const SizedBox(height: 20,),
                  Sixcontain(),
                  const SizedBox(height: 20,),
                  Sevencontain(),
                  const SizedBox(height: 20,),
                  Eightcontain(),
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
                  Row(
                    children: [
                      Expanded(child: Firstcontain()),
                      Expanded(child: Secoundecontain()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Thirdcontain()),
                      Expanded(child: Fourcontain()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Fivecontain()),
                      Expanded(child: Sixcontain())
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Sevencontain()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Eightcontain()),
                    ],
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
                  Row(
                    children: [
                      Expanded(child: Firstcontain()),
                      Expanded(child: Secoundecontain()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Thirdcontain()),
                      Expanded(child: Fourcontain()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Fivecontain()),
                      Expanded(child: Sixcontain())
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Sevencontain()),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(child: Eightcontain()),
                    ],
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
                child: Text('Avater', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: SizedBox(
                  height: 60,
                  width: 140,
                  child: Row(
                    children: [
                      const SizedBox(width: 50,),
                      Image(image: const AssetImage('assets/user.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Avater', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
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

  Widget Firstcontain({String? img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Basic',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/user.png'),height: 25,width: 25,)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/woman1.png'),height: 25,width: 25,)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/b.png'),height: 25,width: 25,)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Secoundecontain({String? img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Contextual colors',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/user.png'),height: 25,width: 25,)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/woman1.png'),height: 25,width: 25,)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Center(child: Image(image: AssetImage('assets/b.png'),height: 25,width: 25,)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Thirdcontain({String? img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Solid',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  common1(img: 'assets/user.png',clore: const Color(0xff38C66C),clre: Colors.white),
                  common1(img: 'assets/user.png',clore: const Color(0xff74788D),clre: Colors.white),
                  common1(img: 'assets/user.png',clore: const Color(0xff4E7ADF),clre: Colors.white),
                  common1(img: 'assets/user.png',clore: const Color(0xff41C3A9),clre: Colors.white),
                  common1(img: 'assets/user.png',clore: Colors.yellow,clre: Colors.white),
                  common1(img: 'assets/user.png',clore: Colors.red,clre: Colors.white),
                  common1(img: 'assets/user.png',clore: const Color(0xffEFF2F7),clre: Colors.black),
                  common1(img: 'assets/user.png',clore: Colors.black,clre: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Fourcontain({String? img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Lable',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  common1(img: 'assets/user.png',clore: const Color(0xffE1F7E9),clre: const Color(0xff38C66C)),
                  common1(img: 'assets/user.png',clore: const Color(0xffEAEBEE),clre:  const Color(0xff74788D)),
                  common1(img: 'assets/user.png',clore: const Color(0xffE5EBFA),clre: const Color(0xff4E7ADF)),
                  common1(img: 'assets/user.png',clore: const Color(0xffE3F6F2),clre: const Color(0xff41C3A9)),
                  common1(img: 'assets/user.png',clore: const Color(0xffFFF8E8),clre: Colors.yellow),
                  common1(img: 'assets/user.png',clore: const Color(0xffFFE7E7),clre: Colors.red),
                  common1(img: 'assets/user.png',clore: const Color(0xffFDFDFE),clre: const Color(0xffEFF2F7)),
                  common1(img: 'assets/user.png',clore: const Color(0xffE1E2E3),clre: Colors.black),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Fivecontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Sizinge',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text('A',style: TextStyle(color: Colors.white),)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text('B',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text('C',style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text('D',style: TextStyle(color: Colors.white,fontSize: 30),)),
                  ),
                  Container(
                    height: 95,
                    width: 95,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text('E',style: TextStyle(color: Colors.white,fontSize: 35),)),
                  ),
                  Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text('F',style: TextStyle(color: Colors.white,fontSize: 40),)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Sixcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Sizinge',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: const Center(child: Text('A',style: TextStyle(color: Colors.white),)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: const Center(child: Text('B',style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: const Center(child: Text('C',style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ),
                  Container(
                    height: 85,
                    width: 85,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: const Center(child: Text('D',style: TextStyle(color: Colors.white,fontSize: 30),)),
                  ),
                  Container(
                    height: 95,
                    width: 95,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: const Center(child: Text('E',style: TextStyle(color: Colors.white,fontSize: 35),)),
                  ),
                  Container(
                    height: 105,
                    width: 105,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(60)
                    ),
                    child: const Center(child: Text('F',style: TextStyle(color: Colors.white,fontSize: 40),)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Sevencontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Addon',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Positioned(
                        left: -5,
                        top: -3,
                        child: Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                              color: const Color(0xff41C3A9),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Positioned(
                        right: -5,
                        bottom: -3,
                        child: Container(
                          height: 14,
                          width: 14,
                          decoration: BoxDecoration(
                              color: const Color(0xff41C3A9),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(65)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Positioned(
                        left: -10,
                        top: -4,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xffEFF2F7),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Image(image: AssetImage('assets/check.png')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(65)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Positioned(
                        right: -10,
                        bottom: -4,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xffEFF2F7),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Image(image: AssetImage('assets/star.png')),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Positioned(
                        left: -10,
                        top: -5,
                        child: Container(
                          height: 23,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(child: Text('9+',style: TextStyle(color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Positioned(
                        right: -10,
                        bottom: -5,
                        child: Container(
                          height: 23,
                          width: 35,
                          decoration: BoxDecoration(
                              color: const Color(0xff41C3A9),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(child: Text('9+',style: TextStyle(color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Eightcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Addon',style: TextStyle(fontSize: 18,color: notifire.textcolore,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 48,
                        width: 48,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(65)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: const Color(0xff74788D),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: const Color(0xff41C3A9),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(65)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 55),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xff74788D),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: const Color(0xff41C3A9),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 85,
                        width: 85,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(65)
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                              color: const Color(0xff74788D),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                              color: const Color(0xff41C3A9),
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 210),
                        child: Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.white,width: 2),
                              borderRadius: BorderRadius.circular(65)
                          ),
                          child: const Center(child: Image(image: AssetImage('assets/user.png'),color: Colors.white,)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

//--------------------COMMON CODE--------------------

  Widget common1({String? img,required Color clore,Color? clre}){
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: clore,
        borderRadius: BorderRadius.circular(10),
      ),
      child:  Center(child: Image(image: AssetImage(img!),color: clre,height: 25,width: 25,)),
    );
  }




}

