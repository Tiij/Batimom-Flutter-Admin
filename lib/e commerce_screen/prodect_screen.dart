// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Auth_Screen/sign_up_screen.dart';
import '../Provider/colore_provider.dart';

class Product_screen_1 extends StatefulWidget {
  const Product_screen_1({Key? key}) : super(key: key);

  @override
  State<Product_screen_1> createState() => _Product_screen_1State();
}

class _Product_screen_1State extends State<Product_screen_1> {
  ColorNotifire notifire = ColorNotifire();

  List prodectname = [
    'Bonorum et Malorum',
    'Striped Dress',
    'BBow polka-dot',
    'Z Product 360',
    'Back Bag',
    'Bonorum et Malorum',
    'Striped Dress',
    'BBow polka-dot',
    'Z Product 360',
    'Back Bag',
    'Bonorum et Malorum',
    'Striped Dress',
  ];
  List prodectdiscription = [
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Denim Jacket",
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
    "Women Full Sleeve Printed Sweatshirt",
    "Tops for Women Stylish",
    "Women Full Sleeve Printed Sweatshirt",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
    "Denim Jacket",
    "Stylish co-ord set 2 piece dress for women",
  ];

  List prodectprice = [
    "\$26.00",
    "\$56.00",
    "\$56.00",
    "\$16.00",
    "\$26.00",
    "\$26.00",
    "\$56.00",
    "\$56.00",
    "\$16.00",
    "\$26.00",
    "\$26.00",
    "\$56.00",
  ];

  List productimage = [
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    'assets/portrait-expressive-young-woman-holding-shopping-bags.jpg',



  ];
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return  Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: notifire.bgcolore,
      child:LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth<600){
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                // SizedBox(height: 20,),
                mainrow(),
                const SizedBox(height: 10,),
                 _buildgridview(width: constraints.maxWidth,count: 1),
                const SizedBox(height: 100,)
              ],
            ),
          );
        }
        else if(constraints.maxWidth<1200){
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Row(
                children: [
                  Expanded(child: mainrow()),
                ],
              ),
              Row(
                children: [
                   Expanded(child: _buildgridview(width: constraints.maxWidth,count: 4)),
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
                Row(
                  children: [
                     Expanded(child: _buildgridview(width: constraints.maxWidth,count: 6)),
                  ],
                )
              ],
            ),
          );
        }
      },),
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
                child: Text('Product',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 100,
                  child: Row(
                    children: [
                      Image(image: const AssetImage('assets/home.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('Product',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget _buildgridview({required double width,required int count}) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: count,
          mainAxisExtent: 580),
      itemCount: productimage.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: notifire.containcolore1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: InkWell(
                      onTap: () {
                        inboxController.setTextIsTrue(40);
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            // color: Colors.deepPurple,
                            height: 500,
                            width: 400,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(12)),
                                image: DecorationImage(
                                  image: AssetImage(productimage[index]),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                      )),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(prodectname[index],overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(
                            height: 3,
                          ),
                          start(size: width),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(prodectprice[index],overflow: TextOverflow.ellipsis,style: TextStyle(color: notifire.textcolore)),
                              const SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xffdcdfe5))),
                                child: const Text('Add to cart',style: TextStyle(color: Colors.black)),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  Widget start({required double size}){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
            Icon(Icons.star,color: Colors.yellow,size: 15),
            SizedBox(width: 5,),
          ],
        ),
      ],
    );
  }


}
