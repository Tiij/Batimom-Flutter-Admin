

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../Provider/colore_provider.dart';

class Comming_soon extends StatefulWidget {
  const Comming_soon({super.key});

  @override
  State<Comming_soon> createState() => _Comming_soonState();
}

class _Comming_soonState extends State<Comming_soon> {
  ColorNotifire notifire = ColorNotifire();
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                mainrow(),
                const Spacer(),
                timr(constraints.maxWidth),
                const Spacer(),
              ],
            );
          } else if (constraints.maxWidth < 1000) {
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
                timr(constraints.maxWidth),
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
                timr(constraints.maxWidth),
                const Spacer(),
              ],
            );
          }
        },
      ),
    );
  }


  Widget mainrow(){
    return Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Comming Soon',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child: Row(
                    children: [
                      const SizedBox(width: 0,),
                      Image(image: const AssetImage('assets/hourglass.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 0,),
                      Text('Comming Soon',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget timr(double size){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WE ARE COMING SOON',style: TextStyle(color: notifire.textcolore,fontSize: 30,),),
          const SizedBox(height: 20,),
          size<700?
          SlideCountdown(
            // padding: const EdgeInsets.only(left: 40,right: 40),
            separatorStyle: const TextStyle(fontSize: 20,color: Color(0xff5285FF)),
            // separatorPadding: const EdgeInsets.all(40),
            duration: const Duration(days: 3),
            decoration: BoxDecoration(
                color: notifire.tercotain,
                borderRadius: BorderRadius.circular(20)
            ),
            textStyle: const TextStyle(
              color: Color(0xff5285FF),
              fontSize: 50,
            ),
          ):
          SlideCountdown(
            padding: const EdgeInsets.only(left: 40,right: 40),
            separatorStyle: const TextStyle(fontSize: 20,color: Color(0xff5285FF)),
            separatorPadding: const EdgeInsets.all(40),
              duration: const Duration(days: 3),
            decoration: BoxDecoration(
              color: notifire.tercotain,
              borderRadius: BorderRadius.circular(20)
            ),
            textStyle: const TextStyle(
              color: Color(0xff5285FF),
              fontSize: 50,
            ),
          ),
          const SizedBox(height: 20,),
          Text('Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum reiciendis cupiditate ',style: TextStyle(color: notifire.textcolore,fontSize: 10),),
          Text('repellendus odit quas enim? Eius error eos veritatis magni quia eum repellat vitae nul',style: TextStyle(color: notifire.textcolore,fontSize: 10),),
          Text('iosam esse praesentium dolore commodi cupiditate exercitationem ',style: TextStyle(color: notifire.textcolore,fontSize: 10),),
        ],
      ),
    );
  }

}
