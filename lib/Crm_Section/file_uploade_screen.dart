// ignore_for_file: unnecessary_import, camel_case_types, no_leading_underscores_for_local_identifiers, avoid_print

import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';
import '../extra_screen/all_controller.dart';

class File_Uploade extends StatefulWidget {
  const File_Uploade({super.key});

  @override
  State<File_Uploade> createState() => _File_UploadeState();
}

class _File_UploadeState extends State<File_Uploade> {
  ColorNotifire notifire = ColorNotifire();
  InvoiceController invoiceController = Get.put(InvoiceController());

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: notifire.bgcolore,
          // color: Colors.red,
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    mainrow(),
                    const SizedBox(height: 15,),
                    Center(child: secoundecontain(size: constraints.maxWidth)),
                  ],
                ),
              );
            }
            else if (constraints.maxWidth < 1000) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: mainrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Center(child: secoundecontain(size: constraints.maxWidth)),
                  ],),
              );
            }
            else {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(child: mainrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Center(child: secoundecontain(size: constraints.maxWidth)),
                  ],
                ),
              );
            }
          },),
        ));
  }

  Widget mainrow() {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: Text('File Upload', style: TextStyle(
                    fontFamily: 'Jost-SemiBold',
                    fontSize: 20,
                    color: notifire.textcolore,
                    fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 140,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),
                          color: notifire.textcolore),
                      const SizedBox(width: 10,),
                      Text('File Upload', style: TextStyle(
                          color: notifire.textcolore, fontSize: 15),
                          overflow: TextOverflow.ellipsis),
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

  XFile? image;
  ImagePicker picker = ImagePicker();

  selectFile() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      var image = this.image;
      if(image != null){
        image = XFile(image.path);
      }
    });
  }

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



  Widget secoundecontain({required size}) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          DottedBorder(
            borderType: BorderType.RRect,
            color: notifire.textcolore,
            radius: const Radius.circular(12),
            // padding: const EdgeInsets.all(6),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Container(
                // margin: const EdgeInsets.all(20),
                alignment: Alignment.center,
                color: notifire.containcolore1,
                // height: 342,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('File Upload',style: TextStyle(color: notifire.textcolore)),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        color: notifire.textcolore,
                        radius: const Radius.circular(12),
                        // padding: const EdgeInsets.all(6),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.all(Radius.circular(12)),
                          child: Container(
                            color: notifire.background,
                            alignment: Alignment.center,
                            height: 240,
                            child: Column(
                              children: [
                                const SizedBox(height: 20,),
                                Container(
                                  height: 200,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: notifire.containcolore1,
                                    borderRadius: BorderRadius.circular(10),
                                    // image: const DecorationImage(image: AssetImage('assets/image-upload (1).png')),
                                  ),
                                  child: size > 600? _pickedImage == null ? const Image(image: AssetImage('assets/image-upload (1).png')) : Image.memory(webImage,fit: BoxFit.fill,) : image == null ? Image(image: AssetImage('assets/image-upload (1).png')) : Image.file(File(image!.path),fit: BoxFit.fill),
                                ),
                                const SizedBox(height: 20,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      InkWell(
                        onTap: () {
                          // selectFile();
                          size > 600? _pickImage() : selectFile();
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Text('Upload Now', style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }



}


