
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Inline_Form extends StatefulWidget {
  const Inline_Form({super.key});

  @override
  State<Inline_Form> createState() => _Inline_FormState();
}
ColorNotifire notifire = ColorNotifire();
class _Inline_FormState extends State<Inline_Form> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      child: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth<600){
          return  SingleChildScrollView(
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
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                        Firstrow(),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 10),
                          child: Text('Auto Sizinge',style: TextStyle(color: notifire.textcolore)),
                        ),
                        const SizedBox(height: 20,),
                        Firstrow1(size: constraints.maxWidth),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                 Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Horizontal form lable sizing',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Firstrow2(),
                        const SizedBox(height: 20,),
                        Firstrow3(),
                        const SizedBox(height: 20,),
                        Firstrow4(),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                 Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Form Row',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Email',txt2: 'Email')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'Password',txt2: 'Password')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address 2',txt2: '1234 Main St')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address 2',txt2: 'Apartment,studio,or floor')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'City')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'State',txt2: 'Choose')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            chekbox11(),
                            Flexible(child: Text('Check this custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),))
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff3E60D5)),
                                child: const Text('Sign In'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
              ],
            ),
          );
        }
        else if(constraints.maxWidth<1000){
          return   SingleChildScrollView(
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
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                        Firstrow(),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 10),
                          child: Text('Auto Sizinge',style: TextStyle(color: notifire.textcolore)),
                        ),
                        const SizedBox(height: 20,),
                        Firstrow1(size: constraints.maxWidth),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                 Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Horizontal form lable sizing',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Firstrow2(),
                        const SizedBox(height: 20,),
                        Firstrow3(),
                        const SizedBox(height: 20,),
                        Firstrow4(),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                 Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Form Row',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Email',txt2: 'Email')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'Password',txt2: 'Password')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address 2',txt2: '1234 Main St')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address 2',txt2: 'Apartment,studio,or floor')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'City')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'State',txt2: 'Choose')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            chekbox11(),
                            Flexible(child: Text('Check this custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),))
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff3E60D5)),
                                child: const Text('Sign In'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
              ],
            ),
          );
        }
        else{
          return  SingleChildScrollView(
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
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30,),
                        Firstrow(),
                        const SizedBox(height: 20,),
                         Padding(
                          padding: const EdgeInsets.only(left: 20,right: 10),
                          child: Text('Auto Sizinge',style: TextStyle(color: notifire.textcolore)),
                        ),
                        const SizedBox(height: 20,),
                        Firstrow1(size: constraints.maxWidth),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                 Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Horizontal form lable sizing',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Firstrow2(),
                        const SizedBox(height: 20,),
                        Firstrow3(),
                        const SizedBox(height: 20,),
                        Firstrow4(),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                 Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Form Row',overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Email',txt2: 'Email')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'Password',txt2: 'Password')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address 2',txt2: '1234 Main St')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address 2',txt2: 'Apartment,studio,or floor')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'City')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'State',txt2: 'Choose')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15 ),
                              child: chekbox11(),
                            ),
                             Flexible(child: Padding(
                               padding: const EdgeInsets.only(left: 15 ),
                               child: Text('Check this custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),),
                             ))
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff3E60D5)),
                                child: const Text('Sign In'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
              ],
            ),
          );
        }
      },),
    );
  }

  bool isChecked12 = false;

  Widget Firstrow1({bool? obscur,required double size}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          size<700?
          Column  (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10,),
                  Flexible(
                    flex: 5,
                    child: SizedBox(
                      height: 53,
                      // color: Colors.red,
                      child: TextField(
                        style: TextStyle(color: notifire.textcolore),
                        obscureText: obscur??true,
                        decoration: InputDecoration(
                            hintText: 'Password',hintStyle: TextStyle(color: notifire.textcolore),
                            // labelText: txt2,
                            focusColor: Colors.red,
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                            border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Flexible(
                    flex: 8,
                    child: Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 52,
                            width: 70,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                                border: Border.all(color: Colors.grey.withOpacity(0.4))
                            ),
                            child:  Center(child: Text('@',style: TextStyle(fontSize: 30,color: notifire.textcolore),)),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 53,
                            // color: Colors.red,
                            child: TextField(
                              style: TextStyle(color: notifire.textcolore),
                              obscureText: false,
                              decoration: InputDecoration(
                                  hintText: 'Username',hintStyle: TextStyle(color: notifire.textcolore),
                                  focusColor: Colors.red,
                                  enabledBorder: OutlineInputBorder(borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                  border:  const OutlineInputBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),borderSide: BorderSide(color: Colors.red))
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  const SizedBox(width: 20,),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Checkbox(
                        side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(width: 1.0, color: notifire.textcolore),
                        ),
                        activeColor: Colors.deepPurpleAccent,
                        checkColor: Colors.white,
                        value: isChecked12,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked12 = value!;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Flexible(flex: 2,child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text('Remember me',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                  )),
                  const SizedBox(width: 20,),
                  Flexible(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(fixedSize: const Size(100, 50),backgroundColor: const Color(0xff3E60D5)),
                      child:  const Text('Submit',style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ],
          ):
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 10,),
              Flexible(
                flex: 2,
                child: SizedBox(
                  height: 53,
                  // color: Colors.red,
                  child: TextField(
                    style: TextStyle(color: notifire.textcolore),
                    obscureText: obscur??true,
                    decoration: InputDecoration(
                        hintText: 'Password',hintStyle: TextStyle(color: notifire.textcolore),
                        // labelText: txt2,
                        focusColor: Colors.red,
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                        border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20,),
              Flexible(
                flex: 3,
                child: Row(
                  children: [
                    Flexible(
                      child: Container(
                        height: 52,
                        width: 70,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                            border: Border.all(color: Colors.grey.withOpacity(0.4))
                        ),
                        child:  Center(child: Text('@',style: TextStyle(fontSize: 30,color: notifire.textcolore),)),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 53,
                        // color: Colors.red,
                        child: TextField(
                          style: TextStyle(color: notifire.textcolore),
                          obscureText: false,
                          decoration: InputDecoration(
                              hintText: 'Username',hintStyle: TextStyle(color: notifire.textcolore),
                              focusColor: Colors.red,
                              enabledBorder: OutlineInputBorder(borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                              border:  const OutlineInputBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),borderSide: BorderSide(color: Colors.red))
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Checkbox(
                    side: MaterialStateBorderSide.resolveWith(
                          (states) => BorderSide(width: 1.0, color: notifire.textcolore),
                    ),
                    activeColor: Colors.deepPurpleAccent,
                    checkColor: Colors.white,
                    value: isChecked12,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked12 = value!;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(width: 10,),
              Flexible(flex: 2,child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text('Remember me',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
              )),
              const SizedBox(width: 20,),
              Flexible(
                flex: 2,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(fixedSize: const Size(100, 50),backgroundColor: const Color(0xff3E60D5)),
                  child:  const Text('Submit',style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



  bool isChecked11 = false;
  Widget chekbox11(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      activeColor: Colors.pink,
      checkColor: Colors.white,
      value: isChecked11,
      onChanged: (bool? value) {
        setState(() {
          isChecked11 = value!;
        });
      },
    );
  }


  Widget txtfilled({required String txt1,String? txt2, bool? obscur,IconData? sufixicon}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text(txt1,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 53,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??false,
                decoration: InputDecoration(
                    suffixIcon: Icon(sufixicon,color: notifire.textcolore),
                    hintText: txt2,hintStyle: TextStyle(color: notifire.textcolore),
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                ),
              ),
            ),
          ),
        ],
      ),
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
                padding: const EdgeInsets.only(top: 20),
                child: Text('Components',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 125,
                  child: Row(
                    children: [
                      const SizedBox(width: 45,),
                      Image(image: const AssetImage('assets/shuffle.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Inline',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget Firstrow({bool? obscur}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        children: [
          const SizedBox(width: 10,),
           Flexible(flex: 1,child: Text('email@example.com',overflow:  TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),)),
          const SizedBox(width: 20,),
          Flexible(
            flex: 2,
            child: SizedBox(
              height: 53,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??true,
                decoration: InputDecoration(
                    hintText: 'Password',hintStyle: TextStyle(color: notifire.textcolore),
                    // labelText: txt2,
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                ),
              ),
            ),
          ),
          const SizedBox(width: 20,),
          Flexible(
            flex: 2,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(fixedSize: const Size(150, 50),backgroundColor: const Color(0xff3E60D5)),
              child:  const Text('Confirm identity',style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }


  Widget Firstrow2({bool? obscur}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        children: [
          const SizedBox(width: 10,),
           SizedBox(
               width: 100,
               child: Text('Email',overflow:  TextOverflow.ellipsis,style: TextStyle(fontSize: 15,color: notifire.textcolore),)),
          const SizedBox(width: 20,),
          Expanded(
            flex: 8,
            child: SizedBox(
              height: 43,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??true,
                decoration: InputDecoration(
                    hintText: 'Password',hintStyle:  TextStyle(fontSize: 15,color: notifire.textcolore),
                    // labelText: txt2,
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Firstrow3({bool? obscur}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        children: [
          const SizedBox(width: 10,),
           SizedBox(
               width: 100,
               child: Text('Email',overflow:  TextOverflow.ellipsis,style: TextStyle(fontSize: 16,color: notifire.textcolore),)),
          const SizedBox(width: 20,),
          Expanded(
            flex: 6,
            child: SizedBox(
              height: 50,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??true,
                decoration: InputDecoration(
                    hintText: 'Password',hintStyle:  TextStyle(fontSize: 16,color: notifire.textcolore),
                    // labelText: txt2,
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Firstrow4({bool? obscur}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        children: [
          const SizedBox(width: 10,),
           SizedBox(
               width: 100,
               child: Text('Email',overflow:  TextOverflow.ellipsis,style: TextStyle(fontSize: 20,color: notifire.textcolore),)),
          const SizedBox(width: 20,),
          Expanded(
            flex: 6,
            child: SizedBox(
              height: 50,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??true,
                decoration: InputDecoration(
                    hintText: 'Password',hintStyle:  TextStyle(fontSize: 20,color: notifire.textcolore),
                    // labelText: txt2,
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }





}






