import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/email-inbox-screen/common_code_inbox.dart';
// import 'package:flutter_quill/flutter_quill.dart' as quill;
import '../Provider/colore_provider.dart';
import '../common_button/get_code.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {

  InboxController inboxController = Get.put(InboxController());
  String description = 'My great package';
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
    });
  }
  ColorNotifire notifire = ColorNotifire();
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return GetBuilder<InboxController>(
      builder: (inboxController) {
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: notifire.bgcolore,
          child: LayoutBuilder(builder: (context, constraints) {
            if(constraints.maxWidth<600){
              return  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    mainrow(),
                    const SizedBox(height: 0,),
                    firstcontain(size1: constraints.maxWidth),
                    // const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right: 10),
                      child: secoundecontain(size: constraints.maxWidth),
                    ),
                    const SizedBox(height: 130,),
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
                  Row(
                    children: [
                      firstcontain(size1: constraints.maxWidth),
                      const SizedBox(width: 30,),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: secoundecontain(size: constraints.maxWidth),
                      )),
                    ],
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
                    // const SizedBox(height: 20,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: firstcontain(size1: constraints.maxWidth),
                        ),
                        const SizedBox(width: 30,),
                        Expanded(child: Padding(
                          padding: const EdgeInsets.only(right: 10,bottom: 0),
                          child: secoundecontain(size: constraints.maxWidth),
                        )),
                      ],
                    ),
                    const SizedBox(height: 20,),
                  ],
                ),
              );
             }
            },
          ),
        );
      }
    );
  }



  Widget commonfirstcontain({required String txt,required String img}){
    return ListTile(
      leading: Image(image: AssetImage(img),color: notifire.textcolore),
      title: Text(txt,style: TextStyle(color: notifire.textcolore)),
    );
  }



  bool isChecked = false;
  Widget secoundecontain({required double size}){
    return Padding(
      padding: size<600? const EdgeInsets.only(top: 0): const EdgeInsets.only(top:0,bottom: 20),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration:  BoxDecoration(
                color: notifire.containcolore1,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                children: [
                  // const SizedBox(height: 20,),
                  size<1000?
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)
                            ),
                            child:  Center(child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image(image: const AssetImage('assets/rotate1.png'),color: notifire.textcolore),
                            )),
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)
                            ),
                            child:  Center(child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image(image: const AssetImage('assets/trash.png'),color: notifire.textcolore),
                            )),
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)
                            ),
                            child:  Center(child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image(image: const AssetImage('assets/exclamation-circle.png'),color: notifire.textcolore),
                            )),
                          ),
                          const SizedBox(width: 10,),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey),
                            ),
                            child:  Center(child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image(image: const AssetImage('assets/more-vertical.png'),color: notifire.textcolore),
                            )),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          // color: const Color(0xffF4F5F7),
                          color: notifire.bgcolore,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextField(
                          style: TextStyle(color: notifire.textcolore),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search mail',hintStyle: TextStyle(color: notifire.textcolore),
                              prefixIcon: Image(image: const AssetImage('assets/search.png'),color:  notifire.textcolore),
                          ),
                        ),
                      ),
                    ],
                  ):
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)
                              ),
                              child:  Center(child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image(image: const AssetImage('assets/rotate1.png'),color: notifire.textcolore),
                              )),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child:  Center(child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image(image: const AssetImage('assets/trash.png'),color: notifire.textcolore),
                              )),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child:  Center(child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image(image: const AssetImage('assets/exclamation-circle.png'),color: notifire.textcolore),
                              )),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child:  Center(child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Image(image: const AssetImage('assets/more-vertical.png'),color: notifire.textcolore),
                              )),
                            ),
                          ],
                        ),
                        const Expanded(child: SizedBox(width: 420,)),
                        Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            // color: const Color(0xffF4F5F7),
                            color: notifire.bgcolore,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: TextField(
                              style: TextStyle(color: notifire.textcolore),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search mail',hintStyle: TextStyle(color: notifire.textcolore),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.only(left: 20,right: 10),
                                    child: Image(image: const AssetImage('assets/search.png'),color:  notifire.textcolore),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Container(
                        width: size<1000 ? 1200 : size,
                        decoration: BoxDecoration(
                          color: notifire.containcolore1,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Table(
                                // border: TableBorder.all(color: Colors.red),
                                columnWidths:  const <int, TableColumnWidth>{
                                  0: FixedColumnWidth(30),
                                  1: FixedColumnWidth(30),
                                  2: FixedColumnWidth(120),
                                  3: FixedColumnWidth(400),
                                  4: FixedColumnWidth(30),
                                  5: FixedColumnWidth(80),
                                  // 6: FixedColumnWidth(20),
                                },
                                children: [
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                  _row(size: size),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  TableRow _row ({required double size}){
    return  TableRow(
      children: <Widget>[
        Padding(
          padding:   const EdgeInsets.only(top: 20),
          child: Checkbox(
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
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(top: size<700? 28:20),
          child: Image(image: const AssetImage('assets/star.png'),color: notifire.textcolore,),
        ),
        Padding(
          padding:  EdgeInsets.only(top: size<700? 34:25),
          child: Text('Alice Feeeman',style: TextStyle(color: notifire.textcolore)),
        ),
        Padding(
          padding:  EdgeInsets.only(top: size<700? 34: 25),
          child: Text('Email Lorem ipsum dolore sit amet, consetetur sadipscing elitr',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
        ),
        Padding(
          padding: EdgeInsets.only(top: size<700? 34: 20),
          child: const Image(image: AssetImage('assets/star (1).png'),height: 20,width: 20,),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 20,top: size<700? 34: 25),
          child: Text('4:58 am',overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
        ),
        Padding(
          padding:  EdgeInsets.only(top: size<700? 34: 25),
          child: Image(image: const AssetImage('assets/octagon-times (1).png'),height: 20,width: 20,color: notifire.textcolore,),
        ),
      ],
    );
  }

  Widget undercontain({required double size1}){
    return  Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      color:  notifire.containcolore1,
      child: Column(
        children: [
          Table(
            border: TableBorder.all(),
            columnWidths: const <int, TableColumnWidth>{
              0: FlexColumnWidth(0.1),
              1: FlexColumnWidth(0.1),
            },
            children: <TableRow>[
              TableRow(
                children: <Widget>[
                  Checkbox(
                    checkColor: Colors.white,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const Image(image: AssetImage('assets/star.png')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget firstcontain({required double size1}){
    // final controller=quill.QuillController.basic();
    return Padding(
      padding: const EdgeInsets.only(left: 15,bottom: 300,right: 15,top: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
            // height: 850,
            width: size1<600? 400:300,
            decoration: BoxDecoration(
              color:  notifire.containcolore1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(fixedSize:   MaterialStatePropertyAll(Size(Get.width, 50)),backgroundColor: const MaterialStatePropertyAll(Color(0xff8231D3)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)))),
                    onPressed: () =>   showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>    SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: AlertDialog(
                          backgroundColor: notifire.containcolore1,
                          title:   Row(
                            children: [
                              Text('New Mail',style: TextStyle(color: notifire.textcolore)),
                              const Spacer(),
                              InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Icon(Icons.close,color: notifire.textcolore,)),
                            ],
                          ),
                          actions: <Widget>[
                            Column(
                              children: [
                                Container(
                                  width: 1240,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       border: Border.all(color: const Color(0xffDADADA))
                                   ),
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: TextField(
                                      style: TextStyle(color: notifire.textcolore),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                        hintText: 'To',hintStyle: TextStyle(color: notifire.textcolore)
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Container(
                                    width: 1240,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: const Color(0xffDADADA))
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: TextField(
                                      style: TextStyle(color: notifire.textcolore),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'CC',hintStyle: TextStyle(color: notifire.textcolore),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Container(
                                  width: 1240,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: const Color(0xffDADADA))
                                  ),
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: TextField(
                                      style: TextStyle(color: notifire.textcolore),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                        hintText: 'Subject',hintStyle: TextStyle(color: notifire.textcolore),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: EdgeInsets.only(left: size1<600?0:10,right: size1<600?0:10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // Text('Text area',style: TextStyle(color: notifire.textcolore)),
                                      // const SizedBox(height: 10,),
                                      Container(
                                        height: 150,
                                        decoration: BoxDecoration(
                                            border: Border.all(color:  const Color(0xffDADADA)),
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
                                    ],
                                  ),
                                ),
                                // SizedBox(
                                //   width: 1200,
                                //   child: quill.QuillToolbar.basic(
                                //     controller: controller,
                                //   ),
                                // ),
                                // const SizedBox(height: 20,),
                                // Container(
                                //   width: 1200,
                                //   height: 150,
                                //   decoration: BoxDecoration(
                                //       color: notifire.bgcolore,
                                //     borderRadius: BorderRadius.circular(10)
                                //   ),
                                //   child: Padding(
                                //     padding: const EdgeInsets.only(left: 10,top: 10),
                                //     child: quill.QuillEditor.basic(controller: controller, readOnly: false,
                                //     ),
                                //   ),
                                // ),
                                const SizedBox(height: 20,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    size1<1000?
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        size1<500?
                                       Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(130, 30)),backgroundColor:  const MaterialStatePropertyAll(Color(0xff8231D3)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                              onPressed: () {},
                                              child:  const Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image(image: AssetImage('assets/send.png'),color: Colors.white),
                                                  SizedBox(width: 10,),
                                                  Text('Sent',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
                                            ElevatedButton(
                                              style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(130, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.green),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                              onPressed: () {},
                                              child:  const Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image(image: AssetImage('assets/floppy-disk.png'),color: Colors.white),
                                                  SizedBox(width: 10,),
                                                  Text('Save',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 10,),
                                            ElevatedButton(
                                              style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(130, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.red),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child:  const Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image(image: AssetImage('assets/octagon-times.png'),color: Colors.white),
                                                  SizedBox(width: 10,),
                                                  Text('Discard',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white)),
                                                ],
                                              ),
                                            ),
                                            // ElevatedButton(
                                            //   style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(100, 30)),backgroundColor:  const MaterialStatePropertyAll(Color(0xff8231D3)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                            //   onPressed: () {},
                                            //   child:  const Row(
                                            //     crossAxisAlignment: CrossAxisAlignment.center,
                                            //     mainAxisAlignment: MainAxisAlignment.center,
                                            //     children: [
                                            //       Image(image: AssetImage('assets/send.png'),color: Colors.white),
                                            //       SizedBox(width: 10,),
                                            //       Text('Sent',overflow: TextOverflow.ellipsis),
                                            //     ],
                                            //   ),
                                            // ),
                                            // const SizedBox(height: 10,),
                                            // ElevatedButton(
                                            //   style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(100, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.green),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                            //   onPressed: () {},
                                            //   child:  const Row(
                                            //     crossAxisAlignment: CrossAxisAlignment.center,
                                            //     mainAxisAlignment: MainAxisAlignment.center,
                                            //     children: [
                                            //       Image(image: AssetImage('assets/floppy-disk.png'),color: Colors.white),
                                            //       SizedBox(width: 10,),
                                            //       Text('Save',overflow: TextOverflow.ellipsis),
                                            //     ],
                                            //   ),
                                            // ),
                                            // const SizedBox(height: 10,),
                                            // ElevatedButton(
                                            //   style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(120, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.red),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                            //   onPressed: () {},
                                            //   child:  const Row(
                                            //     crossAxisAlignment: CrossAxisAlignment.center,
                                            //     mainAxisAlignment: MainAxisAlignment.center,
                                            //     children: [
                                            //       Image(image: AssetImage('assets/octagon-times.png'),color: Colors.white),
                                            //       SizedBox(width: 10,),
                                            //       Text('Discard',overflow: TextOverflow.ellipsis),
                                            //     ],
                                            //   ),
                                            // ),
                                          ],
                                        ):
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(130, 30)),backgroundColor:  const MaterialStatePropertyAll(Color(0xff8231D3)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                              onPressed: () {},
                                              child:  const Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image(image: AssetImage('assets/send.png'),color: Colors.white),
                                                  SizedBox(width: 10,),
                                                  Text('Sent',overflow: TextOverflow.ellipsis),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 10,),
                                            ElevatedButton(
                                              style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(130, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.green),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                              onPressed: () {},
                                              child:  const Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image(image: AssetImage('assets/floppy-disk.png'),color: Colors.white),
                                                  SizedBox(width: 10,),
                                                  Text('Save',overflow: TextOverflow.ellipsis),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 10,),
                                            ElevatedButton(
                                              style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(135, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.red),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                              onPressed: () {
                                                Get.back();
                                              },
                                              child:  const Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image(image: AssetImage('assets/octagon-times.png'),color: Colors.white),
                                                  SizedBox(width: 10,),
                                                  Text('Discard',overflow: TextOverflow.ellipsis),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ):
                                    Row(
                                      children: [
                                        const SizedBox(width: 860,),
                                        ElevatedButton(
                                          style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(120, 30)),backgroundColor:  const MaterialStatePropertyAll(Color(0xff8231D3)),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                          onPressed: () {},
                                          child:  const Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage('assets/send.png'),color: Colors.white),
                                              SizedBox(width: 10,),
                                              Text('Sent',style: TextStyle(color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        ElevatedButton(
                                          style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(120, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.green),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                          onPressed: () {},
                                          child:  const Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage('assets/floppy-disk.png'),color: Colors.white),
                                              SizedBox(width: 10,),
                                              Text('Save',style: TextStyle(color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10,),
                                        ElevatedButton(
                                          style: ButtonStyle(fixedSize:  const MaterialStatePropertyAll(Size(140, 30)),backgroundColor:  const MaterialStatePropertyAll(Colors.red),shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)))),
                                          onPressed: () {
                                            Get.back();
                                          },
                                          child:  const Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Image(image: AssetImage('assets/octagon-times.png'),color: Colors.white),
                                              SizedBox(width: 10,),
                                              Text('Discard',overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    child:  const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('+',style: TextStyle(fontSize: 20,color: Colors.white)),
                        SizedBox(width: 10,),
                        Text('Compose',style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    // height: 500,
                    // width: 270,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity( 0.4)),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading:  Image(image: const AssetImage('assets/envelope.png'),color: notifire.textcolore),
                          title:  Text('Inbox',style: TextStyle(color: notifire.textcolore)),
                          trailing: Container(
                            height: 20,
                            width: 20,
                           decoration: BoxDecoration(
                             color: notifire.bgcolore,
                             borderRadius: BorderRadius.circular(3),
                           ),
                            child:  Center(child: Text('75',style: TextStyle(color: notifire.textcolore,fontSize: 10))),
                          ),
                        ),
                        commonfirstcontain(txt: 'Sent', img: 'assets/send.png'),
                        commonfirstcontain(txt: 'Drafts', img: 'assets/message-edit.png'),
                        ListTile(
                          leading:  Image(image: const AssetImage('assets/star.png'),color: notifire.textcolore),
                          title:  Text('Starred',style: TextStyle(color: notifire.textcolore)),
                          trailing: Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                color: notifire.bgcolore,
                                borderRadius: BorderRadius.circular(3)
                            ),
                            child:  Center(child: Text('10',style: TextStyle(color: notifire.textcolore,fontSize: 10))),
                          ),
                        ),
                        commonfirstcontain(txt: 'Tags', img: 'assets/tag.png'),
                        commonfirstcontain(txt: 'Snooze', img: 'assets/alarm-clock.png'),
                        commonfirstcontain(txt: 'Important', img: 'assets/exclamation-circle.png'),
                        commonfirstcontain(txt: 'Chat', img: 'assets/chat.png'),
                        commonfirstcontain(txt: 'Trans', img: 'assets/trash.png'),
                        commonfirstcontain(txt: 'Spam', img: 'assets/octagon-times.png'),

                      ],
                    ),
                  ),
                ),
                // commonfirstcontain(txt: 'Inbox', img: 'assets/layout-web-12.png', txt2: '5', clore: const Color(0xffF2EAFB), txt1color: const Color(0xff8231D3), txt2color: const Color(0xff8231D3)),
                // commonsecoundetcontain(txt: 'Started', img: 'assets/star.png', clore: Colors.white, txt1color: Colors.black, txt2color: Colors.black,),
                // commonsecoundetcontain(txt: 'Send', img: 'assets/send.png', clore: Colors.white, txt1color: Colors.black, txt2color: Colors.black,),
                // commonfirstcontain(txt: 'Draft', img: 'assets/layout-web-12.png', txt2: '12', clore: const Color(0x0fffffff), txt1color: Colors.black, txt2color: Colors.black),
                // commonsecoundetcontain(txt: 'Spam', img: 'assets/octagon-exclamation.png', clore: Colors.white, txt1color: Colors.black, txt2color: Colors.black,),
                // commonsecoundetcontain(txt: 'Trash', img: 'assets/trash.png', clore: Colors.white, txt1color: Colors.black, txt2color: Colors.black,),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                    // height: 220,
                    // width: 270,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity( 0.4)),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 15,top:10),
                          child: Column(
                            children: [
                              Text('Lables',style: TextStyle(color: Colors.grey,fontSize: 15),),
                            ],
                          ),
                        ),
                        commonsecoundetcontain1(txt: 'imporatnte', img: 'assets/star.png', imgclore: const Color(0xff9D4BF3), txt1color: const Color(0xff9D4BF3)),
                        commonsecoundetcontain1(txt: 'Bookmark', img: 'assets/receipt.png', imgclore: const Color(0xffFA8F59), txt1color: const Color(0xffFA8F59)),
                        commonsecoundetcontain1(txt: 'archi', img: 'assets/layout-web-10.png', imgclore: const Color(0xff6BCE60), txt1color: const Color(0xff6BCE60)),
                        commonsecoundetcontain1(txt: 'Work', img: 'assets/tag.png', imgclore: const Color(0xff599EF2), txt1color: const Color(0xff599EF2)),
                        commonsecoundetcontain1(txt: 'Personal', img: 'assets/tag.png', imgclore: const Color(0xffFBB045), txt1color: const Color(0xffFBB045)),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),

              ],
            )
        ),
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
                child: Text('Inbox',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 50),
                child: SizedBox(
                  height: 60,
                  width: 130,
                  child: Row(
                    children: [
                      const SizedBox(width: 50,),
                      Image(image: const AssetImage('assets/3.png'),color: notifire.textcolore,),
                      // SizedBox(width: 10,),
                      // Text('Email',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Inbox',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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




