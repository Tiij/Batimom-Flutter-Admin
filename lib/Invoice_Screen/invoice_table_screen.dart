

// ignore_for_file: camel_case_types

import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';
import 'package:flutter/material.dart';

class Invoid_Table extends StatefulWidget {
  const Invoid_Table({super.key});

  @override
  State<Invoid_Table> createState() => _Invoid_TableState();
}

class _Invoid_TableState extends State<Invoid_Table> {
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
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child:  Column(
                      children: [
                        maincontain(size: constraints.maxWidth),
                      ],
                    ),
                  ),
                ),
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
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child:  Column(
                      children: [
                        maincontain(size: constraints.maxWidth),
                      ],
                    ),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,bottom: 30),
                  child: Container(
                    // height: 1500,
                    decoration:  BoxDecoration(
                        color: notifire.containcolore1,
                        borderRadius: const BorderRadius.all(Radius.circular(10))
                    ),
                    child:  Column(
                      children: [
                        maincontain(size: constraints.maxWidth),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      },
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
                child: Text('Invoice',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 152,
                  child: Row(
                    children: [
                      const SizedBox(width: 50,),
                      Image(image: const AssetImage('assets/document123.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Invoice',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget maincontain({required double size}){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        size<1000?
        Column(
          children: [
            Row(
              children: [
                const SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('INVOICE NO',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10,),
                      Text('#TBS24301901',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis)
                    ],
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('DATE',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10,),
                      Text('10 April,2023',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('DUE DATE',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10,),
                      Text('10 April,2023',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                const SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('PAYMENT STATUS',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10,),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: const Color(0xffE0F7EA),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: const Center(child: Text('Paid',style: TextStyle(color: Colors.green),)),
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 5,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text('TOTAL AMOUNT',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                      const SizedBox(height: 10,),
                      Text('\$2,050.18',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ):



        Row(
          children: [
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text('INVOICE NO',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 10,),
                  Text('#TBS24301901',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis)
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text('DATE',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 10,),
                  Text('10 April,2023',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text('DUE DATE',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 10,),
                  Text('10 April,2023',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text('PAYMENT STATUS',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 10,),
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: const Color(0xffE0F7EA),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Center(child: Text('Paid',style: TextStyle(color: Colors.green),)),
                  )
                ],
              ),
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Text('TOTAL AMOUNT',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 10,),
                  Text('\$2,050.18',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
          ],
        ),





        const SizedBox(height: 50,),
        Row(
          children: [
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('BILLING ADDRESS',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 15,),
                  Text('Jennifer Mayert',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 8,),
                  Text('6382 CerromarCir, Orangevale,California,US',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                  Text('Phone : +(909) 594 2812',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                  Text('Tax : 12-3456789',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('SHIPPING ADDRESS',style: TextStyle(color: Colors.grey),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 15,),
                  Text('Jennifer Mayert',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 8,),
                  Text('505 W Cordova Rd, Santa Fe, New York, Us',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                  Text('Phone : +(505) 989 1318',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            const SizedBox(width: 5,),
          ],
        ),
        const SizedBox(height: 50,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 20),
            child: Container(
              height: 660,
              width: size<1000 ? 1200 : size,
              decoration: BoxDecoration(
                color: notifire.containcolore1,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Table(
                          // border: TableBorder.all(color: Colors.white),
                          columnWidths: const <int, TableColumnWidth>{
                            0: FixedColumnWidth(10),
                            1: FixedColumnWidth(650),
                            2: FixedColumnWidth(50),
                            3: FixedColumnWidth(50),
                            4: FixedColumnWidth(50),
                          },
                          children: [
                          const TableRow(
                                children: [
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                ]
                            ),
                            _row(),
                            const TableRow(
                                children: [
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                ]
                            ),
                            _row1(),
                            const TableRow(
                                children: [
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                ]
                            ),
                            _row2(),
                            const TableRow(
                                children: [
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                ]
                            ),
                            _row3(),
                            const TableRow(
                                children: [
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                ]
                            ),
                            _row4(),
                            const TableRow(
                                children: [
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                  SizedBox(height: 20,),
                                ]
                            ),
                            _row5(),
                            _row6(),
                            _row7(),
                            _row8(),
                            _row9(),
                            _row10(),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PAYMENT DETAILS:',style: TextStyle(color: notifire.textcolore),),
              const SizedBox(height: 20,),
              Text('Payment Methode : Mastercard',style: TextStyle(color: notifire.textcolore),),
              Text('Card Holder: Jennifer Mayert',style: TextStyle(color: notifire.textcolore),),
              Text('Card Number: xxx xxxx xxxx 1234',style: TextStyle(color: notifire.textcolore),),
              Text('Total Amount:\$2,050.18',style: TextStyle(color: notifire.textcolore),),
            ],
          ),
        ),
        const SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xffFFE9E9),
              border: Border.all(color: Colors.red),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Text('Note: Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum reiciendis cupiditate exercitationem qui corporis ullam architecto ad iure. Sit ea exercitationem incidunt repellendus odit quas enim? Eius error eos veritatis magni quia eum repellat vitae nulla accusantium debitis placeat, voluptatibus, est ab dolor ',overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: Colors.red,fontSize: 12)),
            ),
          ),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text('Congratulations on your recent purchase! it has been our pleasure to serve you, and we hope we see you agai soon.',style: TextStyle(color: notifire.textcolore),),
        ),
        const SizedBox(height: 10,),
        Column(
          children: [
            Image(image: const AssetImage('assets/images-removebg-preview12.png'),color: notifire.textcolore,height: 90,width: 90,fit: BoxFit.fill,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Authorized Sign',style: TextStyle(color: notifire.textcolore),),
            )
          ],
        ),
        const SizedBox(height: 20,),
      ],
    );
  }



  TableRow _row (){
    return  const TableRow(
      decoration: BoxDecoration(
        color: Color(0xffEEF0F7),
      ),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30,top: 7,bottom: 7),
            child: Text('#',style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 300,top: 7,bottom: 7),
            child: Text('Products Details',style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50,top: 7,bottom: 7),
            child: Text('Rate',style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40,top: 7,bottom: 7),
            child: Text('Quantity',style: TextStyle(color: Colors.black),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40,top: 7,bottom: 7),
            child: Text('Amount',style: TextStyle(color: Colors.black),),
          ),
        ]
    );
  }

  TableRow _row1 (){
    return  TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 20),
            child: Text('01',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            title: Text('Branded- Shirts',style: TextStyle(color: notifire.textcolore)),
            subtitle: const Text('Fashion',style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 20),
            child: Text('\$161.25',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 20),
            child: Text('03',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$483.75',style: TextStyle(color: notifire.textcolore),),
          ),
        ]
    );
  }

  TableRow _row2 (){
    return  TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 20),
            child: Text('02',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            title: Text('Fossil gen 5E smart watch',style: TextStyle(color: notifire.textcolore)),
            subtitle: const Text('32.5mm (1.28m) TFT Color Touch Display',style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 20),
            child: Text('\$69.60',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 20),
            child: Text('02',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$139.20',style: TextStyle(color: notifire.textcolore),),
          ),
        ]
    );
  }

  TableRow _row3 (){
    return  TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 20),
            child: Text('03',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            title: Text('Blive Printed Men Round Neck',style: TextStyle(color: notifire.textcolore)),
            subtitle: const Text('Fashion',style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 20),
            child: Text('\$250.00',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 20),
            child: Text('06',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$1,500.00',style: TextStyle(color: notifire.textcolore),),
          ),
        ]
    );
  }

  TableRow _row4 (){
    return  TableRow(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 20),
            child: Text('04',style: TextStyle(color: notifire.textcolore),),
          ),
          ListTile(
            title: Text('Flip-Flops and House Slippers',style: TextStyle(color: notifire.textcolore)),
            subtitle: const Text('Footwear',style: TextStyle(color: Colors.grey)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50,top: 20),
            child: Text('\$150.00',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 20),
            child: Text('01',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$150.00',style: TextStyle(color: notifire.textcolore),),
          ),
        ]
    );
  }

  TableRow _row5 (){
    return  TableRow(
        children: [
          const Text(''),
          const Text(''),
          const Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 0,top: 20),
            child: Text('sub Total',style: TextStyle(color: notifire.textcolore),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$2,272.95',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
        ]
    );
  }

  TableRow _row6(){
    return  TableRow(
        children: [
          const Text(''),
          const Text(''),
          const Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 0,top: 20),
            child: Text('Estimated Tax(18%)',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$409.13',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
        ]
    );
  }

  TableRow _row7(){
    return  TableRow(
        children: [
          const Text(''),
          const Text(''),
          const Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 0,top: 20),
            child: Text('Discount (steex30)',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$-681.88',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
        ]
    );
  }

  TableRow _row8(){
    return  TableRow(
        children: [
          const Text(''),
          const Text(''),
          const Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 0,top: 20),
            child: Text('Shipping Charge',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 20),
            child: Text('\$-65.00',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
        ]
    );
  }

  TableRow _row9(){
    return  TableRow(
        children: [
          const Text(''),
          const Text(''),
          const Text(''),
       Divider(color: Colors.grey.withOpacity(0.4),),
       Divider(color: Colors.grey.withOpacity(0.4),),
        ]
    );
  }

  TableRow _row10(){
    return  TableRow(
        children: [
          const Text(''),
          const Text(''),
          const Text(''),
          Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: Text('Total Amount',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 0),
            child: Text('\$2,050.20',style: TextStyle(color: notifire.textcolore),overflow: TextOverflow.ellipsis),
          ),
        ]
    );
  }



}
