

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/Auth_Screen/otp_screen_2.dart';
import 'package:web_project1/Auth_Screen/sign_up_screen.dart';

import '../Provider/colore_provider.dart';

class Forgot_Screen_2 extends StatefulWidget {
  const Forgot_Screen_2({super.key});

  @override
  State<Forgot_Screen_2> createState() => _Forgot_Screen_2State();
}
ColorNotifire notifire = ColorNotifire();
class _Forgot_Screen_2State extends State<Forgot_Screen_2> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return  Scaffold(
      body: Container(
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
                    // mainrow(),
                    maintwocontain(size: constraints.maxWidth),
                    // const SizedBox(height: 30,),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1000) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Row(
                    //   children: [
                    //     Expanded(child: mainrow()),
                    //   ],
                    // ),
                    maintwocontain(size: constraints.maxWidth),
                    // const SizedBox(height: 30,),
                  ],
                ),
              );
            } else {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Row(
                  //   children: [
                  //     Expanded(child: mainrow()),
                  //   ],
                  // ),
                  maintwocontain(size: constraints.maxWidth),
                  // const SizedBox(height: 30,),
                ],
              );
            }
          },
        ),
      ),
    );
  }





  var result;
  Widget maintwocontain({required double size}){
    return size<800?
    Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: notifire.containcolore1,
            child:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: InkWell(
                            onTap: () {
                              inboxController.setTextIsTrue(0);
                              Get.back();
                            },
                            child: const Image(image: AssetImage('assets/Symbol.png'))),
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                          onTap: () {
                            inboxController.setTextIsTrue(0);
                            Get.back();
                          },
                          child: Text('Fireworks',style: TextStyle(fontSize: 20,color: notifire.textcolore),))
                    ],
                  ),
                ),
                const Spacer(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 0),
                    child: Container(
                        height: 350,
                        width: 500,
                        decoration: BoxDecoration(
                          color: notifire.containcolore1,
                          border: Border.all(color: notifire.containcolore1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Forgot Password?',style: TextStyle(fontSize: 25,color: notifire.textcolore),),
                              const SizedBox(height: 10,),
                              Flexible(child: Text('No worries, we`ll sned you reset instructions',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,)),
                              const SizedBox(height: 30,),
                              TextField(
                                style: TextStyle(color: notifire.textcolore),
                                decoration: InputDecoration(
                                  //contentPadding: const EdgeInsets.only(left: 20,right: 20),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                  hintText: 'Email ID',hintStyle: TextStyle(color: Colors.grey),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image(image: const AssetImage('assets/envelope.png'),color: notifire.textcolore),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30,),
                              const SizedBox(height: 20,),
                              // Container(
                              //   height: 50,
                              //   width: Get.width,
                              //   decoration: BoxDecoration(
                              //       color: Color(0xff267DFF),
                              //       borderRadius: BorderRadius.circular(30)
                              //   ),
                              //   child: Center(child: Text('RESET PASSWORD',style: TextStyle(color: notifire.textcolore)),),
                              // ),
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 450,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Otp_Screen_2(),));
                                    },
                                    child: const Text('RESET PASSWORD'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),




        // Expanded(child: _buildui()),


        // Expanded(
        //   child: Container(
        //     height: MediaQuery.of(context).size.height,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(image: AssetImage('assets/testimonial_bg 1.jpg'),fit: BoxFit.fill)
        //     ),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Expanded(
        //           child: Container(
        //               height: MediaQuery.of(context).size.height,
        //               child: Padding(
        //                 padding: const EdgeInsets.all(40),
        //                 child: Image(image: AssetImage('assets/oudfhcbdshj.png'),fit: BoxFit.fill,),
        //               )),
        //         ),
        //         SizedBox(height: 10,),
        //         // Padding(
        //         //   padding: const EdgeInsets.only(bottom: 20),
        //         //   child: Container(
        //         //     height: 100,
        //         //     width: 500,
        //         //     child: const Column(
        //         //       mainAxisAlignment: MainAxisAlignment.start,
        //         //       crossAxisAlignment: CrossAxisAlignment.start,
        //         //       children: [
        //         //         Text('CONTRARY TO POPULAR BELIEF',style: TextStyle(fontSize: 10,color: Colors.black),),
        //         //         SizedBox(height: 10,),
        //         //         Flexible(child: Text('It is a long estabilyer fact that a new populare imagination in the  the readbale in populare It is a long estabilyer fact that a new populare',style: TextStyle(fontSize: 15,color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 3,)),
        //         //       ],
        //         //     ),
        //         //   ),
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    ):
    Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: notifire.containcolore1,
            child:  Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: InkWell(
                            onTap: () {
                              inboxController.setTextIsTrue(0);
                              Get.back();
                            },
                            child: const Image(image: AssetImage('assets/Symbol.png'))),
                      ),
                      const SizedBox(width: 10,),
                      InkWell(
                          onTap: () {
                            inboxController.setTextIsTrue(0);
                            Get.back();
                          },
                          child: Text('Fireworks',style: TextStyle(fontSize: 20,color: notifire.textcolore),))
                    ],
                  ),
                ),
                const Spacer(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10,top: 0),
                    child: Container(
                        height: 350,
                        width: 500,
                        decoration: BoxDecoration(
                          color: notifire.containcolore1,
                          border: Border.all(color: notifire.containcolore1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Forgot Password?',style: TextStyle(fontSize: 25,color: notifire.textcolore),),
                              const SizedBox(height: 10,),
                              Flexible(child: Text('No worries, we`ll sned you reset instructions',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,)),
                              const SizedBox(height: 30,),
                               TextField(
                                 style: TextStyle(color: notifire.textcolore),
                                decoration: InputDecoration(
                                  //contentPadding: const EdgeInsets.only(left: 20,right: 20),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                  hintText: 'Email ID',hintStyle: TextStyle(color: Colors.grey),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Image(image: const AssetImage('assets/envelope.png'),color: notifire.textcolore),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30,),
                              const SizedBox(height: 20,),
                              // Container(
                              //   height: 50,
                              //   width: Get.width,
                              //   decoration: BoxDecoration(
                              //       color: Color(0xff267DFF),
                              //       borderRadius: BorderRadius.circular(30)
                              //   ),
                              //   child: Center(child: Text('RESET PASSWORD',style: TextStyle(color: notifire.textcolore)),),
                              // ),
                              Center(
                                child: Container(
                                  height: 50,
                                  width: 450,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => const Otp_Screen_2(),));
                                    },
                                    child: const Text('RESET PASSWORD'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),




        Expanded(child: _buildui()),


        // Expanded(
        //   child: Container(
        //     height: MediaQuery.of(context).size.height,
        //     decoration: BoxDecoration(
        //       image: DecorationImage(image: AssetImage('assets/testimonial_bg 1.jpg'),fit: BoxFit.fill)
        //     ),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Expanded(
        //           child: Container(
        //               height: MediaQuery.of(context).size.height,
        //               child: Padding(
        //                 padding: const EdgeInsets.all(40),
        //                 child: Image(image: AssetImage('assets/oudfhcbdshj.png'),fit: BoxFit.fill,),
        //               )),
        //         ),
        //         SizedBox(height: 10,),
        //         // Padding(
        //         //   padding: const EdgeInsets.only(bottom: 20),
        //         //   child: Container(
        //         //     height: 100,
        //         //     width: 500,
        //         //     child: const Column(
        //         //       mainAxisAlignment: MainAxisAlignment.start,
        //         //       crossAxisAlignment: CrossAxisAlignment.start,
        //         //       children: [
        //         //         Text('CONTRARY TO POPULAR BELIEF',style: TextStyle(fontSize: 10,color: Colors.black),),
        //         //         SizedBox(height: 10,),
        //         //         Flexible(child: Text('It is a long estabilyer fact that a new populare imagination in the  the readbale in populare It is a long estabilyer fact that a new populare',style: TextStyle(fontSize: 15,color: Colors.black),overflow: TextOverflow.ellipsis,maxLines: 3,)),
        //         //       ],
        //         //     ),
        //         //   ),
        //         // ),
        //       ],
        //     ),
        //   ),
        // ),
      ],
    );
  }




  Widget _buildui(){
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: Get.height,
              // color: Colors.deepPurple,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/testimonial_bg 1.jpg'),fit: BoxFit.fill)
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                right: 20,
                left: 20,
                bottom: 20,
                top: 20,
                child: Container(margin: const EdgeInsets.all(12), child: Image.asset("assets/oudfhcbdshj.png",height: 500,width: 500,))),

          ],
        ),
      ],
    );
  }
}

Widget mainrow() {
  return  Row(
    children: [
      Expanded(
        child: SizedBox(
          // color: Colors.red,
          height: 50,
          child: ListTile(
            title: Transform.translate(offset: const Offset(-20, 0),child: const Text('Firework', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis)),
            leading:  const Image(image: AssetImage('assets/Symbol.png')),
          ),
        ),
      ),
    ],
  );
}
