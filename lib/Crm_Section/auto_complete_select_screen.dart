// ignore_for_file: camel_case_types, unnecessary_import, prefer_final_fields

import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:bs_flutter_selectbox/bs_flutter_selectbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';

class auto_complete_select extends StatefulWidget {
  const auto_complete_select({super.key});

  @override
  State<auto_complete_select> createState() => _auto_complete_selectState();
}

class _auto_complete_selectState extends State<auto_complete_select> {
  ColorNotifire notifire = ColorNotifire();
  late BsSelectBoxController _select2;
  @override
  void initState() {
    _select2 = BsSelectBoxController(
        multiple: true,
        options: [
          const BsSelectBoxOption(value: 1, text: Text('1',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 2, text: Text('2',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 3, text: Text('3',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 4, text: Text('4',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 5, text: Text('5',style: TextStyle(color: Colors.grey),)),
          const BsSelectBoxOption(value: 6, text: Text('6',style: TextStyle(color: Colors.grey),)),
        ]
    );

    super.initState();
  }

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
                    firstcontain(size1: constraints.maxWidth),
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
                    firstcontain(size1: constraints.maxWidth),
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
                    firstcontain(size1: constraints.maxWidth),
                  ],
                ),
              );
            }
          },),
        )
    );
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
                child: Text('Auto Complete',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 165,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      const SizedBox(width: 10,),
                      Text('Auto Complete',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  List<Pair> _list = [
    const Pair('Developer', Icons.developer_board),
    const Pair('Designer', Icons.deblur_sharp),
    const Pair('Consultant', Icons.money_off),
    const Pair('Student', Icons.edit),
  ];

  Future<List<Pair>> _getFakeRequestData(String query) async {
    return await Future.delayed(const Duration(seconds: 1), () {
      return _list.where((e) {
        return e.text.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  Widget firstcontain({required double size1}){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color:  notifire.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Change me!',style: TextStyle(color: notifire.textcolore)),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: BsSelectBox(
                    style: BsSelectBoxStyle(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      backgroundColor: notifire.containcolore1,
                      border: Border.all(color: Colors.grey.withOpacity(0.4)),hintTextColor: notifire.textcolore,fontSize: 15,
                    ),
                    hintText: 'Select',
                    controller: _select2,
                  ),
                ),
                const SizedBox(height: 20,),
                Text('And me!',style: TextStyle(color: notifire.textcolore)),
                const SizedBox(height: 10,),
                CustomDropdown<Pair>.searchRequest(
                  decoration: CustomDropdownDecoration(
                    closedBorder: Border.all(color: Colors.grey.withOpacity(0.4)),
                    closedFillColor: notifire.containcolore1,
                    expandedFillColor: notifire.containcolore1,
                    hintStyle: TextStyle(color: notifire.textcolore,fontSize: 15),
                    closedSuffixIcon: Icon(Icons.keyboard_arrow_down_sharp,color: notifire.textcolore,),
                    expandedSuffixIcon: Icon(Icons.keyboard_arrow_up,color: notifire.textcolore,),
                    listItemStyle: TextStyle(color: notifire.textcolore,fontSize: 15),
                    noResultFoundStyle: TextStyle(color: notifire.textcolore,fontSize: 15),
                    headerStyle: TextStyle(color: notifire.textcolore),
                  ),
                  closedHeaderPadding: const EdgeInsets.symmetric(vertical: 10.5,horizontal: 10.5),
                  futureRequest: _getFakeRequestData,
                  hintText: 'Search job role',
                  items: _list,
                  onChanged: (value) {
                    log('changing value to: $value');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}

class Pair {
  final String text;
  final IconData icon;
  const Pair(this.text, this.icon);

  @override
  String toString() {
    return text;
  }
}