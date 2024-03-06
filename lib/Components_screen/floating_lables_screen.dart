// ignore_for_file: non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Floating_Lables extends StatefulWidget {
  const Floating_Lables({super.key});

  @override
  State<Floating_Lables> createState() => _Floating_LablesState();
}
ColorNotifire notifire = ColorNotifire();
class _Floating_LablesState extends State<Floating_Lables> {
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
            // physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                mainrow(),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Example',txt2: 'Email address'),
                        const SizedBox(height: 20,),
                        dropdownbuton(),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Password',txt2: 'Password',obscur: true),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Layout',txt2: 'Password'),
                        const SizedBox(height: 20,),
                        dropdownbuton1(size: constraints.maxWidth),
                        const SizedBox(height: 20,),
                        Coomentcontain(),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                const SizedBox(height: 200,),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       ElevatedButton(
                //         style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                //         onPressed: () {},
                //         child: const Text('Cancle',style: TextStyle(color: Colors.white)),
                //       ),
                //       SizedBox(width: 20,),
                //       ElevatedButton(
                //         onPressed: () {},
                //         child: const Text('Submit'),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          );
        }
        else if(constraints.maxWidth<1000){
          return  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Example',txt2: 'Email address')),
                            Flexible(flex: 4,child: dropdownbuton()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Password',txt2: 'Password',obscur: true)),
                            Flexible(flex: 2,child: txtfilled(txt1: 'Layout',txt2: 'Password')),
                            Flexible(flex: 2,child: dropdownbuton1(size: constraints.maxWidth)),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: Coomentcontain()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       ElevatedButton(
                //         style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                //         onPressed: () {},
                //         child: const Text('Cancle',style: TextStyle(color: Colors.white)),
                //       ),
                //       SizedBox(width: 20,),
                //       ElevatedButton(
                //         onPressed: () {},
                //         child: const Text('Submit'),
                //       ),
                //     ],
                //   ),
                // ),
              ],),
          );
        }
        else{
          return  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Example',txt2: 'Email address')),
                            Flexible(flex: 4,child: dropdownbuton()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Password',txt2: 'Password',obscur: true)),
                            Flexible(flex: 2,child: txtfilled(txt1: 'Layout',txt2: 'Password')),
                            Flexible(flex: 2,child: dropdownbuton1(size: constraints.maxWidth)),
                          ],
                        ),
                       const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: Coomentcontain()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [
                //       ElevatedButton(
                //         style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                //         onPressed: () {},
                //         child: const Text('Cancle',style: TextStyle(color: Colors.white)),
                //       ),
                //       SizedBox(width: 20,),
                //       ElevatedButton(
                //         onPressed: () {},
                //         child: const Text('Submit'),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          );
        }
      },),
    );
  }

  String? selectedOption;
  List<String> dropdownOptions = [
    "Selects Menu 1",
    "Selects Menu 2",
    "Selects Menu 3"
  ];
  Widget dropdownbuton(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Selects",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: notifire.containcolore1,
              icon: Transform.translate(
                  offset: Offset(0, -8),
                  child: Icon(Icons.arrow_drop_down)),
              style: TextStyle(color: notifire.textcolore),
              value: selectedOption,
              padding: const EdgeInsets.only(left: 10),
              items: dropdownOptions.map((String option){
                return DropdownMenuItem<String>(

                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
              decoration:   InputDecoration(
                labelText: 'Worker With selects',labelStyle: TextStyle(color: notifire.textcolore),
                hintText: 'Open this select menu',hintStyle: TextStyle(color: notifire.textcolore),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
  String? selectedOption1;
  List<String> dropdownOptions1 = [
    "Selects Menu 1",
    "Selects Menu 2",
    "Selects Menu 3",
  ];
  Widget dropdownbuton1({required double size}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Selects",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: DropdownButtonFormField<String>(
              icon: Transform.translate(
                  offset: Offset(0, -8),
                  child: Icon(Icons.arrow_drop_down)),
              dropdownColor: notifire.containcolore1,
              value: selectedOption1,
              padding: const EdgeInsets.only(left: 10),
              items: dropdownOptions1.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption1 = newValue;
                });
              },
              decoration: InputDecoration(
                labelText: 'Worker With selects',labelStyle: TextStyle(color: notifire.textcolore,overflow: TextOverflow.ellipsis),
                hintText: 'Open this select menu',hintStyle: TextStyle(overflow: TextOverflow.ellipsis,color: notifire.textcolore),
                border: InputBorder.none,
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
                  width: 162,
                  child: Row(
                    children: [
                      const SizedBox(width: 0,),
                      Image(image: const AssetImage('assets/hard-drive.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Floating-Lables',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??false,
                decoration: InputDecoration(
                    suffixIcon: Icon(sufixicon,color: notifire.textcolore,),
                    // hintText: txt2,
                    labelText: txt2,labelStyle: TextStyle(color: notifire.textcolore),
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Coomentcontain() {
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Text('Textareas',style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 0),
            child:  TextField(
              obscureText: true,
              style: TextStyle(color: notifire.textcolore),
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 35,horizontal: 10),
                  labelText: 'Comment',labelStyle: TextStyle(color: notifire.textcolore),
                  focusColor: Colors.red,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
              ),
            ),
          ),
        ],
      ),
    );
  }




}






