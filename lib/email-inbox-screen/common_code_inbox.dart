
import 'package:flutter/material.dart';



Widget commonsecoundetcontain({required String txt,required String img,required Color clore,required Color txt1color,required Color txt2color}){
  return  Container(
    height: 40,
    width: 280,
    decoration: BoxDecoration(
        color: clore,
        borderRadius: BorderRadius.circular(5)
    ),
    child: Row(
      children: [
        const SizedBox(width: 15,),
        Image(image: AssetImage(img),height: 15,width: 15,color: txt1color),
        const SizedBox(width: 20,),
        Text(txt,style: TextStyle(fontSize: 15,color: txt2color)),
      ],
    ),
  );
}

Widget commonsecoundetcontain1({required String txt,required String img,required Color imgclore,required Color txt1color}){
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 15,top: 10),
        child: Row(
          children: [
            Image(image: AssetImage(img),color: imgclore),
            const SizedBox(width: 5,),
            Text(txt,style: TextStyle(color: txt1color))
          ],
        ),
      )
    ],
  );
}





