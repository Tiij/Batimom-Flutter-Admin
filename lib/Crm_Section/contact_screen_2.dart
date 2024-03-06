// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';
import '../extra_screen/all_controller.dart';

class Contact_Screen_2 extends StatefulWidget {
  const Contact_Screen_2({super.key});

  @override
  State<Contact_Screen_2> createState() => _Contact_Screen_2State();
}

class _Contact_Screen_2State extends State<Contact_Screen_2> {

  List isHover = [];
  List checkBox = [];
  int boxBorder = 0;
  ColorNotifire notifire = ColorNotifire();
  InvoiceController invoiceController = Get.put(InvoiceController());
  List Image1 = [
    'assets/artist-3 1.png',
    'assets/artist-1 1.png',
    'assets/artist-8 1.png',
    'assets/artist-2 1q.png',
    'assets/artist-3 1.png',
    'assets/artist-1 1.png',
    'assets/artist-1 1.png',
    'assets/artist-8 1.png',
    'assets/artist-2 1q.png',
    'assets/artist-3 1.png',
    'assets/artist-1 1.png',
    'assets/artist-8 1.png',
    'assets/artist-2 1q.png',
    'assets/artist-3 1.png',
    'assets/artist-1 1.png',
  ];
  List text1 = [
    'Christopher Gallardo',
    'Floyd Miles',
    'Jerome Bell',
    'Brooklyn Simmons',
    'Annette Black',
    'Jacob Jones',
    'Dianne Russell',
    'Guy Hawkins',
    'Cameron Williamson',
    'Brooklyn Simmons',
    'Annette Black',
    'Jacob Jones',
    'Dianne Russell',
    'Guy Hawkins',
    'Cameron Williamson',
  ];
  List text2 = [
    '@ Founder',
    '@ Web developer',
    '@ Programmer',
    '@ Web designer',
    '@ Programmer',
    '@ Director',
    '@ Founder',
    '@ Web developer',
    '@ Programmer',
    '@ Founder',
    '@ Web developer',
    '@ Programmer',
    '@ Web designer',
    '@ Programmer',
    '@ Director',
  ];

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return DefaultTabController(
        length: 3,
        initialIndex: 1,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: notifire.bgcolore,
          // color: Colors.red,
          child: LayoutBuilder(builder: (context, constraints) {
            if(constraints.maxWidth<600){
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    mainrow(),
                    const SizedBox(height: 15,),
                    secoundrow(),
                    const SizedBox(height: 15,),
                    firstcontainer(size: constraints.maxWidth),
                    const SizedBox(height: 100,),
                  ],
                ),
              );
            }
            else if(constraints.maxWidth<1000){
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: mainrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: secoundrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: firstcontainer(size: constraints.maxWidth)),
                      ],
                    ),
                  ],),
              );
            }
            else{
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: mainrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: secoundrow()),
                      ],
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: firstcontainer(size: constraints.maxWidth)),
                      ],
                    ),
                  ],
                ),
              );
            }
          },),
        ));
  }

  Widget mainrow(){
    return Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: Text('Contacts',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 135,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      const SizedBox(width: 10,),
                      Text('Contacts',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget secoundrow(){
    return Row(
      children:  [
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: notifire.containcolore1,
                borderRadius: BorderRadius.circular(15)
            ),
            child: TextField(
              style: TextStyle(color: notifire.textcolore),
              decoration: InputDecoration(
                  border:  OutlineInputBorder(
                      borderSide:  BorderSide(color: notifire.textcolore),
                      borderRadius: BorderRadius.circular(15)
                  ),
                  prefixIcon: Icon(Icons.search,color: notifire.textcolore),
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.grey.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: notifire.textcolore)
              ),
            ),
          ),
        ),
        const Spacer(),
        const Spacer(),
        Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add,color: notifire.textcolore,),
                const SizedBox(width: 4,),
                Text('Add Customer',style: TextStyle(color: notifire.textcolore),)
              ],
            ),
          ),
        ),
        const SizedBox(width: 10,),
      ],
    );
  }

  Widget firstcontainer({required size}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 15,
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: size < 210 ? 1 : size < 500 ? 1 : size < 750 ? 2 : size < 1200 ? 3 : 5,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              mainAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: (){
                  setState(() {
                    boxBorder = index;
                  });
                  showDialog<String>(
                    barrierDismissible: false,
                    barrierColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) =>  AlertDialog(
                      // elevation: 0,
                      contentPadding: EdgeInsets.zero,
                      // actionsPadding: EdgeInsets.zero,
                      // buttonPadding: EdgeInsets.zero,
                      // iconPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.zero,
                      // titlePadding: EdgeInsets.zero,
                      scrollable: false,
                      backgroundColor: notifire.containcolore1,
                      alignment: Alignment.centerRight,
                      // title: const Text('AlertDialog Title'),
                      // content: const Text('AlertDialog description'),
                      content: SingleChildScrollView(
                        child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Selected',style: TextStyle(color: notifire.textcolore),),
                                    const Spacer(),
                                    InkWell(
                                        onTap: () {
                                          Get.back();
                                        },
                                        child: Icon(Icons.close,color: notifire.textcolore,))
                                  ],
                                ),
                                const SizedBox(height: 7,),
                                Text('Design Team',style: TextStyle(color: notifire.textcolore,fontSize: 16),),
                                const SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Text('Time Log',style: TextStyle(color: notifire.textcolore,fontSize: 15),),
                                    const Spacer(),
                                    Icon(Icons.more_vert,color: notifire.textcolore,)
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,right: 30),
                                  child: CircularPercentIndicator(
                                    radius: 100,
                                    lineWidth: 30,
                                    animation: true,
                                    percent: 0.7,
                                    center:  Column(
                                      children: [
                                        const Spacer(),
                                         const Text(
                                          "Total",
                                          style:
                                          TextStyle(fontSize: 14,color: Colors.grey),
                                        ),
                                         Text(
                                          "85%",
                                          style:
                                          TextStyle(fontSize: 18,color: notifire.textcolore),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: const Color(0xff1061fc),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                Text('Projects',style: TextStyle(color: notifire.textcolore,fontSize: 15),),
                                const SizedBox(height: 15,),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Text('TOTAL',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff2962ff),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('148',style: TextStyle(color: notifire.textcolore,fontSize: 22),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Text('COMPLETED',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                  color: Color(0xff0dbab2),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('56',style: TextStyle(color: notifire.textcolore,fontSize: 22),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                const SizedBox(height: 25,),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Column(
                                      children: [
                                        const Text('INPROGRESS',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                  color: Color(0xfffb8c00),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('74',style: TextStyle(color: notifire.textcolore,fontSize: 22),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        const Text('WAITING',style: TextStyle(color: Colors.grey,fontSize: 12),),
                                        Row(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 5,
                                              decoration: BoxDecoration(
                                                  color: Color(0Xfff23045),
                                                  borderRadius: BorderRadius.circular(5)
                                              ),
                                            ),
                                            const SizedBox(width: 5,),
                                            Text('16',style: TextStyle(color: notifire.textcolore,fontSize: 22),)
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                const SizedBox(height: 35,),
                                Text('Today',style: TextStyle(fontSize: 15,color: notifire.textcolore),),
                                const SizedBox(height: 15,),
                                SizedBox(
                                  height: 380,
                                  width: 300,
                                  child: ListView.builder(
                                      itemCount: 6,
                                      itemBuilder: (BuildContext context, int index) {
                                        return ListTile(
                                          leading: CircleAvatar(backgroundImage: AssetImage('${Image1[index]}')),
                                          title: Text("${text1[index]}",style: TextStyle(color: notifire.textcolore)),
                                          subtitle: Text("${text2[index]}",style: TextStyle(color: notifire.textcolore)),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                      )
                    ),
                  );
                },
                onHover: (val){
                  setState(() {
                    if (val == false) {
                      isHover.remove(index);
                    } else {
                      isHover.add(index);
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(microseconds: 200),
                  decoration: BoxDecoration(
                    color: notifire.containcolore1,
                    border: isHover.contains(index)? Border.all(
                        color:  notifire.textcolore, width: 1)  :  checkBox.contains(index)  ? Border.all(
                        color: notifire.textcolore, width: 1) : null,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 8.0),
                    child: Column(
                      children: [
                        const Spacer(),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(65),
                            image: DecorationImage(image: AssetImage('${Image1[index]}'))
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Text('${text1[index]}',style: TextStyle(color: notifire.textcolore),),
                        Text('${text2[index]}',style: const TextStyle(color: Colors.grey,fontSize: 12),),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Text('Massage',style: TextStyle(color: notifire.textcolore),),
                            const Spacer(),
                            Text('Follow',style: TextStyle(color: notifire.textcolore),),
                          ],
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

}
