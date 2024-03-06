

// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Error_Screen_2 extends StatefulWidget {
  const Error_Screen_2({super.key});

  @override
  State<Error_Screen_2> createState() => _Error_Screen_2State();
}

class _Error_Screen_2State extends State<Error_Screen_2> {
  ColorNotifire notifire = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      child: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth<600){
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              mainrow(),
              const SizedBox(height: 20,),
              const Spacer(),
              centercontain(),
              const Spacer(),
            ],
          );
        }
        else if(constraints.maxWidth<1000){
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(child: mainrow()),
                ],
              ),
              const SizedBox(height: 20,),
              const Spacer(),
              centercontain(),
              const Spacer(),
            ],);
        }
        else{
          return  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(child: mainrow()),
                ],
              ),
              const SizedBox(height: 20,),
              const Spacer(),
              centercontain(),
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
                child: Text('Error',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child: Row(
                    children: [
                      const SizedBox(width: 70,),
                      Image(image: const AssetImage('assets/triangle-exclamation123.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Error',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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


  Widget centercontain(){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/undraw_questions_75e0.png')),
          const SizedBox(height: 10,),
          Text('505-Page not found',style: TextStyle(fontSize: 30,color: notifire.textcolore),),
          const SizedBox(height: 10,),
          Text('The page you`re looking for isn`t available.Try to search again',style: TextStyle(color: notifire.textcolore),),
          Text('or use the go back button below.',style: TextStyle(color: notifire.textcolore),),
          const SizedBox(height: 10,),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff5E81F4),fixedSize: const Size(140, 35)),
            child:  const Text('Go back home'),
          ),
        ],
      ),
    );
  }



}
