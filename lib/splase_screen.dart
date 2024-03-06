// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/common_screen/drawer_screen1.dart';

import 'Provider/colore_provider.dart';

class Splase_Screen extends StatefulWidget {
  const Splase_Screen({super.key});

  @override
  State<Splase_Screen> createState() => _Splase_ScreenState();
}

class _Splase_ScreenState extends State<Splase_Screen> {
  @override
  void initState() {

    super.initState();

    Future.delayed(const Duration(seconds: 3),() {
      Get.offAll(const screen1());
    },);
  }

  ColorNotifire notifire = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return   const Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 20,),
                 SizedBox(
                     height: 30,
                     width: 30,
                     child: Image(image: AssetImage('assets/Symbol123.png'),fit: BoxFit.fill,)),
                 SizedBox(width: 10,),
                Text('Firework', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 30,color: Colors.black, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ],
            ),
          ],
        ),
      ),
    );
  }
}