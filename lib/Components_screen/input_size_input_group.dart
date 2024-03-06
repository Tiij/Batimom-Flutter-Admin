

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _InputScreenState extends State<InputScreen> {
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
                mainrow(),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        txtfiled1(),
                        const SizedBox(height: 20,),
                        txtfiled2(),
                        const SizedBox(height: 20,),
                        txtfiled3(),
                        const SizedBox(height: 20,),
                        txtfiled4(),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Text('Input Group',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20,),
                        txtfiled5(),
                        const SizedBox(height: 20,),
                        dropdown(),
                        const SizedBox(height: 20,),
                        Containe1(),
                        const SizedBox(height: 20,),
                        file1(),
                        const SizedBox(height: 20,),
                        file2(),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 130,)
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
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled1()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled2()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled3()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled4()),
                            const SizedBox(height: 20,),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text('Input Group',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(child: txtfiled5())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: dropdown())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: Containe1())
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Text('Input Group',style: TextStyle(fontSize: 20)),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: file1()),
                            const SizedBox(width: 10,),
                            Expanded(child: file2())
                          ],
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50,)
              ],),
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
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled1()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled2()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled3()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            const SizedBox(height: 20,),
                            Expanded(child: txtfiled4()),
                            const SizedBox(height: 20,),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10 ),
                  child: Text('Input Group',style: TextStyle(fontSize: 20,color: notifire.textcolore)),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: txtfiled5())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: dropdown())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: Containe1())
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: file1()),
                            const SizedBox(width: 10,),
                            Expanded(child: file2())
                          ],
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50,)
              ],
            ),
          );
        }
      },),
    );
  }



  Widget dropdown(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: notifire.bgcolore,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.grey.withOpacity(0.4))
        ),
        child: Row(
          children: [
            Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0xff3E60D5),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10))
              ),
              child: DropdownButton<String>(
                icon: const Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Icon(Icons.arrow_drop_down_outlined,color: Colors.white),
                ),
                hint: const Padding(
                  padding: EdgeInsets.only(left: 10,top: 0),
                  child: Text('Dropdown',style: TextStyle(color: Colors.white,fontSize: 15)),
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
              Expanded(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                //  contentPadding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                  hintText: 'Enter Text',hintStyle: TextStyle(color: notifire.textcolore)
                ),
              ),
            ),
          ],
        ),
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
  Widget file1(){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('File Input',style: TextStyle(color: notifire.textcolore)),
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


  selectFile2() async {
    final file = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowMultiple: true,
        allowedExtensions: ['png', 'jpg', 'jpeg'],
    );
    if (file != null) {
      setState(() {
      });
    }
  }

  Widget file2(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text('Multiple File Input',style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          InkWell(
            onTap: () {
              selectFile2();
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
                      selectFile2()();
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






  //----------------------------------------


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
                  width: 139,
                  child: Row(
                    children: [
                      const SizedBox(width: 20,),
                      Image(image: const AssetImage('assets/bezier.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Input Filde',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget txtfiled1(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text('Small',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 53,
              // color: Colors.red,
              child: TextField(
                obscureText: false,
                style: TextStyle(fontSize: 10,color: notifire.textcolore),
                decoration: InputDecoration(
                    hintText: 'Small',hintStyle: TextStyle(color: notifire.textcolore),
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

  Widget txtfiled2(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  const EdgeInsets.only(top: 0),
            child: Text('Normal',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 53,
              // color: Colors.red,
              child: TextField(
                obscureText: false,
                style: TextStyle(fontSize: 15,color: notifire.textcolore),
                decoration: InputDecoration(
                    hintText: 'Normal',hintStyle: TextStyle(color: notifire.textcolore),
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

  Widget txtfiled3(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text('Large',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 53,
              // color: Colors.red,
              child: TextField(
                obscureText: false,
                style: TextStyle(fontSize: 20,color: notifire.textcolore),
                decoration: InputDecoration(
                    hintText: 'Large',hintStyle: TextStyle(fontSize: 20,color: notifire.textcolore),
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

  Widget txtfiled4(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text('Gride Size',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 53,
              width: 200,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: false,
                decoration: InputDecoration(
                    hintText: 'Gride',hintStyle: TextStyle(color: notifire.textcolore),
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


//----------------------------------------


  Widget txtfiled5(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text('Static',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
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
                      child: Center(child: Text('@',style: TextStyle(fontSize: 30,color: notifire.textcolore),)),
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
              )
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Containe1(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Button',style: TextStyle(color: notifire.textcolore)),
          Container(
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        //contentPadding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                        hintText: 'Enter Text',hintStyle: TextStyle(color: notifire.textcolore)
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: notifire.containcolore1,side: const BorderSide(color: Colors.black),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))),
                      onPressed: (){},
                      child: Text('Button',style: TextStyle(color: notifire.textcolore),)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }





}




