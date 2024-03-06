

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/Auth_Screen/sign_up_screen.dart';

import '../Provider/colore_provider.dart';

class Otp_Screen_2 extends StatefulWidget {
  const Otp_Screen_2({super.key});

  @override
  State<Otp_Screen_2> createState() => _Otp_Screen_2State();
}
ColorNotifire notifire = ColorNotifire();
class _Otp_Screen_2State extends State<Otp_Screen_2> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Scaffold(
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
            }
          },
        ),
      ),
    );
  }





  OtpFieldController otpController = OtpFieldController();
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
                          child: Text('Fireworks',style: TextStyle(fontSize: 20,color: notifire.textcolore),)),
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
                              Text('Two-step Authentication',style: TextStyle(fontSize: 25,color: notifire.textcolore),),
                              const SizedBox(height: 10,),
                              Flexible(child: Text('Enter the authentication code below we sent to',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,)),
                              const Flexible(child: Text('+1 123-456-7899',style: TextStyle(color: Colors.blue),overflow: TextOverflow.ellipsis,)),
                              const SizedBox(height: 10,),
                              Center(
                                child: OTPTextField(
                                    otpFieldStyle: OtpFieldStyle(
                                        enabledBorderColor: Colors.grey.withOpacity(0.4)
                                    ),

                                    controller: otpController,
                                    contentPadding: EdgeInsets.all(15),
                                    length: 5,
                                    width: MediaQuery.of(context).size.width,
                                    textFieldAlignment: MainAxisAlignment.spaceAround,
                                    fieldWidth: 45,
                                    fieldStyle: FieldStyle.box,
                                    outlineBorderRadius: 5,
                                    style: TextStyle(fontSize: 17,color: notifire.textcolore),
                                    onChanged: (pin) {
                                    },
                                    onCompleted: (pin) {
                                    }
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Center(child: Text('Resend code',style: TextStyle(color: notifire.textcolore),)),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Center(
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
                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_up_screen(),));
                                            inboxController.setTextIsTrue(0);
                                            Get.back();
                                          },
                                          child: const Text('VERIFY'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  Expanded(
                                    flex: 2,
                                    child: Center(
                                      child: Container(
                                        height: 50,
                                        width: 450,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(backgroundColor: notifire.authbuttoncolore,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child:  Text('CANCEL',style: TextStyle(color: notifire.textcolore)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,),
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
                              Text('Two-step Authentication',style: TextStyle(fontSize: 25,color: notifire.textcolore),),
                              const SizedBox(height: 10,),
                              Flexible(child: Text('Enter the authentication code below we sent to',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,)),
                              const Flexible(child: Text('+1 123-456-7899',style: TextStyle(color: Colors.blue),overflow: TextOverflow.ellipsis,)),
                              const SizedBox(height: 30,),
                              Center(
                                child: OTPTextField(
                                    otpFieldStyle: OtpFieldStyle(
                                        enabledBorderColor: Colors.grey.withOpacity(0.4)
                                    ),

                                    controller: otpController,
                                    contentPadding: EdgeInsets.all(15),
                                    length: 5,
                                    width: MediaQuery.of(context).size.width,
                                    textFieldAlignment: MainAxisAlignment.spaceAround,
                                    fieldWidth: 45,
                                    fieldStyle: FieldStyle.box,
                                    outlineBorderRadius: 5,
                                    style: TextStyle(fontSize: 17,color: notifire.textcolore),
                                    onChanged: (pin) {
                                    },
                                    onCompleted: (pin) {
                                    }
                                ),
                              ),
                              const SizedBox(height: 15,),
                              Center(child: Text('Resend code',style: TextStyle(color: notifire.textcolore),)),
                              const SizedBox(height: 15,),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: Center(
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
                                            // Navigator.push(context, MaterialPageRoute(builder: (context) => const Sign_up_screen(),));
                                            inboxController.setTextIsTrue(0);
                                            Get.back();
                                          },
                                          child: const Text('VERIFY'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10,),
                                  Expanded(
                                    flex: 2,
                                    child: Center(
                                      child: Container(
                                        height: 50,
                                        width: 450,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(backgroundColor: notifire.authbuttoncolore,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child:  Text('CANCEL',style: TextStyle(color: notifire.textcolore)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20,),
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




   // Stack(
   //   children: [
   //     Container(
   //       height: MediaQuery.of(context).size.height,
   //       decoration: BoxDecoration(
   //           image: DecorationImage(image: AssetImage('assets/testimonial_bg 1.jpg'),fit: BoxFit.fill)
   //       ),
   //       child: Row(
   //         mainAxisSize: MainAxisSize.max,
   //         children: [],
   //       ),
   //     ),
   //     Container(
   //       color: Colors.red,
   //         child: Image(image: AssetImage('assets/xcbvhd.png'),width: 500,height: 500,)),
   //   ],
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
                child: Container(margin: const EdgeInsets.all(12), child: Image.asset("assets/xcbvhd.png",height: 500,width: 500,))),

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