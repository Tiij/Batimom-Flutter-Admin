// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Vertical_Horizontal extends StatefulWidget {
  const Vertical_Horizontal({super.key});

  @override
  State<Vertical_Horizontal> createState() => _Vertical_HorizontalState();
}
ColorNotifire notifire = ColorNotifire();
class _Vertical_HorizontalState extends State<Vertical_Horizontal> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return  Container(
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
                        txtfilled(txt1: 'Email',txt2: 'Email address'),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Password',txt2: 'Password',obscur: true),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              chekbox(),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text('Check me out!',style: TextStyle(color: notifire.textcolore)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Submit'),
                          ),
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child:  Text('Horizontal',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
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
                      children: [
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Email',txt2: 'Email'),
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Password',txt2: 'Password'),
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Re Password',txt2: 'Retype Password'),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Expanded(flex: 1,child: SizedBox(),),
                            Expanded(
                              flex: 8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  chekbox1(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check me out!',style: TextStyle(color: notifire.textcolore)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Expanded(flex: 1,child: SizedBox(),),
                            Expanded(
                              flex: 8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Sign in'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
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
                        txtfilled(txt1: 'Email',txt2: 'Email address'),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Password',txt2: 'Password',obscur: true),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              chekbox(),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text('Check me out!',style: TextStyle(color: notifire.textcolore)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Submit'),
                          ),
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child:  Text('Horizontal',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
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
                      children: [
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Email',txt2: 'Email'),
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Password',txt2: 'Password'),
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Re Password',txt2: 'Retype Password'),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Expanded(flex: 1,child: SizedBox(),),
                            Expanded(
                              flex: 8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  chekbox1(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check me out!',style: TextStyle(color: notifire.textcolore)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Expanded(flex: 1,child: SizedBox(),),
                            Expanded(
                              flex: 8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Sign in'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
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
                        txtfilled(txt1: 'Email',txt2: 'Email address'),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Password',txt2: 'Password',obscur: true),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              chekbox(),
                               Padding(
                                 padding: const EdgeInsets.only(left: 15),
                                 child: Text('Check me out!',style: TextStyle(color: notifire.textcolore)),
                               ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text('Submit'),
                          ),
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 20),
                  child:  Text('Horizontal',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
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
                      children: [
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Email',txt2: 'Email'),
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Password',txt2: 'Password'),
                        const SizedBox(height: 20,),
                        txtfilled2(txt1: 'Re Password',txt2: 'Retype Password'),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Expanded(flex: 1,child: SizedBox(),),
                            Expanded(
                              flex: 8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  chekbox1(),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check me out!',style: TextStyle(color: notifire.textcolore)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const Expanded(flex: 1,child: SizedBox(),),
                            Expanded(
                              flex: 8,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Sign in'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },),
    );
  }


  bool isChecked = false;
  Widget chekbox(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      checkColor: Colors.white,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }

  bool isChecked1 = false;
  Widget chekbox1(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      checkColor: Colors.white,
      value: isChecked1,
      onChanged: (bool? value) {
        setState(() {
          isChecked1 = value!;
        });
      },
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
                  width: 143,
                  child: Row(
                    children: [
                      const SizedBox(width: 45,),
                      Image(image: const AssetImage('assets/arrows-move.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Vertical',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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



  Widget txtfilled2({required String txt1,String? txt2, bool? obscur,IconData? sufixicon}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Row(
        children: [
          SizedBox(
              width: 130,
              child: Text(txt1,style: TextStyle(color: notifire.textcolore))),
          Expanded(
            flex:6 ,
            child: SizedBox(
              height: 53,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??false,
                decoration: InputDecoration(
                    suffixIcon: Icon(sufixicon),
                    hintText: txt2,hintStyle: TextStyle(color: notifire.textcolore),
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


