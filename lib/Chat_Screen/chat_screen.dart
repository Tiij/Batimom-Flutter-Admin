// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import 'chat2.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({super.key});

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}
ColorNotifire notifire = ColorNotifire();
class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mainrow(),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          firstcontain(size: constraints.maxWidth,context: context)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 130,),
                ],
              ),
            );
          } else if (constraints.maxWidth < 1000) {
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: mainrow()),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          firstcontain(size: constraints.maxWidth,context: context)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return SingleChildScrollView(
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
                    padding: const EdgeInsets.only(left: 10,right: 10,bottom: 0),
                    child: Container(
                      decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          firstcontain(size: constraints.maxWidth,context: context),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                ],
              ),
            );
          }
        },
      ),
    );
  }



  Widget mainrow() {
    return   Row(
      children: [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Chat', style: TextStyle(fontFamily: 'Jost-SemiBold', fontSize: 20,color: notifire.textcolore, fontWeight: FontWeight.bold), overflow: TextOverflow.ellipsis),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20, left: 0),
                child: SizedBox(
                  height: 60,
                  width: 145,
                  child: Row(
                    children: [
                      const SizedBox(width: 70,),
                      Image(image: const AssetImage('assets/chat-dots-notification.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Chat', style: TextStyle(color: notifire.textcolore, fontSize: 15), overflow: TextOverflow.ellipsis),
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


  Widget firstcontain({required double size,context}){
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: con1(context,size),
          ),
          size<800? const SizedBox() : Expanded(
            flex: 6,
            child: con2(),
          ),
        ],
      ),
    );
  }

  Widget con1(context,double size){return Container(
    // height: 100,
    // color: Colors.red,
    decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.4)),
      borderRadius: BorderRadius.circular(10)
    ),
    child:  Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: 50,
            width: 300,
            child: TextField(
              style: TextStyle(color: notifire.textcolore),
              decoration: InputDecoration(
                  prefixIcon:  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Image(image: const AssetImage('assets/search.png'),color: notifire.textcolore),
                  ),
                  hintText: 'Search',hintStyle: TextStyle(color: notifire.textcolore),
                  focusColor: Colors.red,
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
              ),
            ),
          ),
        ),
         ListTile(
          leading: Text('Online now',style: TextStyle(color: notifire.textcolore)),
          trailing: const Text('All',style: TextStyle(color: Colors.green)),
        ),
         const Row(
          children: [
            SizedBox(width: 10,),
            Expanded(child: CircleAvatar(backgroundImage: AssetImage('assets/artist-3 1.png'))),
            SizedBox(width: 10,),
            Expanded(child: CircleAvatar(backgroundImage: AssetImage('assets/artist-1 1.png'))),
            SizedBox(width: 10,),
            Expanded(child: CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png'))),
            SizedBox(width: 10,),
            Expanded(child: CircleAvatar(backgroundImage: AssetImage('assets/artist-2 1q.png'))),
            SizedBox(width: 10,),
            Expanded(child: CircleAvatar(backgroundImage: AssetImage('assets/artist-3 1.png'))),
            SizedBox(width: 10,),
            Expanded(child: CircleAvatar(backgroundImage: AssetImage('assets/artist-1 1.png'))),
            SizedBox(width: 10,),
          ],
        ),
        const SizedBox(height: 10,),
        Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
        const SizedBox(height: 10,),
        ListTile(
          onTap: () {
            size<800?  Navigator.push(context, MaterialPageRoute(builder: (context) => const Chat2(),)) : null;
          },
          leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-3 1.png')),
          title:  Text('Diyorbek Dev',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
          subtitle: Row(children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(65)
              ),
            ),
            const SizedBox(width: 5,),
             Text('Active',style: TextStyle(color: notifire.textcolore)),
          ]),
          trailing:  Icon(Icons.more_horiz,color: notifire.textcolore),
        ),
        const SizedBox(height: 10,),
        Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
        const SizedBox(height: 5,),
         Row(
          children: [
            const SizedBox(width: 10,),
            Image(image: const AssetImage('assets/thumbtack-vertical.png'),color: notifire.textcolore),
            const SizedBox(width: 10,),
            Text('Pinned',style: TextStyle(color: notifire.textcolore),)
          ],
        ),
        const SizedBox(height: 5,),
        Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
        const SizedBox(height: 5,),
        listtile(img: 'assets/artist-8 1.png', titletext: 'Kirollos', subtitletext: 'Hey! there i`m  avalible ', traillingtext: '04 min'),
        const SizedBox(height: 5,),
        Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
        const SizedBox(height: 5,),
        listtile(img: 'assets/artist-1 1.png', titletext: 'Whimsical', subtitletext: 'i`ve finished it! See you so ', traillingtext: '09 min'),
        const SizedBox(height: 5,),
        Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
        const SizedBox(height: 10,),
         SizedBox(
          width: 300,
          height: 40,
          child:  Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: TabBar(
                unselectedLabelColor: notifire.textcolore,
                labelColor: Colors.white,
                indicator: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
                tabs: const [
                  Text("Chat"),
                  Text("Group"),
                  Text("Contact"),
                ]),
          ),
        ),
        const SizedBox(height: 5,),
        SizedBox(
          height: 300,
          width: Get.width,
          child: TabBarView(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                      const SizedBox(height: 5,),
                      listtile(img: 'assets/artist-1 1.png', titletext: 'Kirollos', subtitletext: 'Hey! there i`m  avalible ', traillingtext: '09 min'),
                      const SizedBox(height: 5,),
                      Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                      const SizedBox(height: 5,),
                      listtile(img: 'assets/artist-8 1.png', titletext: 'Razi Kallayi', subtitletext: 'i`ve finished it! See you so ', traillingtext: '09 min'),
                      Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                      const SizedBox(height: 5,),
                      listtile(img: 'assets/artist-1 1.png', titletext: 'Morkos qp', subtitletext: 'This theam it! See you so ', traillingtext: '21 min'),
                      const SizedBox(height: 5,),
                      Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                      const SizedBox(height: 5,),
                      listtile(img: 'assets/artist-8 1.png', titletext: 'Nik Graf', subtitletext: 'Hey! there i`m  avalible', traillingtext: '1 hr'),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      groupcontain(txt1: 'G', txt2: 'General'),
                      const SizedBox(height: 10,),
                      groupcontain(txt1: 'R', txt2: 'Reporting'),
                      const SizedBox(height: 10,),
                      groupcontain(txt1: 'M', txt2: 'Meeting'),
                      const SizedBox(height: 10,),
                      groupcontain(txt1: 'A', txt2: 'Project A'),
                      const SizedBox(height: 10,),
                      groupcontain(txt1: 'B', txt2: 'Project B'),
                      const SizedBox(height: 10,),
                      groupcontain(txt1: 'Q', txt2: 'Quality'),
                      const SizedBox(height: 10,),
                      groupcontain(txt1: 'W', txt2: 'Water B'),
                      const SizedBox(height: 10,),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: const Color(0xffCFD6F6),
                                borderRadius: BorderRadius.circular(65)
                            ),
                            child: const Center(child: Text('A',style: TextStyle(color: Color(0xff556EE6)),)),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 30,top: 10),
                          child: Text('Adam Miller',style: TextStyle(color: notifire.textcolore)),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 30,top: 10),
                          child: Text('Alfonso Fisher',style: TextStyle(color: notifire.textcolore)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: const Color(0xffCFD6F6),
                                borderRadius: BorderRadius.circular(65)
                            ),
                            child: const Center(child: Text('B',style: TextStyle(color: Color(0xff556EE6)),)),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 30,top: 10),
                          child: Text('Bonnie Harney',style: TextStyle(color: notifire.textcolore)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20),
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: const Color(0xffCFD6F6),
                                borderRadius: BorderRadius.circular(65)
                            ),
                            child: const Center(child: Text('C',style: TextStyle(color: Color(0xff556EE6)),)),
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 30,top: 10),
                          child: Text('Charles Harney',style: TextStyle(color: notifire.textcolore)),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(left: 30,top: 10),
                          child: Text('Charles Jones',style: TextStyle(color: notifire.textcolore)),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      ],
    ),
  );}

  Widget con2(){return Column(
    // mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ListTile(
        title:  Text('Kirollos',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
        subtitle: Row(children: [
          Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(65)
            ),
          ),
           const SizedBox(width: 5,),
           Text('Active Now',style: TextStyle(color: notifire.textcolore),),
        ]),
        trailing:  SizedBox(
          height: 60,
          width: 60,
          // color: Colors.red,
          child: Row(
            children: [
              Image(image: const AssetImage('assets/settings.png'),color: notifire.textcolore),
              const SizedBox(width: 10,),
              Image(image: const AssetImage('assets/more-horizontal.png'),color: notifire.textcolore),
            ],
          ),
        ),
      ),
      const SizedBox(height: 10,),
      Divider(color: Colors.grey.withOpacity(0.4),),
      Row(
        children: [
          SizedBox(
            height: 60,
            width: 250,
            child: ListTile(
              dense: true,
              leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png'),),
              title:  Text('Kirollos',style: TextStyle(color: notifire.textcolore)),
              subtitle: Container(
                height: 30,
                width: 10,
                decoration: BoxDecoration(
                  color: const Color(0xffD7F4E2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child:  const Center(child: Text('Hey! I am available',style: TextStyle(),)),
              ),
            ),
          ),
        ],
      ),
       Row(
        children: [
          const SizedBox(width: 150,),
          Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
          Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60,
              child: ListTile(
                dense: true,
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Text('Nik Graf',style: TextStyle(color: notifire.textcolore)),
                    const SizedBox(height: 10,),
                    Container(
                      height: 30,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(child: Text('Hi, How are you? What about our next meeting')),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
          Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
          const SizedBox(width: 270,)
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 70,
            decoration: const BoxDecoration(
                color: Color(0xffEFF2F7),
                borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: const Center(child: Text('Today')),
          )
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        children: [
          SizedBox(
            height: 60,
            width: 200,
            child: ListTile(
              dense: true,
              leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png'),),
              title:  Text('Kirollos',style: TextStyle(color: notifire.textcolore)),
              subtitle: Container(
                height: 30,
                width: 10,
                decoration: BoxDecoration(
                  color: const Color(0xffD7F4E2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(child: Text('Hello')),
              ),
            ),
          ),
        ],
      ),
       Row(
        children: [
          const SizedBox(width: 150,),
          Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
          Text('10:00',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60,
              child: ListTile(
                dense: true,
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Text('Nik Graf',style: TextStyle(color: notifire.textcolore)),
                    const SizedBox(height: 10,),
                    Container(
                      height: 30,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:  const Center(child: Text('Hi, How are you? What about our next meeting')),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
          Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
          const SizedBox(width: 270,)
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        children: [
          SizedBox(
            height: 60,
            width: 220,
            child: ListTile(
              dense: true,
              leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png'),),
              title:  Text('Kirollos',style: TextStyle(color: notifire.textcolore)),
              subtitle: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: const Color(0xffD7F4E2),
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                ),
                child:  const Center(child: Text('Yesh everthing fine',overflow: TextOverflow.ellipsis,maxLines: 1,)),
              ),
            ),
          ),
        ],
      ),
       Row(
        children: [
          const SizedBox(width: 150,),
          Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
          Text('10:00',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
        ],
      ),
      const SizedBox(height: 20,),
      Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 60,
              child: ListTile(
                dense: true,
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Text('Nik Graf',style: TextStyle(color: notifire.textcolore)),
                    const SizedBox(height: 10,),
                    Container(
                      height: 30,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xffEFF2F7),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(child: Text('Hi, How are you? What about our next meeting')),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 10,),
       Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
          Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
          const SizedBox(width: 270,)
        ],
      ),
      const SizedBox(height: 70,),
      Row(
        children: [
           const SizedBox(width: 10,),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 50,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                decoration: InputDecoration(
                    hintText: 'Enter Message...',hintStyle: TextStyle(color: notifire.textcolore),
                    focusColor: Colors.red,
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                    border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding:  const EdgeInsets.only(left: 10,right: 10),
              child:   Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(child: Text('Send',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,)),
                      Icon(Icons.arrow_right),
                    ],
                  )
                ),
              ),
            ),
          )
        ],
      ),
      const SizedBox(height: 10,),

    ],
  );}

  Widget firstcontain2(){
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              // height: 100,
              // color: Colors.red,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.4))
              ),
              child:  Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: 50,
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon:  Image(image: const AssetImage('assets/search.png'),color: notifire.textcolore),
                            hintText: 'Search',hintStyle: TextStyle(color: notifire.textcolore),
                            focusColor: Colors.red,
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                            border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                        ),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Text('Online now',style: TextStyle(color: Colors.black)),
                    trailing: Text('All',style: TextStyle(color: Colors.green)),
                  ),
                  const Row(
                    children: [
                      SizedBox(width: 10,),
                      Expanded(child: CircleAvatar(child: Image(image: AssetImage('assets/123sdf.png')))),
                      SizedBox(width: 10,),
                      Expanded(child: CircleAvatar(child: Image(image: AssetImage('assets/manscf.png')))),
                      SizedBox(width: 10,),
                      Expanded(child: CircleAvatar(child: Image(image: AssetImage('assets/manmk.png')))),
                      SizedBox(width: 10,),
                      Expanded(child: CircleAvatar(child: Image(image: AssetImage('assets/womanqp.png')))),
                      SizedBox(width: 10,),
                      Expanded(child: CircleAvatar(child: Image(image: AssetImage('assets/manazsdc.png')))),
                      SizedBox(width: 10,),
                      Expanded(child: CircleAvatar(child: Image(image: AssetImage('assets/manscf.png')))),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                  const SizedBox(height: 10,),
                  ListTile(
                    leading: const CircleAvatar(child: Image(image: AssetImage('assets/123sdf.png'))),
                    title: const Text('Diyorbek Dev',style: TextStyle(fontSize: 15)),
                    subtitle: Row(children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(65)
                        ),
                      ),
                      const SizedBox(width: 5,),
                      const Text('Active'),
                    ]),
                    trailing: const Icon(Icons.more_horiz),
                  ),
                  const SizedBox(height: 10,),
                  Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                  const SizedBox(height: 5,),
                  const Row(
                    children: [
                      SizedBox(width: 10,),
                      Image(image: AssetImage('assets/thumbtack-vertical.png')),
                      SizedBox(width: 10,),
                      Text('Pinned')
                    ],
                  ),
                  const SizedBox(height: 5,),
                  Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                  const SizedBox(height: 5,),
                  listtile(img: 'assets/manmk.png', titletext: 'Frank Vickery', subtitletext: 'Hey! there i`m  avalible ', traillingtext: '04 min'),
                  const SizedBox(height: 5,),
                  Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                  const SizedBox(height: 5,),
                  listtile(img: 'assets/womanqp.png', titletext: 'Robert Winter', subtitletext: 'i`ve finished it! See you so ', traillingtext: '09 min'),
                  const SizedBox(height: 5,),
                  Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                  const SizedBox(height: 10,),
                  const SizedBox(
                    width: 300,
                    height: 40,
                    child:  TabBar(
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.white,
                        indicator: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.green),
                        tabs: [
                          Text("Chat"),
                          Text("Group"),
                          Text("Contacts"),
                        ]),
                  ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    height: 300,
                    width: Get.width,
                    child: TabBarView(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                                const SizedBox(height: 5,),
                                listtile(img: 'assets/manmk.png', titletext: 'Frank Vickery', subtitletext: 'Hey! there i`m  avalible ', traillingtext: '09 min'),
                                const SizedBox(height: 5,),
                                Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                                const SizedBox(height: 5,),
                                listtile(img: 'assets/womanqp.png', titletext: 'Robert Winter', subtitletext: 'i`ve finished it! See you so ', traillingtext: '09 min'),
                                Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                                const SizedBox(height: 5,),
                                listtile(img: 'assets/manscf.png', titletext: 'Crystal Elliott', subtitletext: 'This theam it! See you so ', traillingtext: '21 min'),
                                const SizedBox(height: 5,),
                                Divider(color: Colors.grey.withOpacity(0.4),height: 10,),
                                const SizedBox(height: 5,),
                                listtile(img: 'assets/123sdf.png', titletext: 'Kristen Steele', subtitletext: 'Hey! there i`m  avalible', traillingtext: '1 hr'),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                groupcontain(txt1: 'G', txt2: 'General'),
                                const SizedBox(height: 10,),
                                groupcontain(txt1: 'R', txt2: 'Reporting'),
                                const SizedBox(height: 10,),
                                groupcontain(txt1: 'M', txt2: 'Meeting'),
                                const SizedBox(height: 10,),
                                groupcontain(txt1: 'A', txt2: 'Project A'),
                                const SizedBox(height: 10,),
                                groupcontain(txt1: 'B', txt2: 'Project B'),
                                const SizedBox(height: 10,),
                                groupcontain(txt1: 'Q', txt2: 'Quality'),
                                const SizedBox(height: 10,),
                                groupcontain(txt1: 'W', txt2: 'Water B'),
                                const SizedBox(height: 10,),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffCFD6F6),
                                        borderRadius: BorderRadius.circular(65)
                                    ),
                                    child: const Center(child: Text('A',style: TextStyle(color: Color(0xff556EE6)),)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30,top: 10),
                                  child: Text('Adam Miller'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30,top: 10),
                                  child: Text('Alfonso Fisher'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffCFD6F6),
                                        borderRadius: BorderRadius.circular(65)
                                    ),
                                    child: const Center(child: Text('B',style: TextStyle(color: Color(0xff556EE6)),)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30,top: 10),
                                  child: Text('Bonnie Harney'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,left: 20),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        color: const Color(0xffCFD6F6),
                                        borderRadius: BorderRadius.circular(65)
                                    ),
                                    child: const Center(child: Text('C',style: TextStyle(color: Color(0xff556EE6)),)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30,top: 10),
                                  child: Text('Charles Harney'),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 30,top: 10),
                                  child: Text('Charles Jones'),
                                ),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text('Frank Vickery',style: TextStyle(fontSize: 15)),
                  subtitle: Row(children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(65)
                      ),
                    ),
                    const SizedBox(width: 5,),
                    const Text('Active Now'),
                  ]),
                  trailing: const SizedBox(
                    height: 60,
                    width: 60,
                    // color: Colors.red,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/settings.png')),
                        SizedBox(width: 10,),
                        Image(image: AssetImage('assets/more-horizontal.png')),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Divider(color: Colors.grey.withOpacity(0.4),),
                Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 200,
                      child: ListTile(
                        dense: true,
                        leading: const CircleAvatar(child: Image(image: AssetImage('assets/123sdf.png'))),
                        title: const Text('Frank Vickery'),
                        subtitle: Container(
                          height: 30,
                          width: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xffD7F4E2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(child: Text('Hey! I am available')),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 150,),
                    Icon(Icons.lock_clock,size: 10),
                    Text('12:09',style: TextStyle(fontSize: 10),),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ListTile(
                          dense: true,
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text('Ricky Clark'),
                              const SizedBox(height: 10,),
                              Container(
                                height: 30,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: const Color(0xffEFF2F7),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(child: Text('Hi, How are you? What about our next meeting')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.lock_clock,size: 10),
                    Text('12:09',style: TextStyle(fontSize: 10),),
                    SizedBox(width: 270,)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 70,
                      decoration: const BoxDecoration(
                          color: Color(0xffEFF2F7),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: const Center(child: Text('Today')),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 200,
                      child: ListTile(
                        dense: true,
                        leading: const CircleAvatar(child: Image(image: AssetImage('assets/123sdf.png'))),
                        title: const Text('Frank Vickery'),
                        subtitle: Container(
                          height: 30,
                          width: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xffD7F4E2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(child: Text('Hello')),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 150,),
                    Icon(Icons.lock_clock,size: 10),
                    Text('10:00',style: TextStyle(fontSize: 10),),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ListTile(
                          dense: true,
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text('Ricky Clark'),
                              const SizedBox(height: 10,),
                              Container(
                                height: 30,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: const Color(0xffEFF2F7),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(child: Text('Hi, How are you? What about our next meeting')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.lock_clock,size: 10),
                    Text('12:09',style: TextStyle(fontSize: 10),),
                    SizedBox(width: 270,)
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    SizedBox(
                      height: 60,
                      width: 200,
                      child: ListTile(
                        dense: true,
                        leading: const CircleAvatar(child: Image(image: AssetImage('assets/123sdf.png'))),
                        title: const Text('Frank Vickery'),
                        subtitle: Container(
                          height: 30,
                          width: 10,
                          decoration: BoxDecoration(
                            color: const Color(0xffD7F4E2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(child: Text('Yesh everthing fine')),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 150,),
                    Icon(Icons.lock_clock,size: 10),
                    Text('10:00',style: TextStyle(fontSize: 10),),
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 60,
                        child: ListTile(
                          dense: true,
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text('Ricky Clark'),
                              const SizedBox(height: 10,),
                              Container(
                                height: 30,
                                width: 300,
                                decoration: BoxDecoration(
                                  color: const Color(0xffEFF2F7),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(child: Text('Hi, How are you? What about our next meeting')),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.lock_clock,size: 10),
                    Text('12:09',style: TextStyle(fontSize: 10),),
                    SizedBox(width: 270,)
                  ],
                ),
                const SizedBox(height: 70,),
                Row(
                  children: [
                    const SizedBox(width: 10,),
                    Expanded(
                      flex: 5,
                      child: SizedBox(
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Message...',
                              focusColor: Colors.red,
                              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                              border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(child: Text('Send',style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,)),
                              SizedBox(width: 5,),
                              Icon(Icons.send,color: Colors.white,size: 15,)
                            ],
                          )),
                        ),
                      ),
                    )
                  ],
                )

              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget listtile({required String img,required String titletext,required String subtitletext,required String traillingtext}){
    return ListTile(
      leading: Stack(
        children: [
          CircleAvatar(backgroundImage: AssetImage(img)),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 28),
            child: Container(
              height: 13,
              width: 13,
              decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border.all(color: Colors.white,width: 2),
                  borderRadius: BorderRadius.circular(65)
              ),
            ),
          ),
        ],
      ),
      title: Text(titletext,style:  TextStyle(fontSize: 15,color: notifire.textcolore)),
      subtitle: Row(children: [
        Flexible(child: Text(subtitletext,overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore),)),
      ]),
      trailing:  Text(traillingtext,style: TextStyle(color: notifire.textcolore)),
    );
  }


  Widget groupcontain({required String txt1,required String txt2}){
    return ListTile(
      leading: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
            color: const Color(0xffCFD6F6),
            borderRadius: BorderRadius.circular(65)
        ),
        child: Center(child: Text(txt1,style: const TextStyle(color: Color(0xff556EE6)),)),
      ),
      title: Text(txt2,style: TextStyle(color: notifire.textcolore)),
    );
  }


}