
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';


enum SingingCharacter { lafayette, jefferson }

class Checkbox_and_Radio extends StatefulWidget {
  const Checkbox_and_Radio({super.key});

  @override
  State<Checkbox_and_Radio> createState() => _Checkbox_and_RadioState();
}
ColorNotifire notifire = ColorNotifire();
class _Checkbox_and_RadioState extends State<Checkbox_and_Radio> {
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text('Checkboxes',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked =! isChecked;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check this Custom checkbox',style: TextStyle(color: notifire.textcolore)),
                                  ))
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox1(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 =! isChecked1;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check this Custom checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text('Inline',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox2(),
                              Flexible(child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked2 =! isChecked2;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                    child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                  ))),
                              chekbox3(),
                              Flexible(child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked3 =! isChecked3;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 10),
                                    child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                  ))),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text('Disabled',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox4(),
                              Flexible(child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                              )),
                              chekbox5(),
                              Flexible(child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                              )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text('Colors',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox6(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked6 =! isChecked6;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Defult checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox7(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked7 =! isChecked7;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Success checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox8(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked8 =! isChecked8;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Info checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox9(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked9 =! isChecked9;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Secoundry checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox10(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked10 =! isChecked10;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Secoundry checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox11(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked11 =! isChecked11;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Danger checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox12(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked12 =! isChecked12;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Dark checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Radio Butoon',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text('Radios',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          // Row(
                          //   children: [
                          //     radio(),
                          //     InkWell(
                          //         onTap: () {
                          //           setState(() {
                          //             result = true;
                          //           });
                          //         },
                          //         child:  Text('Toggle this Custom radio',style: TextStyle(color: notifire.textcolore))),
                          //   ],
                          // ),
                          harsh(),
                          const SizedBox(height: 20,),
                          // Row(
                          //   children: [
                          //     radio1(),
                          //     InkWell(
                          //         onTap: () {
                          //           setState(() {
                          //             result1 = true;
                          //           });
                          //         },
                          //         child:  Text('Or toggle this other custom radio',style: TextStyle(color: notifire.textcolore))),
                          //   ],
                          // ),
                          harsh2(),
                          const SizedBox(height: 20,),
                          Text('Inline',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                other1(),
                                Flexible(child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        other =! other;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15,right: 15),
                                      child: Text('Toggle this Custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                    ))),
                                ext1(),
                                Flexible(child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ext =! ext;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15,right: 15),
                                      child: Text('Or toggle this other custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                    ))),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text('Disabled',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                radio4(),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Text('Toggle this Custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                )),
                                radio5(),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Text('Or toggle this other custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                )),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text('Colors',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          harsh3(),
                          const SizedBox(height: 20,),
                          harsh4(),
                          const SizedBox(height: 20,),
                          harsh5(),
                          const SizedBox(height: 20,),
                          harsh6(),
                          const SizedBox(height: 20,),
                          harsh7(),
                          const SizedBox(height: 20,),
                          harsh8(),
                          const SizedBox(height: 20,),
                          harsh9(),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
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
                const SizedBox(height: 20,),
              ],
            ),
          );
        }
        else if(constraints.maxWidth<1000){
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
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text('Checkboxes',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked =! isChecked;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check this Custom checkbox',style: TextStyle(color: notifire.textcolore)),
                                  ))
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox1(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 =! isChecked1;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check this Custom checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text('Inline',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox2(),
                              Flexible(child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked2 =! isChecked2;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                    child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                  ))),
                              chekbox3(),
                              Flexible(child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked3 =! isChecked3;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 10),
                                    child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                  ))),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text('Disabled',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox4(),
                              Flexible(child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                              )),
                              chekbox5(),
                              Flexible(child: Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                              )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Text('Colors',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox6(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked6 =! isChecked6;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Defult checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox7(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked7 =! isChecked7;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Success checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox8(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked8 =! isChecked8;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Info checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox9(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked9 =! isChecked9;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Secoundry checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox10(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked10 =! isChecked10;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Secoundry checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox11(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked11 =! isChecked11;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Danger checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox12(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked12 =! isChecked12;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Dark checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Radio Butoon',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text('Radios',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          // Row(
                          //   children: [
                          //     radio(),
                          //     InkWell(
                          //         onTap: () {
                          //           setState(() {
                          //             result = true;
                          //           });
                          //         },
                          //         child:  Text('Toggle this Custom radio',style: TextStyle(color: notifire.textcolore))),
                          //   ],
                          // ),
                          harsh(),
                          const SizedBox(height: 20,),
                          // Row(
                          //   children: [
                          //     radio1(),
                          //     InkWell(
                          //         onTap: () {
                          //           setState(() {
                          //             result1 = true;
                          //           });
                          //         },
                          //         child:  Text('Or toggle this other custom radio',style: TextStyle(color: notifire.textcolore))),
                          //   ],
                          // ),
                          harsh2(),
                          const SizedBox(height: 20,),
                          Text('Inline',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                other1(),
                                Flexible(child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        other =! other;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15,right: 15),
                                      child: Text('Toggle this Custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                    ))),
                                ext1(),
                                Flexible(child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ext =! ext;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15,right: 15),
                                      child: Text('Or toggle this other custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                    ))),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text('Disabled',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                radio4(),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Text('Toggle this Custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                )),
                                radio5(),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Text('Or toggle this other custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                )),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text('Colors',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          harsh3(),
                          const SizedBox(height: 20,),
                          harsh4(),
                          const SizedBox(height: 20,),
                          harsh5(),
                          const SizedBox(height: 20,),
                          harsh6(),
                          const SizedBox(height: 20,),
                          harsh7(),
                          const SizedBox(height: 20,),
                          harsh8(),
                          const SizedBox(height: 20,),
                          harsh9(),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
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
                const SizedBox(height: 20,),
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
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                           Text('Checkboxes',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked =! isChecked;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check this Custom checkbox',style: TextStyle(color: notifire.textcolore)),
                                  ))
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox1(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 =! isChecked1;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Check this Custom checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                           Text('Inline',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox2(),
                               Flexible(child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked2 =! isChecked2;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                    child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                  ))),
                              chekbox3(),
                               Flexible(child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked3 =! isChecked3;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 10),
                                    child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                  ))),
                            ],
                          ),
                          const SizedBox(height: 20,),
                           Text('Disabled',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox4(),
                               Flexible(child: Padding(
                                 padding: const EdgeInsets.only(left: 15,right: 15),
                                 child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                               )),
                              chekbox5(),
                               Flexible(child: Padding(
                                 padding: const EdgeInsets.only(left: 15,right: 15),
                                 child: Text('Check this Custom checkbox',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                               )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                           Text('Colors',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox6(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked6 =! isChecked6;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Defult checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox7(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked7 =! isChecked7;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Success checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox8(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked8 =! isChecked8;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Info checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox9(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked9 =! isChecked9;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Secoundry checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox10(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked10 =! isChecked10;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Secoundry checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox11(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked11 =! isChecked11;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Danger checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              chekbox12(),
                              InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked12 =! isChecked12;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Dark checkbox',style: TextStyle(color: notifire.textcolore)),
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                 Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text('Radio Butoon',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          Text('Radios',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          // Row(
                          //   children: [
                          //     radio(),
                          //     InkWell(
                          //         onTap: () {
                          //           setState(() {
                          //             result = true;
                          //           });
                          //         },
                          //         child:  Text('Toggle this Custom radio',style: TextStyle(color: notifire.textcolore))),
                          //   ],
                          // ),
                          harsh(),
                          const SizedBox(height: 20,),
                          // Row(
                          //   children: [
                          //     radio1(),
                          //     InkWell(
                          //         onTap: () {
                          //           setState(() {
                          //             result1 = true;
                          //           });
                          //         },
                          //         child:  Text('Or toggle this other custom radio',style: TextStyle(color: notifire.textcolore))),
                          //   ],
                          // ),
                          harsh2(),
                          const SizedBox(height: 20,),
                          Text('Inline',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                other1(),
                                Flexible(child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        other =! other;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15,right: 15),
                                      child: Text('Toggle this Custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                    ))),
                                ext1(),
                                Flexible(child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        ext =! ext;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 15,right: 15),
                                      child: Text('Or toggle this other custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                    ))),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text('Disabled',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Row(
                              children: [
                                radio4(),
                                Flexible(child: InkWell(
                                  onTap: () {
                                    result4 =! result4;
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15,right: 15),
                                    child: Text('Toggle this Custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                  ),
                                )),
                                radio5(),
                                Flexible(child: Padding(
                                  padding: const EdgeInsets.only(left: 15,right: 15),
                                  child: Text('Or toggle this other custom radio',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                                )),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Text('Colors',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 20,),
                          harsh3(),
                          const SizedBox(height: 20,),
                          harsh4(),
                          const SizedBox(height: 20,),
                          harsh5(),
                          const SizedBox(height: 20,),
                          harsh6(),
                          const SizedBox(height: 20,),
                          harsh7(),
                          const SizedBox(height: 20,),
                          harsh8(),
                          const SizedBox(height: 20,),
                          harsh9(),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                ),
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
                const SizedBox(height: 20,),
              ],
            ),
          );
        }
      },
      ),
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

  bool isChecked2 = false;
  Widget chekbox2(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      checkColor: Colors.white,
      value: isChecked2,
      onChanged: (bool? value) {
        setState(() {
          isChecked2 = value!;
        });
      },
    );
  }

  bool isChecked3 = false;
  Widget chekbox3(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      checkColor: Colors.white,
      value: isChecked3,
      onChanged: (bool? value) {
        setState(() {
          isChecked3 = value!;
        });
      },
    );
  }

  bool isChecked4 = false;
  Widget chekbox4(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      checkColor: Colors.white,
      value: false,
      onChanged: (bool? value) {
        setState(() {
          isChecked4 = value!;
        });
      },
    );
  }

  bool isChecked5 = false;
  Widget chekbox5(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      checkColor: Colors.white,
      value: false,
      onChanged: (bool? value) {
        setState(() {
          isChecked5 = value!;
        });
      },
    );
  }


  bool isChecked6 = false;
  Widget chekbox6(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      activeColor: Colors.red,
      checkColor: Colors.white,
      value: isChecked6,
      onChanged: (bool? value) {
        setState(() {
          isChecked6 = value!;
        });
      },
    );
  }

  bool isChecked7 = false;
  Widget chekbox7(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      activeColor: Colors.teal,
      checkColor: Colors.white,
      value: isChecked7,
      onChanged: (bool? value) {
        setState(() {
          isChecked7 = value!;
        });
      },
    );
  }

  bool isChecked8 = false;
  Widget chekbox8(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      activeColor: Colors.yellow,
      checkColor: Colors.black,
      value: isChecked8,
      onChanged: (bool? value) {
        setState(() {
          isChecked8 = value!;
        });
      },
    );
  }

  bool isChecked9 = false;
  Widget chekbox9(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      activeColor: Colors.blue,
      checkColor: Colors.white,
      value: isChecked9,
      onChanged: (bool? value) {
        setState(() {
          isChecked9 = value!;
        });
      },
    );
  }

  bool isChecked10 = false;
  Widget chekbox10(){
    return Checkbox(
      side: MaterialStateBorderSide.resolveWith(
            (states) => BorderSide(width: 1.0, color: notifire.textcolore),
      ),
      activeColor: Colors.black,
      checkColor: Colors.white,
      value: isChecked10,
      onChanged: (bool? value) {
        setState(() {
          isChecked10 = value!;
        });
      },
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

  bool isChecked12 = false;
  Widget chekbox12(){
    return Checkbox(
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
    );
  }

//-------------------------------------

// bool isSelected=true;
// var result;
//   Widget radio(){
//     return Radio(
//         // fillColor: MaterialStatePropertyAll(notifire.textcolore),
//         fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
//           if (states.contains(MaterialState.disabled)) {
//             return Colors.red;
//           }
//           return Colors.blue;
//         }),
//         activeColor: Colors.red,
//         // focusColor: Colors.red,
//         value: 'Radio Button',
//         overlayColor: MaterialStatePropertyAll(Colors.white),
//         groupValue: result,
//         onChanged: (value){
//          setState(() {
//           result=value;
//          });//selected value
//         }
//     );
//   }

  bool select1 = false;
  Widget harsh(){
    return Row(
        children: [
          Padding(
            padding:  const EdgeInsets.only(
                left: 10, top: 10, bottom: 10, right: 20),
            child: InkWell(
              onTap: () {
                setState(() {
                  select1 =! select1;
                });
              },
              child: Center(
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(30)),
                      // ignore: unrelated_type_equality_checks
                      border: Border.all(
                          color: select1
                              ? Colors.red
                              : notifire.textcolore,width: 2)),
                  // ignore: unrelated_type_equality_checks
                  child: select1? const Icon(Icons.circle,
                      size: 13,
                      color: Colors.red):
                 const SizedBox()
                ),
              ),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  select1 =! select1;
                });
              },
              child: Text('Toggle this Custom radio',style: TextStyle(color: notifire.textcolore),))
        ],
        );
  }

  bool select2 =false;
  Widget harsh2(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select2 =! select2;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select2
                            ? Colors.blue
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select2? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.blue):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select2 =! select2;
              });
            },
            child: Text('Or toggle this other custom radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }

  bool select3 =false;
  Widget harsh3(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select3 =! select3;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select3
                            ? Colors.green
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select3? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.green):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select3 =! select3;
              });
            },
            child: Text('Defult Radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }

  bool select4 =false;
  Widget harsh4(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select4 =! select4;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select4
                            ? Colors.pink
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select4? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.pink):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select4 =! select4;
              });
            },
            child: Text('Success Radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }

  bool select5 =false;
  Widget harsh5(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select5 =! select5;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select5
                            ? Colors.deepPurpleAccent
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select5? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.deepPurpleAccent):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select5 =! select5;
              });
            },
            child: Text('Info Radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }


  bool select6 =false;
  Widget harsh6(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select6 =! select6;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select6
                            ? Colors.deepOrange
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select6? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.deepOrange):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select6 =! select6;
              });
            },
            child: Text('Secoundry Radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }

  bool select7 =false;
  Widget harsh7(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select7 =! select7;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select7
                            ? Colors.amber
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select7? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.amber):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select7 =! select7;
              });
            },
            child: Text('Secoundry Radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }


  bool select8 =false;
  Widget harsh8(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select8 =! select8;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select8
                            ? Colors.deepPurple
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select8? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.deepPurple):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select8 =! select8;
              });
            },
            child: Text('Danger Eadio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }


  bool select9 =false;
  Widget harsh9(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                select9 =! select9;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: select9
                            ? Colors.greenAccent
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: select9? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.greenAccent):
                const SizedBox()
            ),
          ),
        ),
        InkWell(
            onTap: () {
              setState(() {
                select9 =! select9;
              });
            },
            child: Text('Dark Radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }

  // RadioListTile(
  // value: name[index],
  // fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
  // if (states.contains(MaterialState.disabled)) {
  // return color[index];
  // }
  // return notifire?.getmaintext;
  // }),
  // activeColor: color[index],
  // title: Text(name[index],style: TextStyle(color: notifire?.getMainText)),
  // groupValue: result,
  // onChanged: (value) {
  // setState(() {
  // result = value;
  // });
  // });


  var result1;
  Widget radio1(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result1,
        onChanged: (value){
          setState(() {
            result1=value;
          });//selected value
        }
    );
  }

  bool other =false;
  Widget other1(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                other =! other;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: other
                            ? Colors.blue
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: other? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.blue):
                const SizedBox()
            ),
          ),
        ),
        // InkWell(
        //     onTap: () {
        //       setState(() {
        //         other =! other;
        //       });
        //     },
        //     child: Text('Or toggle this other custom radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }


  bool ext =false;
  Widget ext1(){
    return Row(
      children: [
        Padding(
          padding:  const EdgeInsets.only(
              left: 10, top: 10, bottom: 10, right: 20),
          child: InkWell(
            onTap: () {
              setState(() {
                ext =! ext;
              });
            },
            child: Container(
                height: 18,
                width: 18,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                        Radius.circular(30)),
                    // ignore: unrelated_type_equality_checks
                    border: Border.all(
                        color: ext
                            ? Colors.blue
                            : notifire.textcolore,width: 2)),
                // ignore: unrelated_type_equality_checks
                child: ext? const Icon(Icons.circle,
                    size: 13,
                    color: Colors.red):
                const SizedBox()
            ),
          ),
        ),
        // InkWell(
        //     onTap: () {
        //       setState(() {
        //         other =! other;
        //       });
        //     },
        //     child: Text('Or toggle this other custom radio',style: TextStyle(color: notifire.textcolore),))
      ],
    );
  }



  var result2;
  Widget radio2(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result2,
        onChanged: (value){
          setState(() {
            result2=value;
          });//selected value
        }
    );
  }

  var result3;
  Widget radio3(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result3,
        onChanged: (value){
          setState(() {
            result3=value;
          });//selected value
        }
    );
  }

  var result4;
  Widget radio4(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result4,
        onChanged: (value){
          setState(() {
            result4 =! result4;
          });//selected value
        }
    );
  }

  var result5;
  Widget radio5(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result5,
        onChanged: (value){
          setState(() {
          });//selected value
        }
    );
  }

  var result6;
  Widget radio6(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result6,
        activeColor: Colors.red,
        onChanged: (value){
          setState(() {
            result6=value;
          });//selected value
        }
    );
  }

  var result7;
  Widget radio7(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result7,
        activeColor: Colors.black,
        onChanged: (value){
          setState(() {
            result7=value;
          });//selected value
        }
    );
  }

  var result8;
  Widget radio8(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result8,
        activeColor: Colors.deepPurpleAccent,
        onChanged: (value){
          setState(() {
            result8=value;
          });//selected value
        }
    );
  }

  var result9;
  Widget radio9(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result9,
        activeColor: Colors.yellow,
        onChanged: (value){
          setState(() {
            result9=value;
          });//selected value
        }
    );
  }

  var result10;
  Widget radio10(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result10,
        activeColor: Colors.green,
        onChanged: (value){
          setState(() {
            result10=value;
          });//selected value
        }
    );
  }

  var result11;
  Widget radio11(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result11,
        activeColor: Colors.purpleAccent,
        onChanged: (value){
          setState(() {
            result11=value;
          });//selected value
        }
    );
  }

  var result12;
  Widget radio12(){
    return Radio(
        fillColor: MaterialStatePropertyAll(notifire.textcolore),
        value: "radio value",
        groupValue: result12,
        activeColor: Colors.lightGreen,
        onChanged: (value){
          setState(() {
            result12=value;
          });//selected value
        }
    );
  }


//-------------------------------------



  Widget mainrow(){
    return  Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Components',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 145,
                  child: Row(
                    children: [
                      const SizedBox(width: 30,),
                      Image(image: const AssetImage('assets/registered-circle.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('CheckBox',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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






