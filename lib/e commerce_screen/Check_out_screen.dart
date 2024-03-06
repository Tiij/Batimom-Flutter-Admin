// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';


class Check_out_1 extends StatefulWidget {
  const Check_out_1({Key? key}) : super(key: key);

  @override
  State<Check_out_1> createState() => _Check_out_1State();
}

class _Check_out_1State extends State<Check_out_1> {
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
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    decoration:  BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Column(
                      children: [
                        txtfilled(txt1: 'First Name',),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Last Name'),
                        const SizedBox(height: 20,),
                        txtfiled5(),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Address',txt2: '123 Main St'),
                        const SizedBox(height: 20,),
                        txtfilled(txt1: 'Address 2(Optional)',txt2: 'Apartment or suit'),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            chekbox1(),
                            Flexible(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isChecked1 = true;
                                    });
                                  },
                                  child:  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text('Shipping address is the same as my billing address',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            chekbox2(),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    isChecked2 = true;
                                  });
                                },
                                child:  Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text('Save this information for next time',style: TextStyle(color: notifire.textcolore)),
                                )),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Divider(color: Colors.black,),
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Payment',style: TextStyle(color: notifire.textcolore)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        harsh(),
                        harsh2(),
                        harsh3(),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Name on card')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'Credit card number')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Text('Full name as displayed on card',style: TextStyle(fontSize: 15,color: notifire.textcolore),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(top: 0,right: 10),
                  child: Container(
                    // height: Get.height,
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Your cart',style: TextStyle(color: notifire.textcolore),),
                              const SizedBox(width: 5,),
                              const CircleAvatar(backgroundColor: Colors.red,radius: 10,child: Text('3',style: TextStyle(color: Colors.white,fontSize: 10)),)
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 100,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  // image: DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                ),
                                child: const Image(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg')),
                              ),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                ),
                              ),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),



                          const SizedBox(height: 20,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              title: Text('Sub Total(USD)',style: TextStyle(color: notifire.textcolore)),
                              trailing: Text('\$1241',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              title: Text('Total(USD)',style: TextStyle(color: notifire.textcolore)),
                              trailing: Text('\$841',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              title: Text('Promo Code',style: TextStyle(color: notifire.textcolore)),
                              trailing: Text('-\$5',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
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
                                    style: TextStyle(color: notifire.textcolore),
                                    decoration: InputDecoration(
                                      //contentPadding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                        hintText: 'Promo code',hintStyle: TextStyle(color: notifire.textcolore)
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffe9ecef),side: const BorderSide(color: Colors.black),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))),
                                      onPressed: (){},
                                      child: const Text('Redeem',style: TextStyle(color: Colors.black),)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
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
                const SizedBox(height: 100,),
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
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'First Name')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'Last Name')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Expanded(child: txtfiled5()),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address',txt2: '123 Main St')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Address 2(Optional)',txt2: 'Apartment or suit')),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            chekbox1(),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    isChecked1 = true;
                                  });
                                },
                                child:  Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text('Shipping address is the same as my billing address',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                                ))
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            chekbox2(),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    isChecked2 = true;
                                  });
                                },
                                child:  Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text('Save this information for next time',style: TextStyle(color: notifire.textcolore)),
                                )),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        const Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: Divider(color: Colors.black,),
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Payment',style: TextStyle(color: notifire.textcolore)),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20,),
                        harsh(),
                        harsh2(),
                        harsh3(),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            Flexible(flex: 4,child: txtfilled(txt1: 'Name on card')),
                            Flexible(flex: 4,child: txtfilled(txt1: 'Credit card number')),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Text('Full name as displayed on card',style: TextStyle(fontSize: 15,color: notifire.textcolore),),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(top: 0,right: 10,left: 10),
                  child: Container(
                    // height: Get.height,
                    // width: 400,
                    decoration: BoxDecoration(
                      color: notifire.containcolore1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('Your cart',style: TextStyle(color: notifire.textcolore),),
                              const SizedBox(width: 5,),
                              const CircleAvatar(backgroundColor: Colors.red,radius: 10,child: Text('3',style: TextStyle(color: Colors.white,fontSize: 10)),)
                            ],
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                color: notifire.containcolore1,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'),fit: BoxFit.fill)
                                ),),
                              title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                              subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                              trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),



                          const SizedBox(height: 20,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              title: Text('Sub Total(USD)',style: TextStyle(color: notifire.textcolore)),
                              trailing: Text('\$1241',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              title: Text('Total(USD)',style: TextStyle(color: notifire.textcolore)),
                              trailing: Text('\$841',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: notifire.containcolore1,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              title: Text('Promo Code',style: TextStyle(color: notifire.textcolore)),
                              trailing: Text('-\$5',style: TextStyle(color: notifire.textcolore)),
                            ),
                          ),
                          const SizedBox(height: 20,),
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
                                    style: TextStyle(color: notifire.textcolore),
                                    decoration: InputDecoration(
                                      //contentPadding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                                        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                        hintText: 'Promo code',hintStyle: TextStyle(color: notifire.textcolore)
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffe9ecef),side: const BorderSide(color: Colors.black),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))),
                                      onPressed: (){},
                                      child: const Text('Redeem',style: TextStyle(color: Colors.black),)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'First Name')),
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Last Name')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Expanded(child: txtfiled5()),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Email(Optional)',txt2: 'you@exmple.com')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Address',txt2: '123 Main St')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Address 2(Optional)',txt2: 'Apartment or suit')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: dropdownbuton()),
                                  Flexible(flex: 4,child: dropdownbuton1()),
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Zip')),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  chekbox1(),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isChecked1 = true;
                                        });
                                      },
                                      child:  Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Text('Shipping address is the same as my billing address',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis,),
                                      ))
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  chekbox2(),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isChecked2 = true;
                                        });
                                      },
                                      child:  Padding(
                                        padding: const EdgeInsets.only(left: 15),
                                        child: Text('Save this information for next time',style: TextStyle(color: notifire.textcolore)),
                                      )),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              const Padding(
                                padding: EdgeInsets.only(left: 10,right: 10),
                                child: Divider(color: Colors.black,),
                              ),
                              const SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Payment',style: TextStyle(color: notifire.textcolore)),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  harsh(),
                                  harsh2(),
                                  harsh3(),
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Name on card')),
                                  Flexible(flex: 4,child: txtfilled(txt1: 'Credit card number')),
                                ],
                              ),
                              Row(
                               children: [
                                 Padding(
                                   padding: const EdgeInsets.only(left: 10,right: 10),
                                   child: Text('Full name as displayed on card',style: TextStyle(fontSize: 15,color: notifire.textcolore),),
                                 ),
                               ],
                             ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Flexible(flex: 2,child: txtfilled(txt1: 'First Name')),
                                  Flexible(flex: 2,child: txtfilled(txt1: 'Last Name')),
                                  const Flexible(flex: 4,child: SizedBox())
                                ],
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                children: [
                                  Expanded(flex: 4,child: button()),
                                ],
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50,right: 10),
                          child: Container(
                            // height: Get.height,
                            width: 400,
                            decoration: BoxDecoration(
                              color: notifire.bgcolore,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                 Row(
                                   children: [
                                     Text('Your cart',style: TextStyle(color: notifire.textcolore),),
                                     const SizedBox(width: 5,),
                                     const CircleAvatar(backgroundColor: Colors.red,radius: 10,child: Text('3',style: TextStyle(color: Colors.white,fontSize: 10)),)
                                   ],
                                 ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                          height: 100,
                                          width: 50,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                            // image: DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                          ),
                                      child: const Image(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg')),
                                      ),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                        ),
                                      ),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                        ),),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                        ),),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                        ),),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                        ),),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                        ),),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg'))
                                        ),),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: ListTile(
                                      leading: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            image: const DecorationImage(image: AssetImage('assets/portrait-expressive-young-woman-holding-shopping-bags.jpg'))
                                        ),),
                                      title: Text('Home Base',style: TextStyle(color: notifire.textcolore)),
                                      subtitle: const Text('\$154*2',style: TextStyle(color: Colors.grey)),
                                      trailing: Text('\$308',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),



                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: notifire.containcolore1,
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ListTile(
                                      title: Text('Sub Total(USD)',style: TextStyle(color: notifire.textcolore)),
                                      trailing: Text('\$1241',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: notifire.containcolore1,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ListTile(
                                      title: Text('Total(USD)',style: TextStyle(color: notifire.textcolore)),
                                      trailing: Text('\$841',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
                                  Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: notifire.containcolore1,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ListTile(
                                      title: Text('Promo Code',style: TextStyle(color: notifire.textcolore)),
                                      trailing: Text('-\$5',style: TextStyle(color: notifire.textcolore)),
                                    ),
                                  ),
                                  const SizedBox(height: 20,),
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
                                            style: TextStyle(color: notifire.textcolore),
                                            decoration: InputDecoration(
                                              //contentPadding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                                                border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                                                hintText: 'Promo code',hintStyle: TextStyle(color: notifire.textcolore)
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(backgroundColor: const Color(0xffe9ecef),side: const BorderSide(color: Colors.black),shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)))),
                                              onPressed: (){},
                                              child: const Text('Redeem',style: TextStyle(color: Colors.black),)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                const SizedBox(height: 20,),

              ],
            ),
          );
        }
      },
      ),
    );
  }




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



  Widget mainrow(){
    return Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Check out',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 120,
                  child: Row(
                    children: [
                      const SizedBox(width: 0,),
                      Image(image: const AssetImage('assets/shopping-cart-star123.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Check out',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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



  Widget txtfilled({required String txt1,String? txt2, bool? obscur,IconData? sufixicon}){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text(txt1,style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 53,
              // color: Colors.red,
              child: TextField(
                style: TextStyle(color: notifire.textcolore),
                obscureText: obscur??false,
                decoration: InputDecoration(
                    suffixIcon: Icon(sufixicon,color: notifire.textcolore),
                    hintText: txt2,hintStyle: TextStyle(color: notifire.textcolore,),
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


  Widget txtfiled5(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Text('Username',style: TextStyle(color: notifire.textcolore)),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 52,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                        border: Border.all(color: Colors.grey.withOpacity(0.4))
                    ),
                    child: Center(child: Text('@',style: TextStyle(fontSize: 30,color: notifire.textcolore),)),
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

  String? selectedOption;
  List<String> dropdownOptions = [
    "INDIA",
    "UK",
    "USA",
    'AUSTRALIA'
  ];

  Widget dropdownbuton(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Country",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            height: 53,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: notifire.containcolore1,
              value: selectedOption,
              padding:  const EdgeInsets.only(left: 10,top: 5),
              items: dropdownOptions.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option,style: TextStyle(color: notifire.textcolore)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
              decoration:   InputDecoration(
                hintText: 'Choose..',hintStyle: TextStyle(color: notifire.textcolore),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dropdownbuton1(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("State",style: TextStyle(color: notifire.textcolore)),
          const SizedBox(height: 10,),
          Container(
            height: 53,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.withOpacity(0.4)),
                borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            child: DropdownButtonFormField<String>(
              dropdownColor: notifire.containcolore1,
              value: selectedOption,
              padding: const EdgeInsets.only(left: 10,top: 5),
              items: dropdownOptions.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option,style: TextStyle(color: notifire.textcolore)),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedOption = newValue;
                });
              },
              decoration:   InputDecoration(
                hintText: 'Choose..',hintStyle: TextStyle(color: notifire.textcolore),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }





  bool isChecked1 = false;
  Widget chekbox1(){
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Checkbox(
        side: MaterialStateBorderSide.resolveWith(
              (states) => BorderSide(width: 1.0, color: notifire.textcolore),
        ),
        checkColor: Colors.white,
        value: isChecked1,
        onChanged: (bool? value) {
          setState(() {
            isChecked1 = value!;
          });
        },
      ),
    );
  }

  bool isChecked2 = false;
  Widget chekbox2(){
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Checkbox(
        side: MaterialStateBorderSide.resolveWith(
              (states) => BorderSide(width: 1.0, color: notifire.textcolore),
        ),
        checkColor: Colors.white,
        value: isChecked2,
        onChanged: (bool? value) {
          setState(() {
            isChecked2 = value!;
          });
        },
      ),
    );
  }





  bool select1 =false;
  Widget harsh(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Container(
            height: 40,
             width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: notifire.bgcolore,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      select1 = true;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(30)),
                            // ignore: unrelated_type_equality_checks
                            border: Border.all(
                                color: select1
                                    ? Colors.blue
                                    : notifire.textcolore,width: 2)),
                        // ignore: unrelated_type_equality_checks
                        child: select1? const Icon(Icons.circle,
                            size: 13,
                            color: Colors.blue):
                        const SizedBox()
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        select1 = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Creadit card',style: TextStyle(color: notifire.textcolore),),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }

  bool select2 =false;
  Widget harsh2(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Container(
            height: 40,
           width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: notifire.bgcolore,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      select2 = true;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(30)),
                            // ignore: unrelated_type_equality_checks
                            border: Border.all(
                                color: select2
                                    ? Colors.blue
                                    : notifire.textcolore,width: 2)),
                        // ignore: unrelated_type_equality_checks
                        child: select2? const Icon(Icons.circle,
                            size: 13,
                            color: Colors.blue):
                        const SizedBox()
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        select2 = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Debit card',style: TextStyle(color: notifire.textcolore),),
                    ))
              ],
            ),
          ),
        ),


      ],
    );
  }

  bool select3 =false;
  Widget harsh3(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 10),
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: notifire.bgcolore,
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      select3 = true;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                                Radius.circular(30)),
                            // ignore: unrelated_type_equality_checks
                            border: Border.all(
                                color: select3
                                    ? Colors.blue
                                    : notifire.textcolore,width: 2)),
                        // ignore: unrelated_type_equality_checks
                        child: select3? const Icon(Icons.circle,
                            size: 13,
                            color: Colors.blue):
                        const SizedBox()
                    ),
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        select3 = false;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text('Creadit card',style: TextStyle(color: notifire.textcolore),),
                    ))
              ],
            ),
          ),
        ),
      ],
    );
  }



  Widget button(){
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
      child: SizedBox(
        height: 35,
        child: ElevatedButton(
          onPressed: () {},
          style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xffdcdfe5))),
          child: const Text('Continue to checkout',style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }



}
