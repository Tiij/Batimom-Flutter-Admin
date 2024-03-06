// ignore_for_file: camel_case_types, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';
import '../extra_screen/all_controller.dart';

class Profile_Details extends StatefulWidget {
  const Profile_Details({super.key});

  @override
  State<Profile_Details> createState() => _Profile_DetailsState();
}

class _Profile_DetailsState extends State<Profile_Details> {

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
  List<BoxShadow>? boxShadow =  [];
  static const Color appMainColor = Color(0xff0059E7);
  static const Color appGreyColor = Color(0xffa1a1ae);
  TextStyle mediumGreyTextStyle = const TextStyle(fontSize: 14,color: appGreyColor,fontFamily: "Gilroy");

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
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          firstcontain(size1: constraints.maxWidth),
                          // const SizedBox(height: 5,),
                          secoundecontain(size: constraints.maxWidth),
                          const SizedBox(height: 20,),
                        ],
                      ),
                    ),
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
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          firstcontain(size1: constraints.maxWidth),
                          const SizedBox(width: 10,),
                          secoundecontain(size: constraints.maxWidth),
                        ],
                      ),
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
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: firstcontain(size1: constraints.maxWidth),
                          ),
                          // const SizedBox(width: 10,),
                          Expanded(flex: 3,child: secoundecontain(size: constraints.maxWidth)),
                        ],
                      ),
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
                child: Text('Profile',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
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
                      Text('Profile',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget firstcontain({required double size1}){
    // final controller=quill.QuillController.basic();
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          // height: 850,
          // width: size1<600? 400 : 300,
            decoration: BoxDecoration(
              color:  notifire.drfrrancontainecolore,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Row(
                   children: [
                     Text('Profile',style: TextStyle(color: notifire.textcolore),),
                     const Spacer(),
                     const Text('Edit',style: TextStyle(color: Colors.grey),),
                   ],
                 ),
                  const SizedBox(height: 20,),
                  Center(
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(68),
                        image: const DecorationImage(image: AssetImage('assets/artist-3 1.png'))
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Center(child: Text('Geneva Mcknight',style: TextStyle(color: notifire.textcolore,fontWeight: FontWeight.bold),)),
                  const SizedBox(height: 5,),
                  const Center(child: Text('@Webdesigner',style: TextStyle(color: Colors.grey,fontSize: 12),)),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          color: notifire.containcolore1,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Follow',style: TextStyle(color: notifire.textcolore),)),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: Text('Message',style: TextStyle(color: notifire.textcolore),)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Text('About Me :',style: TextStyle(color: notifire.textcolore,fontSize: 18,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s,',style: TextStyle(color: Colors.grey,fontSize: 14),maxLines: 3,),
                  const SizedBox(height: 10,),
                  const Row(
                    children: [
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Full Name',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text('Mobile',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text('Email',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text('Location',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(':',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text(':',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text(':',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text(':',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      ),
                      SizedBox(width: 20,),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Geneva D.Mcknight',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text('+96381 66340',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text('user@gmail.com',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                            Text('USA',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(65),
                          image: const DecorationImage(image: AssetImage('assets/facebook.png'))
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(65),
                          image: const DecorationImage(image: AssetImage('assets/instagram_onr.png'))
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          color: const Color(0xff1da1f2),
                          borderRadius: BorderRadius.circular(65),
                          // image: DecorationImage(image: AssetImage('assets/Twitter_one.png'))
                        ),
                        child: const Center(child: Image(image: AssetImage('assets/Twitter_one.png'),color: Colors.white,)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30,),
                  ListTile(
                    leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(68),
                          image: const DecorationImage(image: AssetImage('assets/artist-3 1.png'))
                      ),
                    ),
                    title: Text('Jeremy Tomlinson',style: TextStyle(color: notifire.textcolore),maxLines: 1,),
                    subtitle: const Text('about 2 minutes ago',style: TextStyle(color: Colors.grey),maxLines: 1,),
                  ),
                  const SizedBox(height: 20,),
                  const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',style: TextStyle(color: Colors.grey,fontSize: 14),maxLines: 2,),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                        separatorBuilder: (context, index) {
                          return const SizedBox(height: 0);
                        },
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            width: 250,
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(image: AssetImage('assets/Eventimage 2.jpg'),fit: BoxFit.fill)
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      // Image(image: const AssetImage('assets/heart.png'),color: notifire.textcolore,height: 20,width: 20,),
                      SvgPicture.asset('assets/heart1.svg',color: notifire.textcolore,height: 20,width: 20,),
                      const SizedBox(width: 5,),
                      Flexible(child: Text('Like',style: TextStyle(color: notifire.textcolore,fontSize: 15),maxLines: 1,)),
                      const SizedBox(width: 10,),
                      // Image(image: const AssetImage('assets/chat-dots.png'),color: notifire.textcolore,height: 20,width: 20,),
                      SvgPicture.asset('assets/chat-dots-notification.svg',color: notifire.textcolore,height: 20,width: 20,),
                      const SizedBox(width: 5,),
                      Flexible(child: Text('Comment',style: TextStyle(color: notifire.textcolore),maxLines: 1,)),
                      const SizedBox(width: 10,),
                      // Image(image: const AssetImage('assets/send2.png'),color: notifire.textcolore,height: 20,width: 20,),
                      SvgPicture.asset('assets/send123.svg',color: notifire.textcolore,height: 20,width: 20,),
                      const SizedBox(width: 5,),
                      Flexible(child: Text('Share',style: TextStyle(color: notifire.textcolore),maxLines: 1,)),
                    ],
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
        ),
      ),
    );
  }

  Widget secoundecontain({required double size}){
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          size > 800 ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    // height: 150,
                    // width: 200,
                    decoration: BoxDecoration(
                      color: notifire.drfrrancontainecolore,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(68),
                                  image: const DecorationImage(image: AssetImage('assets/artist-3 1.png')),
                              ),
                            ),
                            title: Text('Jeremy Tomlinson',style: TextStyle(color: notifire.textcolore),maxLines: 1,),
                            subtitle: const Text('about 2 minutes ago',style: TextStyle(color: Colors.grey),maxLines: 1,),
                          ),
                          const SizedBox(height: 10,),
                          const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Ipsum is simply dummy text of the printing and typesetting',style: TextStyle(color: Colors.grey,fontSize: 14),maxLines: 2,),
                          const SizedBox(height: 10,),
                          Container(
                            height: 295,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(image: AssetImage('assets/group-office-image.jpg'),fit: BoxFit.cover)
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Row(
                            children: [
                              // Image(image: const AssetImage('assets/heart.png'),color: notifire.textcolore,height: 20,width: 20,),
                              SvgPicture.asset('assets/heart1.svg',color: notifire.textcolore,height: 20,width: 20,),
                              const SizedBox(width: 5,),
                              Flexible(child: Text('Like',style: TextStyle(color: notifire.textcolore,fontSize: 15),maxLines: 1,)),
                              const SizedBox(width: 10,),
                              // Image(image: const AssetImage('assets/chat-dots.png'),color: notifire.textcolore,height: 20,width: 20,),
                              SvgPicture.asset('assets/chat-dots-notification.svg',color: notifire.textcolore,height: 20,width: 20,),
                              const SizedBox(width: 5,),
                              Flexible(child: Text('Comment',style: TextStyle(color: notifire.textcolore),maxLines: 1,)),
                              const SizedBox(width: 10,),
                              // Image(image: const AssetImage('assets/send2.png'),color: notifire.textcolore,height: 20,width: 20,),
                              SvgPicture.asset('assets/send123.svg',color: notifire.textcolore,height: 20,width: 20,),
                              const SizedBox(width: 5,),
                              Flexible(child: Text('Share',style: TextStyle(color: notifire.textcolore),maxLines: 1,)),
                            ],
                          ),
                          const SizedBox(height: 10,),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    // width: 100,
                    decoration: BoxDecoration(
                      color: notifire.drfrrancontainecolore,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Team',style: TextStyle(color: notifire.textcolore),),
                              const Spacer(),
                              Icon(Icons.person,color: notifire.textcolore,),
                              const SizedBox(width: 5,),
                              Text('34',style: TextStyle(color: notifire.textcolore),),
                            ],
                          ),
                          SizedBox(
                            height: 380,
                            // width: 300,
                            child: ListView.builder(
                                itemCount: 6,
                                itemBuilder: (BuildContext context, int index) {
                                  return ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: CircleAvatar(backgroundImage: AssetImage('${Image1[index]}')),
                                    title: Text("${text1[index]}",style: TextStyle(color: notifire.textcolore)),
                                    subtitle: Text("${text2[index]}",style: const TextStyle(color: Colors.grey)),
                                    trailing: const Icon(Icons.mark_email_read_outlined,color: Colors.grey),
                                  );
                                }),
                          ),
                          const SizedBox(height: 20,),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: CircleAvatar(radius: 30,backgroundColor: notifire.containcolore1, child: const Icon(Icons.add)),
                            title: Text('Invite new team member',style: TextStyle(color: notifire.textcolore),maxLines: 2,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ):
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  // height: 150,
                  // width: 200,
                  decoration: BoxDecoration(
                    color: notifire.drfrrancontainecolore,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(68),
                              image: const DecorationImage(image: AssetImage('assets/artist-3 1.png')),
                            ),
                          ),
                          title: Text('Jeremy Tomlinson',style: TextStyle(color: notifire.textcolore),maxLines: 1,),
                          subtitle: const Text('about 2 minutes ago',style: TextStyle(color: Colors.grey),maxLines: 1,),
                        ),
                        const SizedBox(height: 10,),
                        const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Ipsum is simply dummy text of the printing and typesetting',style: TextStyle(color: Colors.grey,fontSize: 14),maxLines: 2,),
                        const SizedBox(height: 10,),
                        Container(
                          height: 295,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(image: AssetImage('assets/group-office-image.jpg'),fit: BoxFit.cover)
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Image(image: const AssetImage('assets/heart.png'),color: notifire.textcolore,height: 20,width: 20,),
                            const SizedBox(width: 5,),
                            Flexible(child: Text('Like',style: TextStyle(color: notifire.textcolore,fontSize: 15),maxLines: 1,)),
                            const SizedBox(width: 10,),
                            Image(image: const AssetImage('assets/chat-dots.png'),color: notifire.textcolore,height: 20,width: 20,),
                            const SizedBox(width: 5,),
                            Flexible(child: Text('Comment',style: TextStyle(color: notifire.textcolore),maxLines: 1,)),
                            const SizedBox(width: 10,),
                            Image(image: const AssetImage('assets/send2.png'),color: notifire.textcolore,height: 20,width: 20,),
                            const SizedBox(width: 5,),
                            Flexible(child: Text('Share',style: TextStyle(color: notifire.textcolore),maxLines: 1,)),
                          ],
                        ),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                child: Container(
                  // width: 100,
                  decoration: BoxDecoration(
                    color: notifire.drfrrancontainecolore,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Team',style: TextStyle(color: notifire.textcolore),),
                            const Spacer(),
                            Icon(Icons.person,color: notifire.textcolore,),
                            const SizedBox(width: 5,),
                            Text('34',style: TextStyle(color: notifire.textcolore),),
                          ],
                        ),
                        SizedBox(
                          height: 380,
                          // width: 300,
                          child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (BuildContext context, int index) {
                                return ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading: CircleAvatar(backgroundImage: AssetImage('${Image1[index]}')),
                                  title: Text("${text1[index]}",style: TextStyle(color: notifire.textcolore)),
                                  subtitle: Text("${text2[index]}",style: const TextStyle(color: Colors.grey)),
                                  trailing: const Icon(Icons.mark_email_read_outlined,color: Colors.grey),
                                );
                              }),
                        ),
                        const SizedBox(height: 20,),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: CircleAvatar(radius: 30,backgroundColor: notifire.containcolore1, child: const Icon(Icons.add)),
                          title: Text('Invite new team member',style: TextStyle(color: notifire.textcolore),maxLines: 2,),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: notifire.drfrrancontainecolore,
                      boxShadow: boxShadow,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        SizedBox(
                          // height: 80,
                          width: 500,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                TabBar(
                                  indicatorColor: appMainColor,
                                  tabs: [
                                    Tab( child: Text("Description",style: TextStyle(fontSize: 15,color: notifire.textcolore),),),
                                    Tab( child: Text("Reviews",style: TextStyle(fontSize: 15,color: notifire.textcolore),),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            height: 400,
                            child:   TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(height: 10,),
                                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15),maxLines: 3,),
                                      const SizedBox(height: 10,),
                                      Text("proident, sunt in culpa qui officia deserunt mollit anim id est laborum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non .",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15),maxLines: 3,),
                                      const SizedBox(height: 10,),
                                      Text("incident ut labore et dolore magna aliqua. Ut enim ad minim veniam Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15),maxLines: 3,),
                                      const SizedBox(height: 10,),
                                      Text("cupidity non proident, sunt in culpa qui officia laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15),maxLines: 3,),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        leading: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(68),
                                              image: const DecorationImage(image: AssetImage('assets/artist-3 1.png'))
                                          ),
                                        ),
                                        title: Text('Jeremy Tomlinson',style: TextStyle(color: notifire.textcolore),maxLines: 1,),
                                        subtitle: const Text('about 2 minutes ago',style: TextStyle(color: Colors.grey),maxLines: 1,),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star_border,color: Colors.orange,),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15),maxLines: 3,),
                                      const SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          const Icon(Icons.thumb_up_alt,color: Colors.blueAccent,),
                                          const SizedBox(width : 10),
                                          Text('Thank(234)',style: TextStyle(color: notifire.textcolore),)
                                        ],
                                      ),
                                      const SizedBox(height: 30,),

                                      ListTile(
                                        contentPadding: EdgeInsets.zero,
                                        leading: Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(68),
                                              image: const DecorationImage(image: AssetImage('assets/artist-2 1q.png'))
                                          ),
                                        ),
                                        title: Text('Darlena Robertson',style: TextStyle(color: notifire.textcolore),maxLines: 1,),
                                        subtitle: const Text('about 2 minutes ago',style: TextStyle(color: Colors.grey),maxLines: 1,),
                                      ),
                                      const Row(
                                        children: [
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star,color: Colors.orange,),
                                          Icon(Icons.star_border,color: Colors.orange,),
                                        ],
                                      ),
                                      const SizedBox(height: 10,),
                                      Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",style: mediumGreyTextStyle.copyWith(height: 1.5,fontSize: 15),maxLines: 3,),
                                      const SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          const Icon(Icons.thumb_up_alt,color: Colors.blueAccent,),
                                          const SizedBox(width : 10),
                                          Text('Thank(144)',style: TextStyle(color: notifire.textcolore),)
                                        ],
                                      ),
                                      const SizedBox(height: 30,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }



}



// auto complete select


