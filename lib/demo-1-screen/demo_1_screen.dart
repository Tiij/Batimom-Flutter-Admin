import 'package:flutter/material.dart';


enum SampleItem { itemOne, itemTwo, itemThree }

class Demo1 extends StatefulWidget {
  const Demo1({super.key});

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {

  SampleItem? selectedMenu;
  List menu=[
    'Today',
    'Week',
    'Month',
    'Year',
  ];
  List menu11=[
    'Today',
    'Week',
    'Month',
  ];
  int a = 0;
  int b = 0;
  List<ChartData> chartData = [
    ChartData(1, 35,0),
    ChartData(2, 23,0),
    ChartData(3, 34,0),
    ChartData(4, 25,0),
    ChartData(5, 40,0)
  ];

  @override
  Widget build(BuildContext context) {
     return  Container();
    // LayoutBuilder(
    //   builder: (context, constraints)  {
    //     return DefaultTabController(
    //       length: 3,
    //       initialIndex: 1,
    //       child: Container(
    //         height: MediaQuery.of(context).size.height,
    //         width: MediaQuery.of(context).size.width,
    //         color: const Color(0xffF3F4F6),
    //         child: SingleChildScrollView(
    //           scrollDirection: Axis.vertical,
    //           child: Column(
    //             children: [
    //               // const SizedBox(height: 30,),
    //              // Row(
    //              //   children:  [
    //              //     const SizedBox(width: 30,),
    //              //     Expanded(
    //              //       child: SizedBox(
    //              //         width: MediaQuery.of(context).size.width,
    //              //         height: 70,
    //              //         child: const ListTile(
    //              //           leading: Text('Demo 1',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
    //              //           trailing:  SizedBox(
    //              //             height: 20,
    //              //             width: 180,
    //              //             child: Row(
    //              //               children: [
    //              //                 Image(image: AssetImage('assets/home.png')),
    //              //                 SizedBox(width: 10,),
    //              //                 Text('Dashboard',style: TextStyle(color: Colors.black,fontSize: 15),overflow: TextOverflow.ellipsis),
    //              //                 SizedBox(width: 10,),
    //              //                 Text('Demo 1',style: TextStyle(color: Colors.grey,fontSize: 15),overflow: TextOverflow.ellipsis),
    //              //               ],
    //              //             ),
    //              //           ),
    //              //         ),
    //              //       ),
    //              //     ),
    //              //   ],
    //              // ),
    //
    //
    //               Column(
    //                 children: [
    //               //     constraints.maxWidth<600?
    //               //     Column(
    //               //       mainAxisAlignment: MainAxisAlignment.start,
    //               //       crossAxisAlignment: CrossAxisAlignment.start,
    //               //       children: [
    //               //         const SizedBox(height: 30,),
    //               //         Padding(
    //               //           padding: const EdgeInsets.only(left:10),
    //               //           child: somecontain(txt1: '100+', txt2: 'Total Products', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/5.png', img2: 'assets/arrow-up.png',colore1: Colors.purple.withOpacity(0.2),colore2: Colors.purple),
    //               //         ),
    //               //         const SizedBox(height: 10,),
    //               //         Padding(
    //               //           padding: const EdgeInsets.only(left:10),
    //               //           child: somecontain(txt1: '30,825', txt2: 'Total Orders', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/shopping-cart.png', img2: 'assets/arrow-up.png',colore1: Colors.blue.withOpacity(0.2),colore2: Colors.blue),
    //               //         ),
    //               //       ],
    //               //     ) :
    //               //     Row(
    //               //       mainAxisAlignment: MainAxisAlignment.start,
    //               //       crossAxisAlignment: CrossAxisAlignment.start,
    //               //       children: [
    //               //         const SizedBox(width: 30,),
    //               //         Expanded(
    //               //           child: somecontain(txt1: '100+', txt2: 'Total Products', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/5.png', img2: 'assets/arrow-up.png',colore1: const Color(0xffF2EAFB),colore2: const Color(0xff8231D3) ),
    //               //         ),
    //               //          const SizedBox(width: 10,),
    //               //         Expanded(
    //               //           child: somecontain(txt1: '30,825', txt2: 'Total Orders', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/shopping-cart.png', img2: 'assets/arrow-up.png',colore1: const Color(0xffE5F6FF),colore2: const Color(0xff00AAFF)) ,
    //               //         ),
    //               //       ],
    //               //     ),
    //               //      const SizedBox(height: 20,),
    //               //     constraints.maxWidth<600?
    //               //     Column(
    //               //       mainAxisAlignment: MainAxisAlignment.start,
    //               //       crossAxisAlignment: CrossAxisAlignment.start,
    //               //       children: [
    //               //         const SizedBox(height: 30,),
    //               //          Padding(
    //               //            padding: const EdgeInsets.only(left:10),
    //               //            child: somecontain(txt1: '\$30,825', txt2: 'Total Sales', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/dollar-circle.png', img2: 'assets/arrow-up.png',colore1: Colors.indigo.withOpacity(0.2),colore2: Colors.indigo),
    //               //          ) ,
    //               //         const SizedBox(height: 10,),
    //               //         Padding(
    //               //           padding: const EdgeInsets.only(left:10),
    //               //           child: somecontain(txt1: '30,825', txt2: 'New Customers', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/8.png', img2: 'assets/arrow-up.png',colore1: Colors.orange.withOpacity(0.2),colore2: Colors.orange),
    //               //         ) ,
    //               //       ],
    //               //     ) :
    //               //     Row(
    //               //       mainAxisAlignment: MainAxisAlignment.start,
    //               //       crossAxisAlignment: CrossAxisAlignment.start,
    //               //       children: [
    //               //          const SizedBox(width: 30,),
    //               //         Expanded(
    //               //           child: somecontain(txt1: '\$30,825', txt2: 'Total Sales', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/dollar-circle.png', img2: 'assets/arrow-up.png',colore1: const Color(0xffEEECFF),colore2: const Color(0xff5840FF)) ,
    //               //         ),
    //               //         const SizedBox(width: 10,),
    //               //         Expanded(
    //               //           child: somecontain(txt1: '30,825', txt2: 'New Customers', txt3: '25.36% ', txt4: 'Since last month', img1: 'assets/8.png', img2: 'assets/arrow-up.png',colore1:  const Color(0xffFEF3E6),colore2:  const Color(0xffFA8B0C)) ,
    //               //         ),
    //               //       ],
    //               //     ),
    //               //
    //               //     const SizedBox(height: 30,),
    //               //
    //               //     Column(
    //               //       children: [
    //               //         constraints.maxWidth<600?
    //               //         Padding(
    //               //           padding: const EdgeInsets.all(10),
    //               //           child: Container(
    //               //     height: 530,
    //               //     width: 1170,
    //               //     decoration: BoxDecoration(
    //               //           color: Colors.white,
    //               //           borderRadius: BorderRadius.circular(20)
    //               //     ),
    //               //     child: Column(
    //               //       children: [
    //               //           const SizedBox(height: 10,),
    //               //           Row(
    //               //             crossAxisAlignment: CrossAxisAlignment.center,
    //               //             mainAxisAlignment: MainAxisAlignment.center,
    //               //             children: [
    //               //               const Text('Member Progress',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    //               //             ],
    //               //           ),
    //               //           SizedBox(height: 20,),
    //               //           Row(
    //               //             crossAxisAlignment: CrossAxisAlignment.center,
    //               //             mainAxisAlignment: MainAxisAlignment.center,
    //               //             children: [
    //               //               SizedBox(
    //               //                 height: 35,
    //               //                 width: 230,
    //               //                 child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
    //               //                   return  Padding(
    //               //                     padding: const EdgeInsets.all(2),
    //               //                     child: InkWell(
    //               //                       onTap: () {
    //               //                         setState(() {
    //               //                           b = index;
    //               //                         });
    //               //                       },
    //               //                       child: Container(
    //               //                         height: 30,
    //               //                         width: 70,
    //               //                         decoration: BoxDecoration(
    //               //                           color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
    //               //                           borderRadius: BorderRadius.circular(10),
    //               //                         ),
    //               //                         child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
    //               //                       ),
    //               //                     ),
    //               //                   );
    //               //                 },),
    //               //               ),
    //               //             ],
    //               //           ),
    //               //           SingleChildScrollView(
    //               //             scrollDirection: Axis.horizontal,
    //               //             child: Padding(
    //               //               padding: const EdgeInsets.all(15),
    //               //               child: Container(
    //               //                 height: 400,
    //               //                 width: 1000,
    //               //                 child: Column(
    //               //                   children: [
    //               //                     const SizedBox(height: 30,),
    //               //                     MemberProgressdemo(txt1: 'Robert Clinton', txt2: '	\$38,536', txt3: 'ReactJs,HTML', txt4: '80%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.5),
    //               //                     const SizedBox(height: 10,),
    //               //                     MemberProgressdemo(txt1: 'Member Progress', txt2: '	\$20,573', txt3: 'Laravel,Angular', txt4: '52%', img: 'assets/robert-1.png',color: Colors.blue,backgrounde: const Color(0xffEFF0F3),vle: 0.4),
    //               //                     const SizedBox(height: 10,),
    //               //                     MemberProgressdemo(txt1: 'Daniel White', txt2: '	\$17,457', txt3: 'Python,MySQL', txt4: '72%', img: 'assets/robert-1.png',color: Colors.green,backgrounde: const Color(0xffEFF0F3),vle: 10),
    //               //                     const SizedBox(height: 10,),
    //               //                     MemberProgressdemo(txt1: 'Chris Barin', txt2: '	\$15,354', txt3: 'Wordpress', txt4: '92%', img: 'assets/robert-3.png',color: const Color(0xff5840FF),backgrounde: const Color(0xffEFF0F3),vle: 1),
    //               //                     const SizedBox(height: 10,),
    //               //                     MemberProgressdemo(txt1: 'Daniel Pink', txt2: '	\$12,354', txt3: 'Photoshop', txt4: '25%', img: 'assets/robert-4.png',color: const Color(0xffFA8B0C),backgrounde: const Color(0xffEFF0F3),vle: 0.3),
    //               //                     const SizedBox(height: 10,),
    //               //                     MemberProgressdemo(txt1: 'Shane Pollard', txt2: '	\$12,354', txt3: 'Illustrator', txt4: '18%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.2),
    //               //                   ],
    //               //                 ),
    //               //               ),
    //               //             ),
    //               //           )
    //               //
    //               //       ],
    //               //     )
    //               // ),
    //               //         ):
    //               //         Container(
    //               //             height: 480,
    //               //             width: 1170,
    //               //             decoration: BoxDecoration(
    //               //                 color: Colors.white,
    //               //                 borderRadius: BorderRadius.circular(20)
    //               //             ),
    //               //             child: Column(
    //               //               children: [
    //               //                 const SizedBox(height: 10,),
    //               //                 ListTile(
    //               //                   leading: const Text('Member Progress',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    //               //                   trailing:  SizedBox(
    //               //                     height: 35,
    //               //                     width: 230,
    //               //                     child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
    //               //                       return  Padding(
    //               //                         padding: const EdgeInsets.all(2),
    //               //                         child: InkWell(
    //               //                           onTap: () {
    //               //                             setState(() {
    //               //                               b = index;
    //               //                             });
    //               //                           },
    //               //                           child: Container(
    //               //                             height: 30,
    //               //                             width: 70,
    //               //                             decoration: BoxDecoration(
    //               //                               color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
    //               //                               borderRadius: BorderRadius.circular(10),
    //               //                             ),
    //               //                             child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
    //               //                           ),
    //               //                         ),
    //               //                       );
    //               //                     },),
    //               //                   ),
    //               //                 ),
    //               //                 const SizedBox(height: 30,),
    //               //                 MemberProgress(txt1: 'Robert Clinton', txt2: '	\$38,536', txt3: 'ReactJs,HTML', txt4: '80%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.5),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress(txt1: 'Member Progress', txt2: '	\$20,573', txt3: 'Laravel,Angular', txt4: '52%', img: 'assets/robert-1.png',color: Colors.blue,backgrounde: const Color(0xffEFF0F3),vle: 0.4),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress(txt1: 'Daniel White', txt2: '	\$17,457', txt3: 'Python,MySQL', txt4: '72%', img: 'assets/robert-1.png',color: Colors.green,backgrounde: const Color(0xffEFF0F3),vle: 10),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress(txt1: 'Chris Barin', txt2: '	\$15,354', txt3: 'Wordpress', txt4: '92%', img: 'assets/robert-3.png',color: const Color(0xff5840FF),backgrounde: const Color(0xffEFF0F3),vle: 1),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress(txt1: 'Daniel Pink', txt2: '	\$12,354', txt3: 'Photoshop', txt4: '25%', img: 'assets/robert-4.png',color: const Color(0xffFA8B0C),backgrounde: const Color(0xffEFF0F3),vle: 0.3),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress(txt1: 'Shane Pollard', txt2: '	\$12,354', txt3: 'Illustrator', txt4: '18%', img: 'assets/robert-1.png',color: const Color(0xff8231D3),backgrounde: const Color(0xffEFF0F3),vle: 0.2),
    //               //               ],
    //               //             )
    //               //         ),
    //               //       ],
    //               //     ),
    //               //
    //               //     const SizedBox(height: 30,),
    //               //     Column(
    //               //       children: [
    //               //         constraints.maxWidth<600?
    //               //         Padding(
    //               //           padding: const EdgeInsets.all(10),
    //               //           child: Container(
    //               //               height: 500,
    //               //               width: 1170,
    //               //               decoration: BoxDecoration(
    //               //                 color: const Color(0xffFFFFFF),
    //               //                 borderRadius: BorderRadius.circular(20),
    //               //               ),
    //               //               child: Column(
    //               //                 children: [
    //               //                   const SizedBox(height: 10,),
    //               //                   const SizedBox(height: 10,),
    //               //                   const Row(
    //               //                     crossAxisAlignment: CrossAxisAlignment.center,
    //               //                     mainAxisAlignment: MainAxisAlignment.center,
    //               //                     children: [
    //               //                       Text('Member Progress',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    //               //                     ],
    //               //                   ),
    //               //                   const SizedBox(height: 20,),
    //               //                   Row(
    //               //                     mainAxisAlignment: MainAxisAlignment.center,
    //               //                     crossAxisAlignment: CrossAxisAlignment.center,
    //               //                     children: [
    //               //                       SizedBox(
    //               //                         height: 35,
    //               //                         width: 230,
    //               //                         child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
    //               //                           return  Padding(
    //               //                             padding: const EdgeInsets.all(2),
    //               //                             child: InkWell(
    //               //                               onTap: () {
    //               //                                 setState(() {
    //               //                                   b = index;
    //               //                                 });
    //               //                               },
    //               //                               child: Container(
    //               //                                 height: 30,
    //               //                                 width: 70,
    //               //                                 decoration: BoxDecoration(
    //               //                                   color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
    //               //                                   borderRadius: BorderRadius.circular(10),
    //               //                                 ),
    //               //                                 child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
    //               //                               ),
    //               //                             ),
    //               //                           );
    //               //                         },),
    //               //                       ),
    //               //                     ],
    //               //                   ),
    //               //                   const SizedBox(height: 20,),
    //               //                   SingleChildScrollView(
    //               //                     scrollDirection: Axis.horizontal,
    //               //                     child: Padding(
    //               //                       padding: const EdgeInsets.all(15),
    //               //                       child: Container(
    //               //                         height: 330,
    //               //                         width: 1000,
    //               //                         child: Column(
    //               //                           children: [
    //               //                             Row(
    //               //                               children: [
    //               //                                 SizedBox(width: 50,),
    //               //                                 Text('SELLER NAME',style: TextStyle(color: Colors.grey)),
    //               //                                 SizedBox(width: 120,),
    //               //                                 Text('COMPANY',style: TextStyle(color: Colors.grey)),
    //               //                                 SizedBox(width: 150,),
    //               //                                 Text('PRODUCT',style: TextStyle(color: Colors.grey)),
    //               //                                 SizedBox(width: 110,),
    //               //                                 Text('REVENUE',style: TextStyle(color: Colors.grey)),
    //               //                                 SizedBox(width: 170,),
    //               //                                 Text('SELLER NAME',style: TextStyle(color: Colors.grey)),
    //               //                               ],
    //               //                             ),
    //               //                             const SizedBox(height: 20,),
    //               //                             MemberProgress2demo(txt1: 'Robert Clinton', txt2: 'Samsung', txt3: 'Smart Phone', txt4: '\$38,536', txt5: 'Done', img: 'assets/robert-1.png'),
    //               //                             const SizedBox(height: 10,),
    //               //                             MemberProgress2demo(txt1: 'Michael Johnson', txt2: 'Asus', txt3: 'Laptop', txt4: '\$20,573', txt5: 'Done', img: 'assets/robert-1.png'),
    //               //                             const SizedBox(height: 10,),
    //               //                             MemberProgress2demo(txt1: 'Daniel White', txt2: 'Google', txt3: 'Watch', txt4: '\$17,457', txt5: 'Pendin', img: 'assets/robert-3.png'),
    //               //                             const SizedBox(height: 10,),
    //               //                             MemberProgress2demo(txt1: 'Chris Barin', txt2: 'Apple', txt3: 'Computer', txt4: '\$15,354', txt5: 'Done', img: 'assets/robert-4.png'),
    //               //                             const SizedBox(height: 10,),
    //               //                             MemberProgress2demo(txt1: 'Daniel Pink', txt2: 'Panasonic', txt3: 'Sunglass', txt4: '\$12,354', txt5: 'Done', img: 'assets/robert-1.png'),
    //               //                           ],
    //               //                         ),
    //               //                       ),
    //               //                     ),
    //               //                   )
    //               //                 ],
    //               //               )
    //               //           ),
    //               //         ):
    //               //         Container(
    //               //             height: 450,
    //               //             width: 1170,
    //               //             decoration: BoxDecoration(
    //               //                 color: const Color(0xffFFFFFF),
    //               //                 borderRadius: BorderRadius.circular(20),
    //               //             ),
    //               //             child: Column(
    //               //               children: [
    //               //                 const SizedBox(height: 10,),
    //               //                 ListTile(
    //               //                   leading: const Text('Best Seller',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
    //               //                   trailing:    SizedBox(
    //               //                     height: 35,
    //               //                     width: 230,
    //               //                     child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
    //               //                       return  Padding(
    //               //                         padding: const EdgeInsets.all(2),
    //               //                         child: InkWell(
    //               //                           onTap: () {
    //               //                             setState(() {
    //               //                               b = index;
    //               //                             });
    //               //                           },
    //               //                           child: Container(
    //               //                             height: 30,
    //               //                             width: 70,
    //               //                             decoration: BoxDecoration(
    //               //                               color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
    //               //                               borderRadius: BorderRadius.circular(10),
    //               //                             ),
    //               //                             child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff6F2FC1)))),
    //               //                           ),
    //               //                         ),
    //               //                       );
    //               //                     },),
    //               //                   ),
    //               //                 ),
    //               //                 const SizedBox(height: 20,),
    //               //                 Container(
    //               //                   height: 30,
    //               //                   width: 1150,
    //               //                   decoration: BoxDecoration(
    //               //                     color: const Color(0xffF8F9FB),
    //               //                     borderRadius: BorderRadius.circular(5)
    //               //                   ),
    //               //                   child: const Row(
    //               //                     children: [
    //               //                       SizedBox(width: 20,),
    //               //                       Text('SELLER NAME',style: TextStyle(color: Colors.grey)),
    //               //                       SizedBox(width: 180,),
    //               //                       Text('COMPANY',style: TextStyle(color: Colors.grey)),
    //               //                       SizedBox(width: 240,),
    //               //                       Text('PRODUCT',style: TextStyle(color: Colors.grey)),
    //               //                       SizedBox(width: 230,),
    //               //                       Text('REVENUE',style: TextStyle(color: Colors.grey)),
    //               //                       SizedBox(width: 90,),
    //               //                       Text('SELLER NAME',style: TextStyle(color: Colors.grey)),
    //               //                     ],
    //               //                   ),
    //               //                 ),
    //               //                 const SizedBox(height: 20,),
    //               //                 MemberProgress2(txt1: 'Robert Clinton', txt2: 'Samsung', txt3: 'Smart Phone', txt4: '\$38,536', txt5: 'Done', img: 'assets/robert-1.png'),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress2(txt1: 'Michael Johnson', txt2: 'Asus', txt3: 'Laptop', txt4: '\$20,573', txt5: 'Done', img: 'assets/robert-1.png'),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress2(txt1: 'Daniel White', txt2: 'Google', txt3: 'Watch', txt4: '\$17,457', txt5: 'Pendin', img: 'assets/robert-3.png'),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress2(txt1: 'Chris Barin', txt2: 'Apple', txt3: 'Computer', txt4: '\$15,354', txt5: 'Done', img: 'assets/robert-4.png'),
    //               //                 const SizedBox(height: 10,),
    //               //                 MemberProgress2(txt1: 'Daniel Pink', txt2: 'Panasonic', txt3: 'Sunglass', txt4: '\$12,354', txt5: 'Done', img: 'assets/robert-1.png'),
    //               //               ],
    //               //             )
    //               //         ),
    //               //       ],
    //               //     ),
    //               //     const SizedBox(height: 30,),
    //
    //
    //
    //
    //                   // Column(
    //                   //   children: [
    //                   //     constraints.maxWidth<600?
    //                   //     Container(
    //                   //         height: 860,
    //                   //         width: 450,
    //                   //         decoration: BoxDecoration(
    //                   //           color: Colors.white,
    //                   //           borderRadius: BorderRadius.circular(20),
    //                   //         ),
    //                   //         child: Column(
    //                   //           mainAxisAlignment: MainAxisAlignment.start,
    //                   //           crossAxisAlignment: CrossAxisAlignment.start,
    //                   //           children: [
    //                   //             SizedBox(
    //                   //               height: 830,
    //                   //               width: MediaQuery.of(context).size.width,
    //                   //               child: Column(
    //                   //                 children: [
    //                   //                   const Row(
    //                   //                     mainAxisAlignment: MainAxisAlignment.center,
    //                   //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                   //                     children: [
    //                   //                       Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
    //                   //                     ],
    //                   //                   ),
    //                   //                   const SizedBox(height: 10,),
    //                   //                   Row(
    //                   //                     mainAxisAlignment: MainAxisAlignment.center,
    //                   //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                   //                     children: [
    //                   //                       SizedBox(
    //                   //                         height: 30,
    //                   //                         width: 300,
    //                   //                         child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu.length,itemBuilder: (context, index) {
    //                   //                           return  Padding(
    //                   //                             padding: const EdgeInsets.all(2),
    //                   //                             child: InkWell(
    //                   //                               onTap: () {
    //                   //                                 setState(() {
    //                   //                                   a = index;
    //                   //                                 });
    //                   //                               },
    //                   //                               child: Container(
    //                   //                                 height: 30,
    //                   //                                 width: 70,
    //                   //                                 decoration: BoxDecoration(
    //                   //                                   color: a == index ? Colors.purple[100] : Colors.transparent,
    //                   //                                   borderRadius: BorderRadius.circular(10),
    //                   //                                 ),
    //                   //                                 child: Center(child: Text('${menu[index]}',style: TextStyle(color: Colors.purple[800]))),
    //                   //                               ),
    //                   //                             ),
    //                   //                           );
    //                   //                         },),
    //                   //                       ),
    //                   //                     ],
    //                   //                   ),
    //                   //                   const SizedBox(height: 10,),
    //                   //                   Row(
    //                   //                     mainAxisAlignment: MainAxisAlignment.center,
    //                   //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                   //                     children: [
    //                   //                       PopupMenuButton<SampleItem>(
    //                   //                         initialValue: selectedMenu,
    //                   //                         child: const Image(image: AssetImage('assets/more-horizontal.png')),
    //                   //                         onSelected: (SampleItem item) {
    //                   //                           setState(() {
    //                   //                             selectedMenu = item;
    //                   //                           });
    //                   //                         },
    //                   //                         itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
    //                   //                           const PopupMenuItem<SampleItem>(
    //                   //                             value: SampleItem.itemOne,
    //                   //                             child: Text('Action'),
    //                   //                           ),
    //                   //                           const PopupMenuItem<SampleItem>(
    //                   //                             value: SampleItem.itemTwo,
    //                   //                             child: Text('Another Action'),
    //                   //                           ),
    //                   //                           const PopupMenuItem<SampleItem>(
    //                   //                             value: SampleItem.itemThree,
    //                   //                             child: Text('Something else Here'),
    //                   //                           ),
    //                   //                         ],
    //                   //                       ),
    //                   //                     ],
    //                   //                   ),
    //                   //                   const SizedBox(height: 10,),
    //                   //                   Column(
    //                   //                     children: [
    //                   //                       Container(
    //                   //                         height: 400,
    //                   //                         width: 400,
    //                   //                         color: Colors.grey[100],
    //                   //                         child: SingleChildScrollView(
    //                   //                           scrollDirection: Axis.vertical,
    //                   //                           child: Column(
    //                   //                             children: [
    //                   //                               Container(
    //                   //                                 height: 50,
    //                   //                                 width: 400,
    //                   //                                 color: Colors.grey[200],
    //                   //                                 child: const Row(
    //                   //                                   children: [
    //                   //                                     SizedBox(width: 20,),
    //                   //                                     Text('TOP REGION',style: TextStyle(fontSize: 15,color: Colors.grey),),
    //                   //                                     SizedBox(width: 120,),
    //                   //                                     Text('ORDER',style: TextStyle(fontSize: 15,color: Colors.grey),),
    //                   //                                     SizedBox(width: 40,),
    //                   //                                     Text('REVENUE',style: TextStyle(fontSize: 15,color: Colors.grey),),
    //                   //                                   ],
    //                   //                                 ),
    //                   //                               ),
    //                   //                               const SizedBox(height: 45,),
    //                   //                               SalesLocation(txt1: 'United States', txt2: '90', txt3: '\$536'),
    //                   //                               const SizedBox(height: 45,),
    //                   //                               SalesLocation(txt1: 'Australia', txt2: '        70', txt3: '\$573'),
    //                   //                               const SizedBox(height: 45,),
    //                   //                               SalesLocation(txt1: 'Canada', txt2: '          30', txt3: '\$457'),
    //                   //                               const SizedBox(height: 45,),
    //                   //                               SalesLocation(txt1: 'Japan', txt2: '            50', txt3: '\$524'),
    //                   //                               const SizedBox(height: 45,),
    //                   //                               SalesLocation(txt1: 'India', txt2: '              20', txt3: '\$354'),
    //                   //                               const SizedBox(height: 45,),
    //                   //                             ],
    //                   //                           ),
    //                   //                         ),
    //                   //                       ),
    //                   //                     ],
    //                   //                   ),
    //                   //                   const SizedBox(height: 20,),
    //                   //                    Row(
    //                   //                     children: [
    //                   //                       SizedBox(width: 60,),
    //                   //                       Container(
    //                   //                         height: 300,
    //                   //                             child: SfCartesianChart(
    //                   //                                 series: <ChartSeries<ChartData, int>>[
    //                   //                                   ColumnSeries<ChartData, int>(
    //                   //                                       dataSource: chartData,
    //                   //                                       xValueMapper: (ChartData data, _) => data.x,
    //                   //                                       yValueMapper: (ChartData data, _) => data.y,
    //                   //                                       borderRadius: BorderRadius.all(Radius.circular(15))
    //                   //                                   )
    //                   //                                 ]
    //                   //                             )
    //                   //                       )
    //                   //                     ]
    //                   //
    //                   //                   ),
    //                   //                 ],
    //                   //               ),
    //                   //             ),
    //                   //           ],
    //                   //         )
    //                   //     ):
    //                   //     Container(
    //                   //         height: 500,
    //                   //         width: 1170,
    //                   //         decoration: BoxDecoration(
    //                   //           color: Colors.white,
    //                   //           borderRadius: BorderRadius.circular(20),
    //                   //         ),
    //                   //         child: Column(
    //                   //           mainAxisAlignment: MainAxisAlignment.start,
    //                   //           crossAxisAlignment: CrossAxisAlignment.start,
    //                   //           children: [
    //                   //             const SizedBox(height: 20,),
    //                   //             SizedBox(
    //                   //               height: 40,
    //                   //               width: MediaQuery.of(context).size.width,
    //                   //               child: Row(
    //                   //                 mainAxisAlignment: MainAxisAlignment.start,
    //                   //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                   //                 children: [
    //                   //                   const SizedBox(width: 20,),
    //                   //                   const SizedBox(height: 20,),
    //                   //                   const Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
    //                   //                   const SizedBox(width: 630,),
    //                   //                   SizedBox(
    //                   //                     height: 200,
    //                   //                     width: 300,
    //                   //                     child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu.length,itemBuilder: (context, index) {
    //                   //                       return  Padding(
    //                   //                         padding: const EdgeInsets.all(2),
    //                   //                         child: InkWell(
    //                   //                           onTap: () {
    //                   //                             setState(() {
    //                   //                               a = index;
    //                   //                             });
    //                   //                           },
    //                   //                           child: Container(
    //                   //                             height: 30,
    //                   //                             width: 70,
    //                   //                             decoration: BoxDecoration(
    //                   //                               color: a == index ? Colors.purple[100] : Colors.transparent,
    //                   //                               borderRadius: BorderRadius.circular(10),
    //                   //                             ),
    //                   //                             child: Center(child: Text('${menu[index]}',style: TextStyle(color: Colors.purple[800]))),
    //                   //                           ),
    //                   //                         ),
    //                   //                       );
    //                   //                     },),
    //                   //                   ),
    //                   //                   const SizedBox(width: 20,),
    //                   //                   PopupMenuButton<SampleItem>(
    //                   //                     initialValue: selectedMenu,
    //                   //                     child: const Image(image: AssetImage('assets/more-horizontal.png')),
    //                   //                     onSelected: (SampleItem item) {
    //                   //                       setState(() {
    //                   //                         selectedMenu = item;
    //                   //                       });
    //                   //                     },
    //                   //                     itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
    //                   //                       const PopupMenuItem<SampleItem>(
    //                   //                         value: SampleItem.itemOne,
    //                   //                         child: Text('Action'),
    //                   //                       ),
    //                   //                       const PopupMenuItem<SampleItem>(
    //                   //                         value: SampleItem.itemTwo,
    //                   //                         child: Text('Another Action'),
    //                   //                       ),
    //                   //                       const PopupMenuItem<SampleItem>(
    //                   //                         value: SampleItem.itemThree,
    //                   //                         child: Text('Something else Here'),
    //                   //                       ),
    //                   //                     ],
    //                   //                   ),
    //                   //                 ],
    //                   //               ),
    //                   //             ),
    //                   //             Row(
    //                   //               children: [
    //                   //                 Padding(
    //                   //                   padding: const EdgeInsets.only(left: 20,top: 20),
    //                   //                   child: Container(
    //                   //                     height: 350,
    //                   //                     width: 400,
    //                   //                     color: Colors.grey[100],
    //                   //                     child: SingleChildScrollView(
    //                   //                       scrollDirection: Axis.vertical,
    //                   //                       child: Column(
    //                   //                         children: [
    //                   //                           Container(
    //                   //                             height: 30,
    //                   //                             width: MediaQuery.of(context).size.width,
    //                   //                             color: Colors.grey[200],
    //                   //                             child: const Row(
    //                   //                               children: [
    //                   //                                 SizedBox(width: 20,),
    //                   //                                 Text('TOP REGION',style: TextStyle(fontSize: 15,color: Colors.grey),),
    //                   //                                 SizedBox(width: 120,),
    //                   //                                 Text('ORDER',style: TextStyle(fontSize: 15,color: Colors.grey),),
    //                   //                                 SizedBox(width: 40,),
    //                   //                                 Text('REVENUE',style: TextStyle(fontSize: 15,color: Colors.grey),),
    //                   //                               ],
    //                   //                             ),
    //                   //                           ),
    //                   //                           const SizedBox(height: 45,),
    //                   //                           SalesLocation(txt1: 'United States', txt2: '90', txt3: '\$536'),
    //                   //                           const SizedBox(height: 45,),
    //                   //                           SalesLocation(txt1: 'Australia', txt2: '        70', txt3: '\$573'),
    //                   //                           const SizedBox(height: 45,),
    //                   //                           SalesLocation(txt1: 'Canada', txt2: '          30', txt3: '\$457'),
    //                   //                           const SizedBox(height: 45,),
    //                   //                           SalesLocation(txt1: 'Japan', txt2: '            50', txt3: '\$524'),
    //                   //                           const SizedBox(height: 45,),
    //                   //                           SalesLocation(txt1: 'India', txt2: '              20', txt3: '\$354'),
    //                   //                           const SizedBox(height: 45,),
    //                   //                         ],
    //                   //                       ),
    //                   //                     ),
    //                   //                   ),
    //                   //                 ),
    //                   //                 const SizedBox(width: 90,),
    //                   //                  Padding(
    //                   //                   padding:  EdgeInsets.only(top: 20),
    //                   //                   child: SizedBox(
    //                   //                     height: 350,
    //                   //                     width: 600,
    //                   //                     child: Container(
    //                   //                         child: SfCartesianChart(
    //                   //                             series: <ChartSeries<ChartData, int>>[
    //                   //                               ColumnSeries<ChartData, int>(
    //                   //                                   dataSource: chartData,
    //                   //                                   xValueMapper: (ChartData data, _) => data.x,
    //                   //                                   yValueMapper: (ChartData data, _) => data.y,
    //                   //                                   borderRadius: BorderRadius.all(Radius.circular(15))
    //                   //                               )
    //                   //                             ]
    //                   //                         )
    //                   //                     ),
    //                   //
    //                   //                    ),
    //                   //                  )
    //                   //                ],
    //                   //              ),
    //                   //            ],
    //                   //          )
    //                   //      ),
    //                   //    ],
    //                   //  ),
    //
    //
    //
    //
    //
    //
    //
    //                    // const SizedBox(height: 30,),
    //                   Column(
    //                     children: [
    //                       constraints.maxWidth<600?
    //                       Column(
    //                         children: [
    //                           Padding(
    //                             padding: const EdgeInsets.all(10),
    //                             child: Container(
    //                                 height: 450,
    //                                 width: 570,
    //                                 decoration: BoxDecoration(
    //                                     color: const Color(0xffFFFFFF),
    //                                     borderRadius: BorderRadius.circular(20)
    //                                 ),
    //                                 child:  Column(
    //                                 children: [
    //                                   const SizedBox(height: 20,),
    //                                   const Row(
    //                                     mainAxisAlignment: MainAxisAlignment.center,
    //                                     crossAxisAlignment: CrossAxisAlignment.center,
    //                                     children: [
    //                                       SizedBox(width: 20,),
    //                                       Text('Top Selling Products',style: TextStyle(fontSize: 15)),
    //                                     ],
    //                                   ),
    //                                   Row(
    //                                     mainAxisAlignment: MainAxisAlignment.center,
    //                                     crossAxisAlignment: CrossAxisAlignment.center,
    //                                     children: [
    //                                       SizedBox(
    //                                         height: 40,
    //                                         width: 250,
    //                                         child: TabBar(
    //                                           indicator: BoxDecoration(
    //                                               color: const Color(0xffF2EAFB),
    //                                               borderRadius: BorderRadius.circular(10)
    //                                           ),
    //                                           tabs: const <Widget>[
    //                                             Tab(
    //                                               child: Text('Today',style: TextStyle(color: Color(0xff8231DA))),
    //                                             ),
    //                                              Tab(
    //                                                child: Text('Week',style: TextStyle(color: Color(0xff8231DA))),
    //                                              ),
    //                                              Tab(
    //                                                child: Text('Month',style: TextStyle(color: Color(0xff8231DA))),
    //                                              ),
    //                                            ],
    //                                          ),
    //                                        ),
    //                                      ],
    //                                    ),
    //                                    const SizedBox(height: 10,),
    //                                    Container(
    //                                      height: 30,
    //                                      width: 500,
    //                                      decoration: BoxDecoration(
    //                                          color: const Color(0xffF8F9FB),
    //                                          borderRadius: BorderRadius.circular(10)
    //                                      ),
    //                                      child: const Row(
    //                                        children: [
    //                                          Text('PRDUCTS NAME',style: TextStyle(color: Colors.grey)),
    //                                          SizedBox(width: 170,),
    //                                      Text('PRICE',style: TextStyle(color: Colors.grey)),
    //                                          SizedBox(width: 30,),
    //                                          Text('SOLD',style: TextStyle(color: Colors.grey)),
    //                                          SizedBox(width: 30,),
    //                                          Text('REVENUE',style: TextStyle(color: Colors.grey)),
    //                                        ],
    //                                      ),
    //                                    ),
    //                                    SizedBox(
    //                                      height: 300,
    //                                      width: 500,
    //                                      child: TabBarView(
    //                                        children: <Widget>[
    //                                          Table(
    //                                            columnWidths:  const <int, TableColumnWidth>{
    //                                              0: FlexColumnWidth(1),
    //                                              1: FlexColumnWidth(3),
    //                                              2: FlexColumnWidth(1),
    //                                              3: FlexColumnWidth(1),
    //                                            },
    //                                            children:   <TableRow>[
    //                                              MemberProgress3(txt1: 'Premium Clock', txt2: '\$280', txt3: '339', txt4: '\$38,536', img: 'assets/premium-clock.png'),
    //                                              MemberProgress3(txt1: 'Boys T-Shirt', txt2: '\$25', txt3: '80', txt4: '\$38,536', img: 'assets/t-shirt.png'),
    //                                              MemberProgress3(txt1: 'Nike Shoes', txt2: '\$32', txt3: '58', txt4: '\$38,536', img: 'assets/nike.png'),
    //                                              MemberProgress3(txt1: 'Smart Glass', txt2: '\$9,50', txt3: '36', txt4: '\$15,354', img: 'assets/cup-glass.png'),
    //                                              MemberProgress3(txt1: 'Women Bag', txt2: '\$32', txt3: '40', txt4: '\$12,354', img: 'assets/women-bag.png'),
    //                                            ],
    //                                          ),
    //                                           Table(
    //                                             columnWidths:  const <int, TableColumnWidth>{
    //                                               0: FlexColumnWidth(1),
    //                                               1: FlexColumnWidth(3),
    //                                               2: FlexColumnWidth(1),
    //                                               3: FlexColumnWidth(1),
    //                                             },
    //                                             children:   <TableRow>[
    //                                               MemberProgress3(txt1: 'Samsung Galaxy S8 256GB', txt2: '\$289', txt3: '339', txt4: '\$60,258', img: 'assets/287.png'),
    //                                               MemberProgress3(txt1: 'Half Sleeve Shirt', txt2: '\$29', txt3: '136', txt4: '\$2,483', img: 'assets/165.png'),
    //                                               MemberProgress3(txt1: 'Marco Shoes', txt2: '\$59', txt3: '448', txt4: '\$19,758', img: 'assets/166.png'),
    //                                               MemberProgress3(txt1: '15" Mackbook Pro', txt2: '\$1,299', txt3: '159', txt4: '197,458', img: 'assets/315.png'),
    //                                               MemberProgress3(txt1: 'Apple iPhone X', txt2: '\$899', txt3: '146', txt4: '115,254', img: 'assets/506.png'),
    //                                             ],
    //                                           ),
    //                                           Table(
    //                                             columnWidths:  const <int, TableColumnWidth>{
    //                                               0: FlexColumnWidth(1),
    //                                               1: FlexColumnWidth(3),
    //                                               2: FlexColumnWidth(1),
    //                                               3: FlexColumnWidth(1),
    //                                             },
    //                                             children:   <TableRow>[
    //                                               MemberProgress3(txt1: 'Samsung Galaxy S8 256GB', txt2: '\$289', txt3: '339', txt4: '\$60,258', img: 'assets/287.png'),
    //                                               MemberProgress3(txt1: 'Half Sleeve Shirt', txt2: '\$29', txt3: '136', txt4: '\$2,483', img: 'assets/165.png'),
    //                                               MemberProgress3(txt1: 'Marco Shoes', txt2: '\$59', txt3: '448', txt4: '\$19,758', img: 'assets/166.png'),
    //                                               MemberProgress3(txt1: '15" Mackbook Pro', txt2: '\$1,299', txt3: '159', txt4: '197,458', img: 'assets/315.png'),
    //                                              MemberProgress3(txt1: 'Apple iPhone X', txt2: '\$899', txt3: '146', txt4: '115,254', img: 'assets/506.png'),
    //                                            ],
    //                                          ),
    //                                        ],
    //                                      ),
    //                                    ),
    //                                  ],
    //                                )
    //                            ),
    //                          ),
    //                          Padding(
    //                            padding: const EdgeInsets.all(10),
    //                            child: Container(
    //                                height: 450,
    //                                width: 570,
    //                                decoration: BoxDecoration(
    //                                    color: const Color(0xffFFFFFF),
    //                                    borderRadius: BorderRadius.circular(20)
    //                                ),
    //                                child: Column(
    //                                  children: [
    //                                    Padding(
    //                                      padding: const EdgeInsets.only(top: 20,left: 10,right: 0),
    //                                      child: Column(
    //                                         children: [
    //                                           const Row(
    //                                             mainAxisAlignment: MainAxisAlignment.center,
    //                                             crossAxisAlignment: CrossAxisAlignment.center,
    //                                             children: [
    //                                               Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
    //
    //                                             ],
    //                                           ),
    //                                           Row(
    //                                             mainAxisAlignment: MainAxisAlignment.center,
    //                                             crossAxisAlignment: CrossAxisAlignment.center,
    //                                             children: [
    //                                               SizedBox(
    //                                                 height: 40,
    //                                                 width: 230,
    //                                                 child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
    //                                                   return  Padding(
    //                                                     padding: const EdgeInsets.all(2),
    //                                                     child: InkWell(
    //                                                       onTap: () {
    //                                                         setState(() {
    //                                                           b = index;
    //                                                         });
    //                                                       },
    //                                                       child: Container(
    //                                                         height: 30,
    //                                                         width: 70,
    //                                                         decoration: BoxDecoration(
    //                                                           color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
    //                                                           borderRadius: BorderRadius.circular(10),
    //                                                         ),
    //                                                         child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff8931D3)))),
    //                                                       ),
    //                                                     ),
    //                                                   );
    //                                                 },),
    //                                               ),
    //                                             ],
    //                                           )
    //                                         ],
    //                                       ),
    //                                     ),
    //                                     Padding(
    //                                       padding: const EdgeInsets.all(10),
    //                                       child: Container(
    //                                         height: 30,
    //                                         width: 600,
    //                                         decoration: BoxDecoration(
    //                                             color: const Color(0xffF8F9FB),
    //                                             borderRadius: BorderRadius.circular(10)
    //                                         ),
    //                                         child: const Row(
    //                                           children: [
    //                                             Text('CUSTOMER',style: TextStyle(color: Colors.grey)),
    //                                             SizedBox(width: 35,),
    //                                             Text('SESSION',style: TextStyle(color: Colors.grey)),
    //                                             SizedBox(width: 50,),
    //                                             Text('BOUNCE',style: TextStyle(color: Colors.grey)),
    //                                             SizedBox(width: 10,),
    //                                             Text('CTE',style: TextStyle(color: Colors.grey)),
    //                                             SizedBox(width: 10,),
    //                                             Text('GOAL CONV. RATE',style: TextStyle(color: Colors.grey)),
    //                                           ],
    //                                         ),
    //                                       ),
    //                                     ),
    //                                     const SizedBox(height: 10,),
    //                                     Padding(
    //                                         padding:  EdgeInsets.all(10),
    //                                         child: Column(
    //                                           children: [
    //                                             MemberProgress4(txt1: 'Google Chrome', txt2: '73,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                             const SizedBox(height: 40,),
    //                                             MemberProgress4(txt1: 'Mozila Firefox', txt2: '45,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                             const SizedBox(height: 40,),
    //                                             MemberProgress4(txt1: 'Apple Safari', txt2: '57,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                             const SizedBox(height: 40,),
    //                                             MemberProgress4(txt1: 'Internet Explorer', txt2: '92,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                             const SizedBox(height: 40,),
    //                                             MemberProgress4(txt1: 'Opera Mini', txt2: '78,345', txt3: '1.5%', txt4: '	48584', txt5: '80%'),
    //                                           ],
    //                                         )
    //                                     ),
    //                                   ],
    //                                 )
    //                             ),
    //                           ),
    //                         ],
    //                       ):
    //                       Row(
    //                         children: [
    //                           const SizedBox(width: 30,),
    //                           Container(
    //                               height: 400,
    //                               width: 570,
    //                               decoration: BoxDecoration(
    //                                   color: const Color(0xffFFFFFF),
    //                                   borderRadius: BorderRadius.circular(20)
    //                               ),
    //                               child:   Column(
    //                                 children: [
    //                                   const SizedBox(height: 20,),
    //                                   Row(
    //                                     children: [
    //                                       const SizedBox(width: 20,),
    //                                       const Text('Top Selling Products',style: TextStyle(fontSize: 15)),
    //                                       const SizedBox(width: 150,),
    //                                       SizedBox(
    //                                         height: 40,
    //                                         width: 250,
    //                                         child: TabBar(
    //                                           indicator: BoxDecoration(
    //                                               color: const Color(0xffF2EAFB),
    //                                               borderRadius: BorderRadius.circular(10)
    //                                           ),
    //                                           tabs: const <Widget>[
    //                                             Tab(
    //                                               child: Text('Today',style: TextStyle(color: Color(0xff8231DA))),
    //                                             ),
    //                                             Tab(
    //                                               child: Text('Week',style: TextStyle(color: Color(0xff8231DA))),
    //                                             ),
    //                                             Tab(
    //                                               child: Text('Month',style: TextStyle(color: Color(0xff8231DA))),
    //                                             ),
    //                                           ],
    //                                         ),
    //                                       ),
    //                                     ],
    //                                   ),
    //                                   const SizedBox(height: 10,),
    //                                   Container(
    //                                     height: 30,
    //                                     width: 500,
    //                                     decoration: BoxDecoration(
    //                                         color: const Color(0xffF8F9FB),
    //                                         borderRadius: BorderRadius.circular(10)
    //                                     ),
    //                                     child: const Row(
    //                                       children: [
    //                                         Text('PRDUCTS NAME',style: TextStyle(color: Colors.grey)),
    //                                         SizedBox(width: 170,),
    //                                         Text('PRICE',style: TextStyle(color: Colors.grey)),
    //                                         SizedBox(width: 30,),
    //                                         Text('SOLD',style: TextStyle(color: Colors.grey)),
    //                                         SizedBox(width: 30,),
    //                                         Text('REVENUE',style: TextStyle(color: Colors.grey)),
    //                                       ],
    //                                     ),
    //                                   ),
    //                                   SizedBox(
    //                                     height: 300,
    //                                     width: 500,
    //                                     child: TabBarView(
    //                                       children: <Widget>[
    //                                         Table(
    //                                           columnWidths:  const <int, TableColumnWidth>{
    //                                             0: FlexColumnWidth(1),
    //                                             1: FlexColumnWidth(3),
    //                                             2: FlexColumnWidth(1),
    //                                             3: FlexColumnWidth(1),
    //                                           },
    //                                           children:   <TableRow>[
    //                                             MemberProgress3(txt1: 'Premium Clock', txt2: '\$280', txt3: '339', txt4: '\$38,536', img: 'assets/premium-clock.png'),
    //                                             MemberProgress3(txt1: 'Boys T-Shirt', txt2: '\$25', txt3: '80', txt4: '\$38,536', img: 'assets/t-shirt.png'),
    //                                             MemberProgress3(txt1: 'Nike Shoes', txt2: '\$32', txt3: '58', txt4: '\$38,536', img: 'assets/nike.png'),
    //                                             MemberProgress3(txt1: 'Smart Glass', txt2: '\$9,50', txt3: '36', txt4: '\$15,354', img: 'assets/cup-glass.png'),
    //                                             MemberProgress3(txt1: 'Women Bag', txt2: '\$32', txt3: '40', txt4: '\$12,354', img: 'assets/women-bag.png'),
    //                                           ],
    //                                         ),
    //                                         Table(
    //                                           columnWidths:  const <int, TableColumnWidth>{
    //                                             0: FlexColumnWidth(1),
    //                                             1: FlexColumnWidth(3),
    //                                             2: FlexColumnWidth(1),
    //                                             3: FlexColumnWidth(1),
    //                                           },
    //                                           children:   <TableRow>[
    //                                             MemberProgress3(txt1: 'Samsung Galaxy S8 256GB', txt2: '\$289', txt3: '339', txt4: '\$60,258', img: 'assets/287.png'),
    //                                             MemberProgress3(txt1: 'Half Sleeve Shirt', txt2: '\$29', txt3: '136', txt4: '\$2,483', img: 'assets/165.png'),
    //                                             MemberProgress3(txt1: 'Marco Shoes', txt2: '\$59', txt3: '448', txt4: '\$19,758', img: 'assets/166.png'),
    //                                             MemberProgress3(txt1: '15" Mackbook Pro', txt2: '\$1,299', txt3: '159', txt4: '197,458', img: 'assets/315.png'),
    //                                             MemberProgress3(txt1: 'Apple iPhone X', txt2: '\$899', txt3: '146', txt4: '115,254', img: 'assets/506.png'),
    //                                           ],
    //                                         ),
    //                                         Table(
    //                                           columnWidths:  const <int, TableColumnWidth>{
    //                                             0: FlexColumnWidth(1),
    //                                             1: FlexColumnWidth(3),
    //                                             2: FlexColumnWidth(1),
    //                                             3: FlexColumnWidth(1),
    //                                           },
    //                                           children:   <TableRow>[
    //                                             MemberProgress3(txt1: 'Samsung Galaxy S8 256GB', txt2: '\$289', txt3: '339', txt4: '\$60,258', img: 'assets/287.png'),
    //                                             MemberProgress3(txt1: 'Half Sleeve Shirt', txt2: '\$29', txt3: '136', txt4: '\$2,483', img: 'assets/165.png'),
    //                                             MemberProgress3(txt1: 'Marco Shoes', txt2: '\$59', txt3: '448', txt4: '\$19,758', img: 'assets/166.png'),
    //                                             MemberProgress3(txt1: '15" Mackbook Pro', txt2: '\$1,299', txt3: '159', txt4: '197,458', img: 'assets/315.png'),
    //                                             MemberProgress3(txt1: 'Apple iPhone X', txt2: '\$899', txt3: '146', txt4: '115,254', img: 'assets/506.png'),
    //                                           ],
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),
    //                                 ],
    //                               )
    //                           ),
    //                           const SizedBox(width: 30,),
    //                           Container(
    //                               height: 400,
    //                               width: 570,
    //                               decoration: BoxDecoration(
    //                                   color: const Color(0xffFFFFFF),
    //                                   borderRadius: BorderRadius.circular(20)
    //                               ),
    //                               child: Column(
    //                                 children: [
    //                                   Padding(
    //                                     padding: const EdgeInsets.only(top: 20,left: 10,right: 0),
    //                                     child: Row(
    //                                       children: [
    //                                         const Text('Sales By Location',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
    //                                         const SizedBox(width: 195,),
    //                                         SizedBox(
    //                                           height: 40,
    //                                           width: 230,
    //                                           child: ListView.builder(scrollDirection: Axis.horizontal,shrinkWrap: true,itemCount: menu11.length,itemBuilder: (context, index) {
    //                                             return  Padding(
    //                                               padding: const EdgeInsets.all(2),
    //                                               child: InkWell(
    //                                                 onTap: () {
    //                                                   setState(() {
    //                                                     b = index;
    //                                                   });
    //                                                 },
    //                                                 child: Container(
    //                                                   height: 30,
    //                                                   width: 70,
    //                                                   decoration: BoxDecoration(
    //                                                     color: b == index ? const Color(0xffF2EAFB) : Colors.transparent,
    //                                                     borderRadius: BorderRadius.circular(10),
    //                                                   ),
    //                                                   child: Center(child: Text('${menu11[index]}',style: const TextStyle(color: Color(0xff8931D3)))),
    //                                                 ),
    //                                               ),
    //                                             );
    //                                           },),
    //                                         ),
    //                                       ],
    //                                     ),
    //                                   ),
    //                                   Padding(
    //                                     padding: const EdgeInsets.all(10),
    //                                     child: Container(
    //                                       height: 30,
    //                                       width: 600,
    //                                       decoration: BoxDecoration(
    //                                           color: const Color(0xffF8F9FB),
    //                                           borderRadius: BorderRadius.circular(10)
    //                                       ),
    //                                       child: const Row(
    //                                         children: [
    //                                           Text('CUSTOMER',style: TextStyle(color: Colors.grey)),
    //                                           SizedBox(width: 60,),
    //                                           Text('SESSION',style: TextStyle(color: Colors.grey)),
    //                                           SizedBox(width: 20,),
    //                                           Text('BOUNCE RATE',style: TextStyle(color: Colors.grey)),
    //                                           SizedBox(width: 30,),
    //                                           Text('CTE',style: TextStyle(color: Colors.grey)),
    //                                           SizedBox(width: 30,),
    //                                           Text('GOAL CONV. RATE',style: TextStyle(color: Colors.grey)),
    //                                         ],
    //                                       ),
    //                                     ),
    //                                   ),
    //                                   const SizedBox(height: 10,),
    //                                   Padding(
    //                                       padding: const EdgeInsets.only(left: 10,top: 0,right: 10,bottom: 20),
    //                                       child: Column(
    //                                         children: [
    //                                           MemberProgress4(txt1: 'Google Chrome', txt2: '73,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                           const SizedBox(height: 40,),
    //                                           MemberProgress4(txt1: 'Mozila Firefox', txt2: '45,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                           const SizedBox(height: 40,),
    //                                           MemberProgress4(txt1: 'Apple Safari', txt2: '57,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                           const SizedBox(height: 40,),
    //                                           MemberProgress4(txt1: 'Internet Explorer', txt2: '92,345', txt3: '3.5%', txt4: '12025', txt5: '90%'),
    //                                           const SizedBox(height: 40,),
    //                                           MemberProgress4(txt1: 'Opera Mini', txt2: '78,345', txt3: '1.5%', txt4: '	48584', txt5: '80%'),
    //                                         ],
    //                                       )
    //                                   ),
    //                                 ],
    //                               )
    //                           ),
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ],
    //               ),
    //               // const SizedBox(height: 40,),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   }
    // );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.y1);
  final int x;
  final double y;
  final double y1;
}