// ignore_for_file: camel_case_types

import 'dart:io';
import 'dart:typed_data';

import 'package:bs_flutter_selectbox/bs_flutter_selectbox.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';


import '../Provider/colore_provider.dart';

class Add_Product_screen_1 extends StatefulWidget {
  const Add_Product_screen_1({Key? key}) : super(key: key);

  @override
  State<Add_Product_screen_1> createState() => _Add_Product_screen_1State();
}

class _Add_Product_screen_1State extends State<Add_Product_screen_1> {

  ColorNotifire notifire = ColorNotifire();
  @override
  void initState() {
    _select20 = BsSelectBoxController(
        multiple: true,
        options: [
          const BsSelectBoxOption(value: 1, text: Text('1',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 2, text: Text('2',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 3, text: Text('3',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 4, text: Text('4',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 5, text: Text('5',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 6, text: Text('6',style: TextStyle(color: Colors.grey),)),
        ]
    );

    super.initState();
  }

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
              children: [
                mainrow(),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                        child: Container(
                          // width: 400,
                          decoration: BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('General',style: TextStyle(color: notifire.textcolore),),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Category Name')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'URL Slug')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: dropdownbuton1()),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Expanded(child: areyacontain()),
                                ],
                              ),
                              const SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: Container(
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Meta Options',style: TextStyle(color: notifire.textcolore),),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Page Title')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: areyacontain()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: apk()),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                  child: Container(
                    // height: Get.height,
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          secoundecontain(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                  child: Container(
                    // height: Get.height,
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Settings',style: TextStyle(color: notifire.textcolore),),
                          ),
                          const SizedBox(height: 15,),
                          lastcontain(),
                          const SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Discussion',style: TextStyle(color: notifire.textcolore),),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Switch(
                                  value: light0,
                                  onChanged: (bool value) {
                                    setState(() {
                                      light0 = value;
                                    });
                                  },
                                ),
                                const SizedBox(width: 5,),
                                Text('Allow comments',style: TextStyle(color: notifire.textcolore),)
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Switch(
                                  value: light1,
                                  onChanged: (bool value) {
                                    setState(() {
                                      light1 = value;
                                    });
                                  },
                                ),
                                const SizedBox(width: 5,),
                                Text('Allow Piggybacks & tracebacks',style: TextStyle(color: notifire.textcolore),)
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Mobile App',style: TextStyle(color: notifire.textcolore),),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Switch(
                                  value: light2,
                                  onChanged: (bool value) {
                                    setState(() {
                                      light2 = value;
                                    });
                                  },
                                ),
                                const SizedBox(width: 5,),
                                Text('Show mobile app',style: TextStyle(color: notifire.textcolore),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 100,),
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

                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                        child: Container(
                          // width: 400,
                          decoration: BoxDecoration(
                            color: notifire.containcolore1,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text('General',style: TextStyle(color: notifire.textcolore),),
                                  )
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Category Name')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'URL Slug')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: dropdownbuton1()),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Expanded(child: areyacontain()),
                                ],
                              ),
                              const SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
                  child: Container(
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Meta Options',style: TextStyle(color: notifire.textcolore),),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Page Title')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: areyacontain()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: apk()),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                  child: Container(
                    // height: Get.height,
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          secoundecontain(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                  child: Container(
                    // height: Get.height,
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text('Settings',style: TextStyle(color: notifire.textcolore),),
                          ),
                          const SizedBox(height: 15,),
                          lastcontain(),
                          const SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Discussion',style: TextStyle(color: notifire.textcolore),),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Switch(
                                  value: light0,
                                  onChanged: (bool value) {
                                    setState(() {
                                      light0 = value;
                                    });
                                  },
                                ),
                                const SizedBox(width: 5,),
                                Text('Allow comments',style: TextStyle(color: notifire.textcolore),)
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Switch(
                                  value: light1,
                                  onChanged: (bool value) {
                                    setState(() {
                                      light1 = value;
                                    });
                                  },
                                ),
                                const SizedBox(width: 5,),
                                Flexible(child  : Text('Allow Piggybacks & tracebacks',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,))
                              ],
                            ),
                          ),
                          const SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('Mobile App',style: TextStyle(color: notifire.textcolore),),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Switch(
                                  value: light2,
                                  onChanged: (bool value) {
                                    setState(() {
                                      light2 = value;
                                    });
                                  },
                                ),
                                const SizedBox(width: 5,),
                                Text('Show mobile app',style: TextStyle(color: notifire.textcolore),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
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
                const SizedBox(height: 0,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                      color: notifire.bgcolore,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Container(
                                        // width: 400,
                                        decoration: BoxDecoration(
                                          color: notifire.containcolore1,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(height: 20,),
                                            Row(
                                              children: [
                                               Padding(
                                                 padding: const EdgeInsets.only(left: 10),
                                                 child: Text('General',style: TextStyle(color: notifire.textcolore),),
                                               )
                                              ],
                                            ),
                                            const SizedBox(height: 20,),
                                            Row(
                                              children: [
                                                Flexible(flex: 4,child: txtfilled(txt1: 'Category Name')),
                                              ],
                                            ),
                                            const SizedBox(height: 20,),
                                            Row(
                                              children: [
                                                Flexible(flex: 4,child: txtfilled(txt1: 'URL Slug')),
                                              ],
                                            ),
                                            const SizedBox(height: 20,),
                                            Row(
                                              children: [
                                                Flexible(flex: 4,child: dropdownbuton1()),
                                              ],
                                            ),
                                            const SizedBox(height: 20,),
                                            Row(
                                              children: [
                                                Expanded(child: areyacontain()),
                                              ],
                                            ),
                                            const SizedBox(height: 20,),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  // width: 400,
                                  decoration: BoxDecoration(
                                    color: notifire.containcolore1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 20,),
                                      Row(
                                        children: [
                                         Padding(
                                           padding: const EdgeInsets.only(left: 10),
                                           child: Text('Meta Options',style: TextStyle(color: notifire.textcolore),),
                                         )
                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Flexible(flex: 4,child: txtfilled(txt1: 'Page Title')),
                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Expanded(child: areyacontain()),
                                        ],
                                      ),
                                      const SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Expanded(child: apk()),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                                child: Container(
                                  // height: Get.height,
                                  // width: 400,
                                  decoration: BoxDecoration(
                                    color: notifire.containcolore1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        secoundecontain(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20,right: 10,left: 10),
                                child: Container(
                                  // height: Get.height,
                                  // width: 400,
                                  decoration: BoxDecoration(
                                    color: notifire.containcolore1,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Text('Settings',style: TextStyle(color: notifire.textcolore),),
                                        ),
                                        const SizedBox(height: 15,),
                                        lastcontain(),
                                        const SizedBox(height: 15,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text('Discussion',style: TextStyle(color: notifire.textcolore),),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Switch(
                                                value: light0,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    light0 = value;
                                                  });
                                                },
                                              ),
                                              const SizedBox(width: 5,),
                                              Text('Allow comments',style: TextStyle(color: notifire.textcolore),)
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Switch(
                                                value: light1,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    light1 = value;
                                                  });
                                                },
                                              ),
                                              const SizedBox(width: 5,),
                                              Flexible(child: Text('Allow Piggybacks & tracebacks',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,))
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text('Mobile App',style: TextStyle(color: notifire.textcolore),),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Switch(
                                                value: light2,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    light2 = value;
                                                  });
                                                },
                                              ),
                                              const SizedBox(width: 5,),
                                              Text('Show mobile app',style: TextStyle(color: notifire.textcolore),)
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const SizedBox(width: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff6c757d))),
                                      child: const Text('Discard',style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xff5151f9))),
                                      child: const Text('Save changed',style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const SizedBox(height: 20,),
              ],
            ),
          );
        }
      },
      ),
    );
  }


  bool light0 = true;
  bool light1 = false;
  bool light2 = true;

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
                child: Text('Add Product',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 140,
                  child: Row(
                    children: [
                      const SizedBox(width: 0,),
                      Image(image: const AssetImage('assets/shopping-cart-star123.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Add Product',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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
                    hintText: txt2,hintStyle: TextStyle(color: notifire.textcolore,),
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

  String? selectedOption;
  List<String> dropdownOptions = [
    "INDIA",
    "UK",
    "USA",
    'AUSTRALIA'
  ];

  Widget dropdownbuton1(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sub Category",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            height: 53,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: DropdownButtonFormField<String>(
                dropdownColor: notifire.containcolore1,
                value: selectedOption,
                padding: const EdgeInsets.only(left: 10,bottom: 10),
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
                decoration:   InputDecoration(
                  hintText: 'Select Sub Category',hintStyle: TextStyle(color: notifire.textcolore),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



 // XFile? image;
 //
 //  ImagePicker picker = ImagePicker();
 //   selectFile() async {
 //    image = await picker.pickImage(source: ImageSource.gallery);
 //    setState(() {
 //      var image = this.image;
 //      if(image != null){
 //        image = XFile(image.path);
 //      }
 //    });
 //  }


  File? _pickedImage;
  Uint8List webImage = Uint8List(8);

  Future <void> _pickImage() async {
    if (!kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var selected = File(image.path);
        setState(() {
          _pickedImage = selected;
        });
      } else {
        print('No image has been picked');
      }
    } else if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        setState(() {
          webImage = f ;
          _pickedImage = File('a');
        });
      } else {
        print('No image has been picked');
      }
    }else{
      print('Something went wrong');
    }
  }

  Widget secoundecontain(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Media',style: TextStyle(color: notifire.textcolore),),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.4),),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              const Row(
                children: [],
              ),
              const SizedBox(height: 20,),
              InkWell(
                onTap: () {
                  // selectFile();
                  _pickImage();
                },
                child: Container(
                  height: 100,
                  width:  100,
                  decoration: BoxDecoration(
                    color: const Color(0xffe9ecef),
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(image: AssetImage('assets/image-upload (1).png')),
                  ),
                  // child: image == null ? const SizedBox() : Image.file(File(image!.path),width: 120,height: 120),
                  child: _pickedImage == null? Image(image: AssetImage('assets/image-upload (1).png')) : Image.memory(webImage,fit: BoxFit.fill,),

                ),
              ),
              const SizedBox(height: 20,),
              Column(
                children: [
                  Text('Drag & Drop',style: TextStyle(color: notifire.textcolore),),
                  const SizedBox(height: 5,),
                  Text('OR',style: TextStyle(color: notifire.textcolore),),
                  const SizedBox(height: 5,),
                  const Text('Browse Photo',style: TextStyle(color: Color(0xff5151f9)),),
                  const SizedBox(height: 5,),
                  Text('Supports: *.png,*jpg and *.jpeg',style: TextStyle(color: notifire.textcolore,fontSize: 15),),
                  const SizedBox(height: 20,),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget areyacontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(0.4)),
            borderRadius: const BorderRadius.all(Radius.circular(10))
        ),
        child:  TextField(
          style: TextStyle(color: notifire.textcolore),
          decoration:  InputDecoration(
              contentPadding: const EdgeInsets.only(left: 10),
              focusColor: Colors.red,
              hintText: 'Text area',hintStyle: TextStyle(color: notifire.textcolore),
              border: InputBorder.none
          ),
        ),
      ),
    );
  }

  late BsSelectBoxController _select20;

  Widget apk(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: BsSelectBox(
              style: BsSelectBoxStyle(borderRadius: const BorderRadius.all(Radius.circular(10)),backgroundColor: notifire.containcolore1,border: Border.all(color: Colors.grey.withOpacity(0.4)),hintTextColor: notifire.textcolore,fontSize: 15),
              hintText: 'Pilih multiple',
              controller: _select20,
            ),
          ),
        ],
      ),
    );
  }



  Widget dropdownbuton2(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Status",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            height: 53,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.4)),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: DropdownButtonFormField<String>(
                dropdownColor: notifire.containcolore1,
                value: selectedOption,
                padding: const EdgeInsets.only(left: 10,bottom: 10),
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
                decoration:   InputDecoration(
                  hintText: 'Select Status',hintStyle: TextStyle(color: notifire.textcolore),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dropdownbuton3(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Market Template",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            height: 53,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.withOpacity(0.4)),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: DropdownButtonFormField<String>(
                dropdownColor: notifire.containcolore1,
                value: selectedOption,
                padding: const EdgeInsets.only(left: 10,bottom: 10),
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
                decoration:   InputDecoration(
                  hintText: 'Select Template',hintStyle: TextStyle(color: notifire.textcolore),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget lastcontain(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dropdownbuton2(),
        const SizedBox(height: 20,),
        dropdownbuton3(),
      ],
    );
  }







}
