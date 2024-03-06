

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class FAQ_Screen extends StatefulWidget {
  const FAQ_Screen({super.key});

  @override
  State<FAQ_Screen> createState() => _FAQ_ScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _FAQ_ScreenState extends State<FAQ_Screen> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: notifire.bgcolore,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(child: mainrow()),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: 500,
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15),
                        child: TabBar(
                            unselectedLabelColor: notifire.textcolore,
                            labelColor: Colors.white,
                            indicator: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
                            tabs: const [
                              Text("General Questions"),
                              Text("Privacy Policy"),
                              Text("Pricinge & Plans"),
                            ]),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: Get.height,
                      width: Get.width,
                      child: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 130,),
                  ],
                ),
              );
            } else if (constraints.maxWidth < 1000) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(child: mainrow()),
                      ],
                    ),
                    const SizedBox(height: 30,),
                    SizedBox(
                      width: 500,
                      height: 50,
                      child:  TabBar(
                          unselectedLabelColor: notifire.textcolore,
                          labelColor: Colors.white,
                          indicator: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
                          tabs: const [
                            Text("General Questions"),
                            Text("Privacy Policy"),
                            Text("Pricinge & Plans"),
                          ]),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 600,
                      width: Get.width,
                      child: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              );
            } else {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Expanded(child: mainrow()),
                      ],
                    ),
                    const SizedBox(height: 30,),
                     SizedBox(
                      width: 500,
                      height: 50,
                      child:  TabBar(
                          unselectedLabelColor: notifire.textcolore,
                          labelColor: Colors.white,
                          indicator: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
                          tabs: const [
                            Text("General Questions"),
                            Text("Privacy Policy"),
                            Text("Pricinge & Plans"),
                          ]),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 600,
                      width: Get.width,
                      child: TabBarView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Container(
                                decoration:  BoxDecoration(
                                  color: notifire.containcolore1,
                                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 20,),
                                    _buildFaq4(title: 'What is Lorem ipsum?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/send.png'),
                                    _buildFaq5(title: 'Why do we use it ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/receipt.png'),
                                    _buildFaq6(title: 'Where can i get some ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/bell.png'),
                                    _buildFaq7(title: 'Where does it come from ?', content: 'if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge', img: 'assets/layout-web-7.png'),
                                    const SizedBox(height: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
//---------------------------------------------------------------------------------------------------:-


  bool variable4=false;
  Widget _buildFaq4({required String title ,required String content,required String img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side:  BorderSide(color: Colors.grey.withOpacity(0.4))
        ),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        child:  ListTileTheme(
          tileColor: variable4?  notifire.containcolore1:Colors.transparent,
          child: ExpansionTile(
            collapsedIconColor: Colors.grey.withOpacity(0.4),
            leading: Image(image: AssetImage(img),color: notifire.textcolore),
            title:  Text(title,style: TextStyle(color: notifire.textcolore)),
            onExpansionChanged: (value) {
              setState(() {
                variable4=value;
              });
            },
            children: [
              Column(
                children: [
                  Divider(color: Colors.grey.withOpacity(0.4),height: 0,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Text(content,style: const TextStyle(color: Colors.grey),)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool variable5=false;
  Widget _buildFaq5({required String title ,required String content,required String img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side:  BorderSide(color: Colors.grey.withOpacity(0.4))
        ),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        child:  ListTileTheme(
          tileColor: variable5? notifire.containcolore1:Colors.transparent,
          child: ExpansionTile(
            collapsedIconColor: Colors.grey.withOpacity(0.4),
            leading: Image(image: AssetImage(img),color: notifire.textcolore),
            title:  Text(title,style: TextStyle(color: notifire.textcolore)),
            onExpansionChanged: (value) {
              setState(() {
                variable5=value;
              });
            },
            children: [
              Column(
                children: [
                  Divider(color: Colors.grey.withOpacity(0.4),height: 0,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Text(content,style: const TextStyle(color: Colors.grey),)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool variable6=false;
  Widget _buildFaq6({required String title ,required String content,required String img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side:  BorderSide(color: Colors.grey.withOpacity(0.4))
        ),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        child:  ListTileTheme(
          tileColor: variable6? notifire.containcolore1:Colors.transparent,
          child: ExpansionTile(
            collapsedIconColor: Colors.grey.withOpacity(0.4),
            leading: Image(image: AssetImage(img),color: notifire.textcolore),
            title:  Text(title,style: TextStyle(color: notifire.textcolore)),
            onExpansionChanged: (value) {
              setState(() {
                variable6=value;
              });
            },
            children: [
              Column(
                children: [
                  Divider(color: Colors.grey.withOpacity(0.4),height: 0,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Text(content,style: const TextStyle(color: Colors.grey),)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool variable7=false;
  Widget _buildFaq7({required String title ,required String content,required String img}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
            side:  BorderSide(color: Colors.grey.withOpacity(0.4))
        ),
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        child:  ListTileTheme(
          tileColor: variable7? notifire.containcolore1:Colors.transparent,
          child: ExpansionTile(
            collapsedIconColor: Colors.grey.withOpacity(0.4),
            leading: Image(image: AssetImage(img),color: notifire.textcolore),
            title:  Text(title,style: TextStyle(color: notifire.textcolore)),
            onExpansionChanged: (value) {
              setState(() {
                variable7=value;
              });
            },
            children: [
              Column(
                children: [
                  Divider(color: Colors.grey.withOpacity(0.4),height: 0,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(child: Text(content,style: const TextStyle(color: Colors.grey),)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget mainrow() {
    return  Row(
      children: [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('FAQ', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: SizedBox(
                  height: 60,
                  width: 140,
                  child:  Row(
                    children: [
                      const SizedBox(width: 70,),
                      Image(image: const AssetImage('assets/chat-question.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('FAQ', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
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



// Widget expansiontile(){
//   return   Padding(
//     padding: EdgeInsets.only(left: 10,right: 10),
//     child: ExpansionTile(
//       title: Row(
//         children: [
//           Image(image: AssetImage(''),color: Colors.green),
//           SizedBox(width: 10,),
//           Text('',style: TextStyle(color: Colors.green),)
//         ],
//       ),
//       children: <Widget>[
//         ListTile(title: Flexible(child: Text('if several language coalester, the grammer of the resultinge language is more simple and reguler than that of the indivinual langyuaegrs. the new common language will be more simple and reguler than the exsitinge',overflow: TextOverflow.ellipsis,maxLines: 2,))),
//       ],
//     ),
//   );
// }

