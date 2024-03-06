// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class comoponet extends StatefulWidget {
  const comoponet({super.key});

  @override
  State<comoponet> createState() => _comoponetState();
}
ColorNotifire notifire = ColorNotifire();
class _comoponetState extends State<comoponet> {
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
                firstcontain(),
                const SizedBox(height: 20,),
                secoundecontain(),
                const SizedBox(height: 200,),
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
          return   SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(child: mainrow()),
                  ],
                ),
                const SizedBox(height: 20,),
                firstcontain(),
                const SizedBox(height: 20,),
                secoundecontain(),
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
                firstcontain(),
                const SizedBox(height: 20,),
                secoundecontain(),
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
                child: Text('Components',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 136,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/location-pin-questionq.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Accordions',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget firstcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text('Basic',style: TextStyle(fontSize: 20,color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: _buildFaq1(title: 'Basic Item #1', content: 'Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: _buildFaq1(title: 'Basic Item #2', content: 'Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: _buildFaq1(title: 'Basic Item #3', content: 'Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget secoundecontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,top: 20),
                      child: Text('According With Icon',style: TextStyle(fontSize: 20,color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: _buildFaq(img: 'assets/1.png',title: 'Accordinge Item #1', content: 'Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: _buildFaq(img: 'assets/30.png',title: 'Accordinge Item #2', content: 'Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
                child: _buildFaq(img: 'assets/35.png',title: 'Accordinge Item #3', content: 'Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide Lorem ipsum dolore sit amet, consecture adipinge elit,sed on eiquiesd tempore incide'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFaq({required String title ,required String content,required String img}){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side:  BorderSide(color: Colors.grey.withOpacity(0.4))
      ),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      child:  ExpansionTile(
        collapsedIconColor: Colors.grey.withOpacity(0.4),
        leading: Image(image: AssetImage(img),color: notifire.textcolore),
        title:  Text(title,style: TextStyle(color: notifire.textcolore)),
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
    );
  }


  Widget _buildFaq1({required String title ,required String content}){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side:  BorderSide(color: Colors.grey.withOpacity(0.4))
      ),
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      child:  ExpansionTile(
        collapsedIconColor: Colors.grey.withOpacity(0.4),
        leading: Text(title,style: TextStyle(color: notifire.textcolore)),
        title:  const SizedBox(),
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
    );
  }





}



