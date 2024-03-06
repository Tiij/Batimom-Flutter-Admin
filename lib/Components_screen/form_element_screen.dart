// ignore_for_file: camel_case_types

import 'package:bs_flutter_selectbox/bs_flutter_selectbox.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Form_Elemente extends StatefulWidget {
  const Form_Elemente({super.key});

  @override
  State<Form_Elemente> createState() => _Form_ElementeState();
}

class _Form_ElementeState extends State<Form_Elemente> {
  var selectedDateAndTime = DateTime.now();
  ColorNotifire notifire = ColorNotifire();
  // var selectedDate = DateFormat('d-MM-yyyy');
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
                        txtfilled(txt1: 'Text'),
                        dropdownbuton(),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Email',txt2: 'Email'),
                        fourcontainer(),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Password',txt2: 'Password',obscur: true),
                        sixcontsin(),
                        const SizedBox(height: 20,),
                        hiditextfiled(txt1: 'Show/Hide Password',txt2: 'Enter your Password',sufixicon: Icons.visibility,sufixicon1: Icons.visibility_off_outlined),
                        txtfilled2(txt1: 'Date',txt2: 'dd-mm-yyyy'),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Placeholder',txt2: 'Placeholder'),
                        textfiledtimepicker(txt1: 'Time',txt2: 'dd-mm-yyyy'),
                        const SizedBox(height: 20,),
                        sevencontain(),
                        txtfilled2(txt1: 'Month',txt2: 'dd-mm-yyyy'),
                        const SizedBox(height: 20,),
                        textfilled3(txt1: 'Readonly',txt2: 'Readonly value'),
                        txtfilled2(txt1: 'Week',txt2: 'dd-mm-yyyy'),
                        const SizedBox(height: 20,),
                        textfilled3(txt1: 'Disabled',txt2: 'Disabled value'),
                        txtfilednumber(txt1: 'Number'),
                        const SizedBox(height: 20,),
                        eightcontain(),
                        ninecontain(),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Helping Text',txt2: 'Helping Text'),
                        tencontain(),
                        const SizedBox(height: 20,),
                        apk(),
                        const SizedBox(height: 20,),
                      ],
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
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
                            Flexible(flex: 4,child: txtfilled(txt1: 'Text')),
                            Flexible(flex: 4,child: dropdownbuton()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Email',txt2: 'Email')),
                            Flexible(flex: 4,child: fourcontainer())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Password',txt2: 'Password',obscur: true)),
                            Flexible(flex: 4,child: sixcontsin())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: hiditextfiled(txt1: 'Show/Hide Password',txt2: 'Enter your Password',sufixicon: Icons.visibility,sufixicon1: Icons.visibility_off_outlined)),
                            Flexible(flex: 4,child: txtfilled2(txt1: 'Date',txt2: 'dd-mm-yyyy')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Placeholder',txt2: 'Placeholder')),
                            Flexible(flex: 4,child: textfiledtimepicker(txt1: 'Time',txt2: 'dd-mm-yyyy')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: sevencontain()),
                            Flexible(flex: 4,child: txtfilled2(txt1: 'Month',txt2: 'dd-mm-yyyy')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: textfilled3(txt1: 'Readonly',txt2: 'Readonly value')),
                            Flexible(flex: 4,child: txtfilled2(txt1: 'Week',txt2: 'dd-mm-yyyy')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: textfilled3(txt1: 'Disabled',txt2: 'Disabled value')),
                            Flexible(flex: 4,child: txtfilednumber(txt1: 'Number')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: eightcontain()),
                            Flexible(flex: 4,child: ninecontain()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Helping Text',txt2: 'Helping Text')),
                            Flexible(flex: 4,child: tencontain())
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: apk()),
                  ],
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
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
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
                           Flexible(flex: 4,child: txtfilled(txt1: 'Text')),
                           Flexible(flex: 4,child: dropdownbuton()),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Flexible(flex: 4,child: txtfilled(txt1: 'Email',txt2: 'Email')),
                           Flexible(flex: 4,child: fourcontainer())
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Flexible(flex: 4,child: txtfilled(txt1: 'Password',txt2: 'Password',obscur: true)),
                           Flexible(flex: 4,child: sixcontsin())
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Flexible(flex: 4,child: hiditextfiled(txt1: 'Show/Hide Password',txt2: 'Enter your Password',sufixicon: Icons.visibility,sufixicon1: Icons.visibility_off_outlined)),
                           Flexible(flex: 4,child: txtfilled2(txt1: 'Date',txt2: 'dd-mm-yyyy')),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Flexible(flex: 4,child: txtfilled(txt1: 'Placeholder',txt2: 'Placeholder')),
                           Flexible(flex: 4,child: textfiledtimepicker(txt1: 'Time',txt2: 'dd-mm-yyyy')),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Flexible(flex: 4,child: sevencontain()),
                           Flexible(flex: 4,child: txtfilled2(txt1: 'Month',txt2: 'dd-mm-yyyy')),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Flexible(flex: 4,child: textfilled3(txt1: 'Readonly',txt2: 'Readonly value')),
                           Flexible(flex: 4,child: txtfilled2(txt1: 'Week',txt2: 'dd-mm-yyyy')),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Flexible(flex: 4,child: textfilled3(txt1: 'Disabled',txt2: 'Disabled value')),
                           Flexible(flex: 4,child: txtfilednumber(txt1: 'Number')),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Flexible(flex: 4,child: eightcontain()),
                           Flexible(flex: 4,child: ninecontain()),
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Flexible(flex: 4,child: txtfilled(txt1: 'Helping Text',txt2: 'Helping Text')),
                           Flexible(flex: 4,child: tencontain())
                         ],
                       ),
                       const SizedBox(height: 20,),
                       Row(
                         children: [
                           Expanded(child: apk()),
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
                const SizedBox(height: 20,),

              ],
            ),
          );
        }
      },
      ),
    );
  }
  bool passwordobscures = true;
  bool ontapoutside = false;

  TimeOfDay selectedtime = TimeOfDay.now();
  Future<void> selectDateAndTime(context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDateAndTime,
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    );
    if (pickedDate != null && pickedDate != selectedDateAndTime) {
      setState(() {
        selectedDateAndTime = pickedDate;
      });
    }
  }
  String? selectedOption;

  List<String> dropdownOptions = [
    "1",
    "2",
    "3"
  ];
  // create some values
  Color pickerColor = const Color(0xff443a49);
  Color currentColor = const Color(0xff443a49);

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
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

  Future showPicker(){
    return showDialog(
      builder: (context) => AlertDialog(
        title:  Text('Pick a color!',style: TextStyle(color: notifire.textcolore)),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            child:  Text('Got it',style: TextStyle(color: notifire.textcolore)),
            onPressed: () {
              setState(() => currentColor = pickerColor);
              Navigator.of(context).pop();
            },
          ),
        ],
      ), context: context,
    );
  }


  double _currentSliderValue = 20;
  var selectText = [
    'Banana',
    'Apple',
    'Strawberry',
    'Pineapple',
    'Watermelon',
    'Grapefruit',
  ];
  var selectIndex= [];


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
  Widget txtfilednumber({required String txt1,String? txt2, bool? obscur,IconData? sufixicon}){
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
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
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
  Widget textfilled3({required String txt1,String? txt2, bool? obscur,IconData? sufixicon}){
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
                onSubmitted: (value) {
                  setState(() {
                    ontapoutside = true;
                  });
                },
                onTapOutside: (event) {
                  setState(() {
                    ontapoutside = true;
                  });
                },
                obscureText: obscur??false,
                readOnly: ontapoutside,
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
  Widget hiditextfiled({required String txt1,String? txt2,IconData? sufixicon,IconData? sufixicon1}){
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
                obscureText: passwordobscures,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passwordobscures  = ! passwordobscures;
                          });
                        },
                        child: passwordobscures ? Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(sufixicon1,color: notifire.textcolore,),
                        ): Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Icon(sufixicon,color: notifire.textcolore,),
                        )),
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

  Widget txtfilled2({required String txt1,String? txt2}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
                readOnly: true,
                decoration: InputDecoration(
                    hintText: selectedDateAndTime.toString().split(" ").first,hintStyle: TextStyle(color: notifire.textcolore),
                    suffixIcon: InkWell(
                        onTap: () {
                          selectDateAndTime(context);
                        },
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Icon(Icons.date_range_rounded,color: notifire.textcolore,),
                        )),
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

  Widget textfiledtimepicker({required String txt1,String? txt2}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
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
                readOnly: true,
                decoration: InputDecoration(
                    hintText: '${selectedtime.hour} : ${selectedtime.minute}',hintStyle: TextStyle(color: notifire.textcolore),
                    suffixIcon: InkWell(
                        onTap: () async {
                          final TimeOfDay? timeOfDay = await showTimePicker(
                              context: context,
                              initialTime: selectedtime);
                          if(timeOfDay != null){
                            setState(() {
                              selectedtime = timeOfDay;
                            });
                          }
                        },
                        child:  Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Icon(Icons.timelapse,color: notifire.textcolore,),
                        )),
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

  Widget ninecontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Text('Colore',style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () => showPicker(),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: currentColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey.withOpacity(0.4))
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dropdownbuton(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Input Select",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: notifire.containcolore1,
              value: selectedOption,
              padding: const EdgeInsets.only(left: 10),
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
                hintText: 'Select an option',hintStyle: TextStyle(color: notifire.textcolore),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget tencontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Text('Range',style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Slider(
            value: _currentSliderValue,
            max: 100,
            divisions: 5,
            label: _currentSliderValue.round().toString(),
            onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget sixcontsin(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Defulte File Input',style: TextStyle(color: notifire.textcolore)),
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
                      child:  Center(child: Text('Choose File',style: TextStyle(color: notifire.textcolore),)),
                    ),
                  ),
                  const SizedBox(width: 10,),
                   Text('No File Chosen',style: TextStyle(color: notifire.textcolore),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget fourcontainer(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Multiple Select',style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.withOpacity(0.4),width: 1),
            ),
            child:  Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const Row(
                      children: [],
                    ),
                    SizedBox(
                      height: 100,
                      width: 200,
                      child: ListView.builder(scrollDirection: Axis.vertical,itemCount:selectText.length ,
                        itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap:() {
                                   if(selectIndex.contains(index)){
                                        setState(() {
                                          selectIndex.remove(index);
                                        });
                                      }else{
                                        setState(() {
                                          selectIndex.add(index);
                                        });
                                      }
                                  selectIndex.contains(index);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5,bottom: 5),
                                  child: Container(
                                      height: 20,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: selectIndex.contains(index) ? Colors.red:Colors.white,
                                        borderRadius: const BorderRadius.all(Radius.circular(5))
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 10),
                                        child: Text(selectText[index],style: TextStyle(color: selectIndex.contains(index) ? Colors.black:Colors.black),),
                                      )),
                                )),
                          ],
                        );
                      },),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget mainrow(){
    return    Row(
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
                  width: 154,
                  child: Row(
                    children: [
                      const SizedBox(width: 0,),
                      Image(image: const AssetImage('assets/file-text.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Form Elements',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget sevencontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Text('Text area',style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child:  TextField(
              style: TextStyle(color: notifire.textcolore),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 10),
                  focusColor: Colors.red,
                  border: InputBorder.none
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget eightcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Text('Static Controler',style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.grey.withOpacity(0.4))
              ),
              child:  Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('email@example.com',style: TextStyle(color: notifire.textcolore)),
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }

  late BsSelectBoxController _select2;
  @override
  void initState() {
     _select2 = BsSelectBoxController(
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
              controller: _select2,
            ),
          ),
        ],
      ),
    );
  }







}










