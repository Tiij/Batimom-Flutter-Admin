// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class tabs extends StatefulWidget {
  const tabs({super.key});

  @override
  State<tabs> createState() => _tabsState();
}

class _tabsState extends State<tabs> with TickerProviderStateMixin{
  TabController? _controller ;
  TabController? _controller1 ;

  TabController? __controller ;
  TabController? __controller2 ;


  TabController? ___controller ;
  TabController? ___controller3 ;


  TabController? ____controller ;
  TabController? ____controller4 ;
  @override
  void initState() {
  _controller  = TabController(length: 3, vsync: this);
  _controller1  = TabController(length: 5, vsync: this);

  __controller  = TabController(length: 3, vsync: this);
  __controller2  = TabController(length: 5, vsync: this);

  ___controller  = TabController(length: 2, vsync: this);
  ___controller3  = TabController(length: 4, vsync: this);



  ____controller  = TabController(length: 3, vsync: this);
  ____controller4  = TabController(length: 4, vsync: this);

    super.initState();
  }

  ColorNotifire notifire = ColorNotifire();
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
                firstcontain(_controller,constraints.maxWidth),
                const SizedBox(height: 20,),
                secoundecontain(__controller,constraints.maxWidth),
                const SizedBox(height: 20,),
                thirdcontain(___controller,constraints.maxWidth),
                const SizedBox(height: 20,),
                fourcontain(____controller,constraints.maxWidth),
                const SizedBox(height: 170,),
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
                    Expanded(child: firstcontain(_controller1,constraints.maxWidth)),
                    Expanded(child: secoundecontain(__controller2,constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: thirdcontain(___controller3,constraints.maxWidth)),
                    Expanded(child: fourcontain(____controller4,constraints.maxWidth))
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
                    Expanded(child: firstcontain(_controller1,constraints.maxWidth)),
                    Expanded(child: secoundecontain(__controller2,constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: thirdcontain(___controller3,constraints.maxWidth)),
                    Expanded(child: fourcontain(____controller4,constraints.maxWidth))
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



  Widget firstcontain(TabController? controller,double size){
    return Padding(
      padding:   const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        // height: 250,
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:   Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                      child: Text('Defaulte Tabs',style: TextStyle(fontSize: 20,color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 40,
                // width: 510,
                child: Padding(
                  padding:  const EdgeInsets.only(left: 10,right: 10),
                  child: TabBar(
                    controller: controller,
                    labelStyle:  TextStyle(color: notifire.bgcolore,fontFamily: 'Jost-SemiBold'),
                    labelColor: Colors.white,
                    unselectedLabelColor: notifire.textcolore,
                    indicator: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    tabs:  size<600?
                    <Widget>[
                      const Tab(
                        text: 'Profile',
                      ),
                      const Tab(
                        text: 'Contact',
                      ),
                      const Tab(
                        text: 'Settinge',
                      ),
                    ] :
                    <Widget>[
                      const Tab(
                        text: 'Profile',
                      ),
                      const Tab(
                        text: 'Dashboard',
                      ),
                      const Tab(
                        text: 'Settinge',
                      ),
                        const Tab(
                        text: 'Contact',
                      ),

                      const Tab(
                        text: 'Disabled',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: size<800?130:100,
                // width: 600,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,top: 0),
                  child: TabBarView(
                    controller: controller,
                    children: size<600?
                    <Widget>[
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                    ] :
                    <Widget>[
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                      const Center(
                        child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget secoundecontain(TabController? controller,double size){
    return Padding(
      padding:  const EdgeInsets.only(left: 10,right: 10),
      child: Container(
          // height: 250,
          decoration: BoxDecoration(
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)
          ),
          child:  Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                        child: Text('Tabs With Underline',style: TextStyle(fontSize: 20,color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 30,
                  // width: 510,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TabBar(
                      controller: controller,
                      labelStyle: const TextStyle(color: Colors.black,fontFamily: 'Jost-SemiBold'),
                      labelColor: Colors.blue,
                      unselectedLabelColor: notifire.textcolore,
                      tabs: size<600?
                      <Widget>[
                        const Tab(
                          text: 'Profile',
                        ),
                        const Tab(
                          text: 'Contact',
                        ),
                        const Tab(
                          text: 'Settinge',
                        ),
                      ]:
                      <Widget>[
                        const Tab(
                          text: 'Profile',
                        ),
                        const Tab(
                          text: 'Dashboard',
                        ),
                        const Tab(
                          text: 'Settinge',
                        ),
                        const Tab(
                          text: 'Contact',
                        ),
                        const Tab(
                          text: 'Disabled',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: size<800?130:100,
                  // width: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 0),
                    child: TabBarView(
                      controller: controller,
                      children: size<600?
                      <Widget>[
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                      ]:
                      <Widget>[
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget thirdcontain(TabController? controller,double size){
    return Padding(
      padding:  const EdgeInsets.only(left: 10,right: 10),
      child: Container(
          // height: 250,
          decoration: BoxDecoration(
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)
          ),
          child:   Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                        child: Text('Tabs With Icons',style: TextStyle(fontSize: 20,color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 30,
                  // width: 530,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TabBar(
                      controller: controller,
                      labelStyle: const TextStyle(color: Colors.black,fontFamily: 'Jost-SemiBold'),
                      labelColor: Colors.blue,
                      unselectedLabelColor: notifire.textcolore,
                      tabs: size<600?
                      <Widget>[
                        const Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(image: const AssetImage('assets/user.png'),color: notifire.textcolore,height: 15,width: 15),
                              Icon(Icons.person,size: 15),
                              Flexible(child: Text('  Profile',overflow: TextOverflow.ellipsis,)),

                            ],
                          ),
                        ),
                        const Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(image: const AssetImage('assets/1.png'),color: notifire.textcolore,height: 15,width: 15),
                              Icon(Icons.date_range_rounded,size: 15,),
                              Flexible(child: Text('  Dashboard',overflow: TextOverflow.ellipsis,)),
                            ],
                          ),
                        ),
                      ]:
                      <Widget>[
                        const Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(image: const AssetImage('assets/user.png'),color: notifire.textcolore,height: 15,width: 15),
                              Icon(Icons.person,size: 15),
                              Flexible(child: Text('  Profile',overflow: TextOverflow.ellipsis,)),

                            ],
                          ),
                        ),
                        const Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(image: const AssetImage('assets/1.png'),color: notifire.textcolore,height: 15,width: 15),
                              Icon(Icons.date_range_rounded,size: 15,),
                              Flexible(child: Text('  Dashboard',overflow: TextOverflow.ellipsis,)),
                            ],
                          ),
                        ),
                        const Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(image: const AssetImage('assets/settings.png'),color: notifire.textcolore,height: 15,width: 15),
                              Icon(Icons.settings,size: 15,),
                              Flexible(child: Text('  Settinge',overflow: TextOverflow.ellipsis,)),
                            ],
                          ),
                        ),
                        const Tab(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Image(image: const AssetImage('assets/headphones.png'),color: notifire.textcolore,height: 15,width: 15),
                              Icon(Icons.add_call,size: 15,),
                              Flexible(child: Text('  Contacts',overflow: TextOverflow.ellipsis,)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: size<800?130:100,
                  // width: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 0),
                    child: TabBarView(
                      controller: controller,
                      children: size<600?
                      <Widget>[
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),

                      ]:
                      <Widget>[
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

  Widget fourcontain(TabController? controller,double size){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
          // height:250,
          decoration: BoxDecoration(
              color: notifire.containcolore1,
              borderRadius: BorderRadius.circular(10)
          ),
          child:  Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
                        child: Text('Tabs Pills',style: TextStyle(fontSize: 20,color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 40,
                  // width: 510,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: TabBar(
                      controller: controller,
                      labelStyle: const TextStyle(color: Colors.white,fontFamily: 'Jost-SemiBold'),
                      labelColor: Colors.white,
                      unselectedLabelColor: notifire.textcolore,
                      indicator: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      tabs: size<600?
                      <Widget>[
                        const Tab(
                          text: 'Profiles',
                        ),
                        const Tab(
                          text: 'Contact',
                        ),
                        const Tab(
                          text: 'Settinge',
                        ),
                      ]:
                      <Widget>[
                        const Tab(
                          text: 'Profiles',
                        ),
                        const Tab(
                          text: 'Dashboard',
                        ),
                        const Tab(
                          text: 'Settinge',
                        ),
                        const Tab(
                          text: 'Contact',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: size<800?130:100,
                  // width: 600,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,top: 0),
                    child: TabBarView(
                      controller: controller,
                      children: size<600?
                      <Widget>[
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                      ]:
                      <Widget>[
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        ),
                        const Center(
                          child: Text("Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide adipinge elit,sed on sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide",style: TextStyle(color: Colors.grey))                 ,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
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
              leading:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Components',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 135,
                  child:  Row(
                    children: [
                      const SizedBox(width: 60,),
                      Image(image: const AssetImage('assets/bookmarkl.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Tabs',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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




