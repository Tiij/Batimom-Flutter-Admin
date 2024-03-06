// ignore_for_file: camel_case_types, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_quill/flutter_quill.dart' as quill;

import '../Provider/colore_provider.dart';

class Project_Create extends StatefulWidget {
  const Project_Create({super.key});

  @override
  State<Project_Create> createState() => _Project_CreateState();
}
ColorNotifire notifire = ColorNotifire();
class _Project_CreateState extends State<Project_Create> {
  var selectedDateAndTime = DateTime.now();
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
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child:  Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: txtfilled(txt1: 'Project Name',txt2: 'Project Name'))
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(flex: 4,child: txtfilled2(txt1: 'Start Date')),
                            Expanded(flex: 4,child: txtfilled2(txt1: 'End Date')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: selectconrain())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(flex: 4,child: txtfilled(txt1: 'Budget',txt2: 'Enter rate')),
                            Expanded(flex: 4,child: dropdownbuton())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(flex: 4,child: dropdownbuton1()),
                            Expanded(flex: 4,child: dropdownbuton2()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10,bottom: 10),
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                  },
                                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff757FEF)),
                                  child:  Text('+ Create Project',style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),

                          ],
                        )
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
          return  Column(
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
                  child:  Column(
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(child: txtfilled(txt1: 'Project Name',txt2: 'Project Name'))
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(flex: 4,child: txtfilled2(txt1: 'Start Date')),
                          Expanded(flex: 4,child: txtfilled2(txt1: 'End Date')),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(child: selectconrain())
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(flex: 4,child: txtfilled(txt1: 'Budget',txt2: 'Enter rate')),
                          Expanded(flex: 4,child: dropdownbuton())
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          Expanded(flex: 4,child: dropdownbuton1()),
                          Expanded(flex: 4,child: dropdownbuton2()),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10,bottom: 10),
                            child: Container(
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff757FEF)),
                                child:  Text('+ Create Project',style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
            ],);
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
                    child:  Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: txtfilled(txt1: 'Project Name',txt2: 'Project Name'))
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(flex: 4,child: txtfilled2(txt1: 'Start Date')),
                            Expanded(flex: 4,child: txtfilled2(txt1: 'End Date')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: selectconrain())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(flex: 4,child: txtfilled(txt1: 'Budget',txt2: 'Enter rate')),
                            Expanded(flex: 4,child: dropdownbuton())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(flex: 4,child: dropdownbuton1()),
                            Expanded(flex: 4,child: dropdownbuton2()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10,bottom: 10),
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: ElevatedButton(
                                  onPressed: () {
                                  },
                                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff757FEF)),
                                  child:  Text('+ Create Project',style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          );
        }
      },
      ),
    );
  }


  Widget mainrow(){
    return  Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Project Create',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 151,
                  child: Row(
                    children: [
                      const SizedBox(width: 0,),
                      Image(image: const AssetImage('assets/file-plus.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Project Create',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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
                          padding: const EdgeInsets.only(right: 10),
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

  Widget selectconrain(){
    // final controller=quill.QuillController.basic();
    return const Column(
      children: [
        // const SizedBox(height: 10,),
        // SizedBox(
        //   width: 1200,
        //   child: quill.QuillToolbar.basic(
        //     controller: controller,
        //   ),
        // ),
        // const SizedBox(height: 20,),
        // Padding(
        //   padding: const EdgeInsets.only(left: 10,right: 10),
        //   child: Container(
        //     width: MediaQuery.of(context).size.width,
        //     height: 150,
        //     decoration: BoxDecoration(
        //         color: notifire.bgcolore,
        //         borderRadius: BorderRadius.circular(10)
        //     ),
        //     child: Padding(
        //       padding: const EdgeInsets.only(left: 10,top: 10),
        //       child: quill.QuillEditor.basic(controller: controller, readOnly: false,
        //       ),
        //     ),
        //   ),
        // ),

      ],
    );
  }



  String? selectedOption;

  List<String> dropdownOptions = [
    "1",
    "2",
    "3"
  ];

  Widget dropdownbuton(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Priority Status",style: TextStyle(color: notifire.textcolore)),
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
                hintText: 'Priority',hintStyle: TextStyle(color: notifire.textcolore),
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
    "100",
    "200",
    "300"
  ];

  Widget dropdownbuton1(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Categories",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: notifire.containcolore1,
              value: selectedOption1,
              padding: const EdgeInsets.only(left: 10),
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
              decoration:   InputDecoration(
                hintText: 'Select',hintStyle: TextStyle(color: notifire.textcolore),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }





  String? selectedOption2;

  List<String> dropdownOptions2 = [
    "1000",
    "2000",
    "3000"
  ];

  Widget dropdownbuton2(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Categories",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: notifire.containcolore1,
              value: selectedOption2,
              padding: const EdgeInsets.only(left: 10),
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
              decoration:   InputDecoration(
                hintText: 'Select',hintStyle: TextStyle(color: notifire.textcolore),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }


}
