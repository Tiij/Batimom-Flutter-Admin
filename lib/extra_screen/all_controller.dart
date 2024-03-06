import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InvoiceController extends GetxController implements GetxService{
  var checkBoxs = [];
  var popupcolorchack = [];
  bool  checkboxis = false;
  bool ismenuopen = false;
  int selectpage = 0;
  int loadmore = 7;

  ScrollController scrollController = ScrollController();

  setloadmore(value){
    loadmore = value;
    update();
  }

  setpage(value){
    selectpage = value;
    update();
  }


  List listtiletitle = [
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
    "New product",
    "Tital Product detail",
    "Learning Degine",
  ];
  List date = [
    "15 2136 8956",
    "45 2563 7896",
    "45 2563 3654",
    "79 1489 5274",
    "02 2222 6541",
    "15 2136 8956",
    "45 2563 7896",
    "45 2563 3654",
    "79 1489 5274",
    "02 2222 6541",
    "15 2136 8956",
    "45 2563 7896",
    "45 2563 3654",
    "79 1489 5274",
    "02 2222 6541",
    "45 2563 3654",
    "79 1489 5274",
    "02 2222 6541",
  ];
  List clint = [
    "predefined chunks",
    "Ipsum available",
    "readable English",
    "Richard McClintock",
    "predefined chunks",
    "Ipsum available",
    "readable English",
    "Richard McClintock",
    "predefined chunks",
    "Ipsum available",
    "readable English",
    "Richard McClintock",
    "predefined chunks",
    "Ipsum available",
    "readable English",
    "Richard McClintock",
    "predefined chunks",
    "Ipsum available",
  ];
  List price = [
    "April 02, 2021",
    "Oct 02, 2024",
    "January 08, 2022",
    "Jun 25, 2015",
    "April 02, 2021",
    "Oct 02, 2024",
    "January 08, 2022",
    "Jun 25, 2015",
    "April 02, 2021",
    "Oct 02, 2024",
    "January 08, 2022",
    "Jun 25, 2015",
    "April 02, 2021",
    "Oct 02, 2024",
    "January 08, 2022",
    "Jun 25, 2015",
    "April 02, 2021",
    "Oct 02, 2024",
  ];
  List status = [
    "Unpaid",
    "Pending",
    "Pending",
    "Pending",
    "Unpaid",
    "Refund",
    "Paid",
    "Paid",
    "Paid",
    "Unpaid",
    "Pending",
    "Pending",
    "Pending",
    "Unpaid",
    "Refund",
    "Paid",
    "Paid",
    "Paid",
  ];

  List iteamcolor = [
    const Color(0xff936DFF),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xff936DFF),
    const Color(0xffFACC15),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff936DFF),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xff936DFF),
    const Color(0xffFACC15),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
  ];

  List containecolore = [
    const Color(0xff936DFF),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xff936DFF),
    const Color(0xffFACC15),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff936DFF),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xffFF784B),
    const Color(0xff936DFF),
    const Color(0xffFACC15),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
    const Color(0xff22C55E),
  ];



  List imageintable = [
    'assets/womanqxv.png',
    'assets/women-bag.png',
    'assets/woman1.png',
    'assets/volleyball.png',
    'assets/woman.png',
    'assets/womanqxv.png',
    'assets/women-bag.png',
    'assets/woman1.png',
    'assets/volleyball.png',
    'assets/woman.png',
    'assets/woman1.png',
    'assets/volleyball.png',
    'assets/woman.png',
    'assets/womanqxv.png',
    'assets/women-bag.png',
    'assets/woman1.png',
    'assets/volleyball.png',
    'assets/woman.png',

  ];

  setmenuu(value){
    ismenuopen = value;
    update();
  }

  int selectindex = 10;

  setindexforitem(value){
    selectindex = value;
    update();
  }

  setchekboxis(value){
    checkboxis = value;
    update();
  }

  selcetcheckbox(index){
    if(checkBoxs.contains(index)){
      checkBoxs.remove(index);
      update();
    }else{
      checkBoxs.add(index);
      update();
    }
  }
}