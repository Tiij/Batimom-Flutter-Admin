// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/Auth_Screen/forgot_screen.dart';
import 'package:web_project1/Auth_Screen/sign_up_screen.dart';

import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';

class Auth_Screen extends StatefulWidget {
  const Auth_Screen({super.key});

  @override
  State<Auth_Screen> createState() => _Auth_ScreenState();
}
  ColorNotifire notifire = ColorNotifire();
class _Auth_ScreenState extends State<Auth_Screen> {

  InboxController inboxController = Get.put(InboxController());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child:  Stack(
              // alignment: Alignment.center,
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
                          loginconatin(context),
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
                          loginconatin(context),
                          const Spacer(),
                        ],
                      );
                    } else {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(child: mainrow()),
                            ],
                          ),
                         const Spacer(),
                          Center(child: loginconatin(context)),
                          const Spacer(),
                        ],
                      );
                    }
                  },
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}



Widget loginconatin(context){
  return GetBuilder<InboxController>(
    builder: (inboxController) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: Get.height*0.05),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                color: notifire.containcolore1,
                // border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: BorderRadius.circular(10),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Log In',style: TextStyle(fontSize: 25,color: notifire.textcolore),),
                    const SizedBox(height: 10,),
                    Flexible(child: Text('Let`s get started with your 30 days free trail',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,)),
                    const SizedBox(height: 30,),
                    TextField(
                      style: TextStyle(color: notifire.textcolore),
                      decoration: InputDecoration(
                      //  contentPadding: const EdgeInsets.only(left: 20,right: 20),
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
                    TextField(
                      style: TextStyle(color: notifire.textcolore),
                      obscureText: true,
                      decoration: InputDecoration(
                       // contentPadding: const EdgeInsets.only(left: 20,right: 20),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                        hintText: 'Password',hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Image(image: const AssetImage('assets/eye.png'),color: notifire.textcolore),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Center(child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen(),));
                        },
                        child: Text('Forgot Password?',style: TextStyle(color: notifire.textcolore),))),
                    const SizedBox(height: 30,),
                    // Container(
                    //   height: 50,
                    //   width: Get.width,
                    //   decoration: BoxDecoration(
                    //     color: Color(0xff267DFF),
                    //     borderRadius: BorderRadius.circular(30)
                    //   ),
                    //   child: Center(child: Text('Sign In',style: TextStyle(color: notifire.textcolore)),),
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
                            // Navigator.pop(context, MaterialPageRoute(builder: (context) => laout(),));
                            inboxController.setTextIsTrue(0);
                            Navigator.pop(context);
                          },
                          child: const Text('Sign In'),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(child: SizedBox(width: 100,child: Divider(color: Colors.grey.withOpacity(0.4),))),
                        Text('Or Login with',style: TextStyle(color: notifire.textcolore)),
                        Expanded(child: SizedBox(width: 100,child: Divider(color: Colors.grey.withOpacity(0.4),))),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                                // color: Color(0xffF1F2F5),
                                // color: Colors.grey.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: notifire.authbuttoncolore,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),),
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(image: AssetImage('assets/google.png'),height: 20,width: 20,),
                                  const SizedBox(width: 10,),
                                  Text('Google',style: TextStyle(color: notifire.textcolore),),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Expanded(
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                              // color: Color(0xffF1F2F5),
                              // color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(backgroundColor: notifire.authbuttoncolore,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)
                                ),),
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(image: AssetImage('assets/facebook.png'),height: 20,width: 20,),
                                  const SizedBox(width: 10,),
                                  Text('Facebook',style: TextStyle(color: notifire.textcolore),),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ),
          ),
          SizedBox(height: Get.height*0.05),
        ],
      );
    }
  );
}



Widget mainrow() {
  return  Row(
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