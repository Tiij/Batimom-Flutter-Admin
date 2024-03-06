// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Select_Screen extends StatefulWidget {
  const Select_Screen({super.key});

  @override
  State<Select_Screen> createState() => _Select_ScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _Select_ScreenState extends State<Select_Screen> {
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
              children: [
                mainrow(),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    // height: 1500,
                      decoration:  BoxDecoration(
                          color: notifire.containcolore1,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 20,),
                          dropdownbuton(),
                          const SizedBox(height: 20,),
                          dropdownbuton(stle: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 20,),
                          dropdownbuton(),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Flexible(
                                flex: 3,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                    ),
                                    child: Center(child: Text('Options',style: TextStyle(color: notifire.textcolore,fontSize: 15),)),
                                  ),
                                ),
                              ),
                              Expanded(flex: 9,child: dropdownbuton1()),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Flexible(flex: 4,child: dropdownbuton2()),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 10),
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,side: const BorderSide(color: Colors.black),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))),
                                      onPressed: (){},
                                      child: const Text('Button',style: TextStyle(color: Colors.black),)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),
                        ],
                      )
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding:  const EdgeInsets.only(left: 20,right: 20),
                      child: Text('Switch',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                    )),
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
                              Flexible(flex: 4,child: swich()),
                              Flexible(flex: 4,child: swich1()),
                            ],
                          ),
                        ],
                      )
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
                          dropdownbuton(),
                          const SizedBox(height: 20,),
                          dropdownbuton(stle: const TextStyle(fontSize: 20)),
                          const SizedBox(height: 20,),
                          dropdownbuton(),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10,left: 10),
                                  child: Container(
                                    height: 50,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                    ),
                                    child: Center(child: Text('Options',style: TextStyle(color: notifire.textcolore,fontSize: 15),)),
                                  ),
                                ),
                              ),
                              Expanded(flex: 9,child: dropdownbuton1()),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              Flexible(flex: 4,child: dropdownbuton2()),
                              Padding(
                                padding: const EdgeInsets.only(top: 10,right: 10),
                                child: SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: Colors.white,side: const BorderSide(color: Colors.black),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))),
                                      onPressed: (){},
                                      child: const Text('Button',style: TextStyle(color: Colors.black),)),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20,),

                        ],
                      )
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Text('Switch',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                    )),
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
                              Flexible(flex: 4,child: swich()),
                              Flexible(flex: 4,child: swich1()),
                            ],
                          ),
                        ],
                      )
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
                        dropdownbuton(),
                        const SizedBox(height: 20,),
                        dropdownbuton(stle: const TextStyle(fontSize: 20)),
                        const SizedBox(height: 20,),
                        dropdownbuton(),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10,left: 10),
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey.withOpacity(0.4)),
                                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                                  ),
                                  child: Center(child: Text('Options',style: TextStyle(color: notifire.textcolore,fontSize: 15),)),
                                ),
                              ),
                            ),
                            Expanded(flex: 9,child: dropdownbuton1()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: dropdownbuton2()),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10),
                              child: SizedBox(
                                height: 50,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white,side: const BorderSide(color: Colors.black),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))),
                                    onPressed: (){},
                                    child: const Text('Button',style: TextStyle(color: Colors.black),)),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    )
                  ),
                ),
                const SizedBox(height: 40,),
                Row(
                  children: [
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Text('Switch',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                    )),
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
                              Flexible(flex: 4,child: swich()),
                              Flexible(flex: 4,child: swich1()),
                            ],
                          ),
                        ],
                      )
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
      },
      ),
    );
  }


  String? selectedOption;
  List<String> dropdownOptions = [
    "Selects Menu 1",
    "Selects Menu 2",
    "Selects Menu 3"
  ];
  Widget dropdownbuton({ TextStyle? stle}){
    return Padding(
      padding:  const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius:  const BorderRadius.all(Radius.circular(10)),
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: notifire.containcolore1,
              value: selectedOption,
              padding:  const EdgeInsets.only(left: 10,right: 10),
              items: dropdownOptions.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option,style: TextStyle(color: notifire.textcolore)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
              decoration: InputDecoration(
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
    "Selects Menu 3"
  ];
  Widget dropdownbuton1({ TextStyle? stle}){
    return Padding(
      padding: const EdgeInsets.only(left: 0,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.4)),
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: DropdownButtonFormField<String>(
                dropdownColor: notifire.containcolore1,
                value: selectedOption1,
                padding: const EdgeInsets.only(left: 10,right: 10),
                items: dropdownOptions1.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option,style: TextStyle(color: notifire.textcolore)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedOption1 = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 17),
                  hintText: 'Open this select menu',hintStyle: TextStyle(color: notifire.textcolore),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  String? selectedOption2;
  List<String> dropdownOptions2 = [
    "Selects Menu 1",
    "Selects Menu 2",
    "Selects Menu 3"
  ];
  Widget dropdownbuton2({ TextStyle? stle}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.4)),
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: DropdownButtonFormField<String>(
                dropdownColor: notifire.containcolore1,
                value: selectedOption2,
                padding: const EdgeInsets.only(left: 10,right: 10),
                items: dropdownOptions2.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option,style: TextStyle(color: notifire.textcolore)),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedOption2 = newValue;
                  });
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 17),
                  hintText: 'Open this select menu',hintStyle: TextStyle(color: notifire.textcolore),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg']
    );
    if (file != null) {
      setState(() {
      });
    }
  }

  Widget Fileselect(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Defulte File Input'),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              selectFile();
            },
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4),width: 1),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      selectFile();
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          border: Border.all(color: Colors.grey.withOpacity(0.4),width: 1)
                      ),
                      child: const Center(child: Text('Choose File')),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  const Text('No File Chosen')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool light = true;
  Widget swich(){
    return Padding(
      padding: const EdgeInsets.only(left:15,bottom: 22),
      child: Row(
        children: [
          Switch(
            // This bool value toggles the switch.
            value: light,
            activeColor: Colors.blue,
            onChanged: (bool value) {
              // This is called when the user toggles the switch.
              setState(() {
                light = value;
              });
            },
          ),
          const SizedBox(width: 10,),
          Flexible(child: Text('Toggle this switch element',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),)),
        ],
      ),
    );
  }

  bool light1 = false;
  Widget swich1(){
    return Padding(
      padding: const EdgeInsets.only(left:15,bottom: 22),
      child: Row(
        children: [
          Switch(
            // This bool value toggles the switch.
            value: false,
            activeColor: Colors.red,
            onChanged: (bool value) {
              // This is called when the user toggles the switch.
              setState(() {
                light1 = value;
              });
            },
          ),
          const SizedBox(width: 10,),
          Flexible(child: Text('Disabled this switch element',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),)),
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
                      Image(image: const AssetImage('assets/toggle-on-alt.png'),color: notifire.textcolore),
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


}



