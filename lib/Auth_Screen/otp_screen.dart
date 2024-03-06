

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/Auth_Screen/sign_up_screen.dart';

import '../Provider/colore_provider.dart';

class OTP_Screen extends StatefulWidget {
  const OTP_Screen({super.key});

  @override
  State<OTP_Screen> createState() => _OTP_ScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _OTP_ScreenState extends State<OTP_Screen> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return  Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: notifire.bgcolore,
                  child: notifire.getIsDark? const SizedBox(): const Image(image: AssetImage('assets/containimage.png'),fit: BoxFit.fill,)
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 600) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        mainrow(),
                        const Spacer(),
                        loginconatin(),
                        const Spacer(),
                      ],
                    );
                  } else if (constraints.maxWidth < 1000) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(child: mainrow()),
                          ],
                        ),
                        const Spacer(),
                        loginconatin(),
                        const Spacer(),
                      ],
                    );
                  } else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(child: mainrow()),
                          ],
                        ),
                        const Spacer(),
                        loginconatin(),
                        const Spacer(),
                      ],
                    );
                  }
                },
              )
            ],
          );

        },

      ),
    );
  }

  OtpFieldController otpController = OtpFieldController();
  Widget loginconatin(){
    return Column(
      children: [
        SizedBox(height: Get.height*0.2),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 0),
          child: Container(
              height: 350,
              width: 500,
              decoration: BoxDecoration(
                  color: notifire.containcolore1,
                  // border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(10)
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
                    const SizedBox(height: 20,),
                    Center(
                      child: OTPTextField(
                          otpFieldStyle: OtpFieldStyle(
                              enabledBorderColor: Colors.grey.withOpacity(0.4)
                          ),
                          controller: otpController,
                          length: 5,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 45,
                          fieldStyle: FieldStyle.box,
                          outlineBorderRadius: 5,
                          contentPadding: const EdgeInsets.all(15),
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
                                  borderRadius: BorderRadius.circular(30),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const Auth_Screen(),));
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
        SizedBox(height: Get.height*0.2),
      ],
    );
  }

}






Widget mainrow() {
  return Row(
    children: [
      Expanded(
        child: SizedBox(
          // color: Colors.red,
            height: 50,
            child: Row(
              children: [
                const SizedBox(width: 10,),
                InkWell(
                    onTap: () {
                      inboxController.setTextIsTrue(0);
                      Get.back();
                    },
                    child: const Image(image: AssetImage('assets/Symbol.png'))),
                const SizedBox(width: 5,),
                InkWell(
                    onTap: () {
                      inboxController.setTextIsTrue(0);
                      Get.back();
                    },
                    child: Text('Firework', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis)),

              ],
            )
        ),
      ),
    ],
  );
}