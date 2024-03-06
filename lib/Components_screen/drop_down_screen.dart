// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Drop_Down extends StatefulWidget {
  const Drop_Down({super.key});

  @override
  State<Drop_Down> createState() => _Drop_DownState();
}
ColorNotifire notifire = ColorNotifire();
class _Drop_DownState extends State<Drop_Down> {
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
                firstcontain(),
                const SizedBox(height: 20,),
                secoundecontain(),
                const SizedBox(height: 20,),
                thirdcontain(),
                const SizedBox(height: 20,),
                fourcontain(),
                const SizedBox(height: 20,),
                fivecontain(),
                const SizedBox(height: 20,),
                sixcontain(),
                const SizedBox(height: 120,),
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
                Row(
                  children: [
                    Expanded(child: firstcontain()),
                    Expanded(child: secoundecontain())
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: thirdcontain()),
                    Expanded(child: fourcontain())
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: fivecontain()),
                    Expanded(child: sixcontain())
                  ],
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
                Row(
                  children: [
                    Expanded(child: firstcontain()),
                    Expanded(child: secoundecontain())
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: thirdcontain()),
                    Expanded(child: fourcontain()),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: fivecontain()),
                    Expanded(child: sixcontain())
                  ],
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
                  width: 147,
                  child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      Image(image: const AssetImage('assets/arrow-down-arrow-up-square.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Drop-Down',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget firstcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Single button dropdowns',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0,top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Dropdown button',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Dropdown Link',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Dropdown button',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Dropdown button',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget secoundecontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Variant',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff556EE6),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Primary',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Secondary',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff34C38F),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Success',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff50A5F1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Info',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1B44C),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Warning',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffF46A6A),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Danger',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget thirdcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Split button dropdowns',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff556EE6),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Primary  ',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Secondary  ',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff34C38F),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Success  ',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff50A5F1),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Info  ',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffF1B44C),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Warning  ',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fourcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Sizing',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: [
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: const Color(0xff556EE6),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Large Button',style: TextStyle(color: Colors.white,fontSize: 17)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Large Button',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xff50A5F1),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: DropdownButton<String>(
                        icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Small Button',style: TextStyle(color: Colors.white,fontSize: 10)),
                        ),
                        underline: const SizedBox(),
                        items: <String>['1', '2', '3', '4']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 10,color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xff74788D),
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: DropdownButton<String>(
                        icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                        hint: const Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Small Button',style: TextStyle(color: Colors.white,fontSize: 10)),
                        ),
                        underline: const SizedBox(),
                        items: <String>['1', '2', '3', '4']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 10,color: Colors.black),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget fivecontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),

        width: 500,
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Menu Content',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            Padding(
              padding:  const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff556EE6),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Header',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff34C38F),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Text',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.black),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Forms',style: TextStyle(color: Colors.black,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sixcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Single button dropdowns',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0,top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        color: const Color(0xff74788D),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: DropdownButton<String>(
                      icon: const Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                      hint: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Menu is right-aligned',style: TextStyle(color: Colors.white,fontSize: 15)),
                      ),
                      underline: const SizedBox(),
                      items: <String>['1', '2', '3', '4']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 10,color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }





}


