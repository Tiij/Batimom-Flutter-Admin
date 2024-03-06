// ignore_for_file: deprecated_member_use, file_names


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';


class ComunTitle extends StatefulWidget {
  final String title;
  final String path;
  const ComunTitle({super.key, required this.title, required this.path});

  @override
  State<ComunTitle> createState() => _ComunTitleState();
}

class _ComunTitleState extends State<ComunTitle> {
  TextStyle mediumBlackTextStyle = const TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Gilroy");
  final AppConst controller = Get.put(AppConst());
  @override
  Widget build(BuildContext context) {
    return   LayoutBuilder(
        builder: (context, constraints){
          return Consumer<ColorNotifire>(
            builder: (context, value, child) => GetBuilder<AppConst>(
                builder: (context) {
                  return Padding(
                    padding:   const EdgeInsets.all(15),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.title),
                        Flexible(
                          child: Wrap(
                            runSpacing: 5,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.changePage(0);
                                },
                                child: SvgPicture.asset("assets/home.svg"),),
                              Text('   /   ${widget.path}   /   ',),
                              Text(widget.title),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }
            ),
          );
        }
    );

  }
}



class AppConst extends GetxController implements GetxService{

  RxInt pageselecter = 0.obs;

  RxInt selectColor = 0.obs;
  RxInt selectedTile = 0.obs;


  RxInt gridcounter = 4.obs;

  RxInt newGridCounter = 4.obs;

  RxDouble size = 550.0.obs;

  RxDouble size2 = 350.0.obs;

  int selectCategory = 0;

  int gridecoumter1 = 4;
  int grideCount = 4;

  grideupdate(int value){
    gridecoumter1 = value;
  }
  grideupdate1(int value){
    gridecoumter1 = value;
    update();
  }

  changeCurrentIndex({int?index}){
    selectCategory = index??0;
    update();
  }


  void changePage(int newIndex) {
    pageselecter.value = newIndex;
  }


  List prodectname = [
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "VOXATI",
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "VOXATI",
    "Cyclamen",
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "VOXATI",
    "Cyclamen",
    "Woman T-shirt",
    "Dream Beauty Fashion",
    "Woman T-shirt",
    "VOXATI",
    "Cyclamen",
    "VOXATI",
    "Cyclamen",
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
    "\$23.00",
    "\$22.00",
    "\$16.00",
    "\$25.00",
    "\$36.00",
    "\$26.00",
    "\$95.00",
    "\$36.00",
    "\$76.00",
    "\$46.00",
    "\$27.00",
    "\$24.00",
    "\$13.00",
  ];

  List productimage = [
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
  ];



  List productimage11 = [
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/full-length-portrait-happy-excited-girl-bright-colorful-clothes-holding-shopping-bags-while-standing-showing-peace-gesture-isolated.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
    "assets/portrait-payment-white-happy-consumer.jpg",
    "assets/portrait-expressive-young-woman-holding-shopping-bags.jpg",
    "assets/cheerful-shopaholic-paying-by-mobile-app.jpg",
  ];

}