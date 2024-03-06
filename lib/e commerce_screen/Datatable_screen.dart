// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';



class DataTable_Screen extends StatefulWidget {
  const DataTable_Screen({Key? key}) : super(key: key);

  @override
  State<DataTable_Screen> createState() => _DataTable_ScreenState();
}

class _DataTable_ScreenState extends State<DataTable_Screen> {

  ColorNotifire notifire = ColorNotifire();


  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      // color: Colors.red,
      child: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth<600){
          return   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                mainrow(),
                const SizedBox(height: 100,),
              ],
            ),
          );
        }
        else if(constraints.maxWidth<1000){
          return   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 20,),
              ],),
          );
        }
        else{
          return   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 20,),
                const SizedBox(height: 20,),
              ],
            ),
          );
        }
      },),
    );
  }




  Widget mainrow(){
    return   Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: Text('Data table',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 130,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Data table',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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



}











