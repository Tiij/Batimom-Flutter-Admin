
// ignore_for_file: non_constant_identifier_names

import 'colore_file.dart';
import 'package:flutter/material.dart';

class ColorNotifire with ChangeNotifier {

  get getIsDark => isDark;
  get TextColorgreay => isDark ? coloreblack : colorewhite;

  get getdrwer => isDark ? coloredrwer : colorewhite;
  get background => isDark ? backgroundcolore : colorewhite;

  get bgcolore => isDark ? backgroundcolore : backgrounde;

  get textcolore => isDark ? colorewhite : coloreblack;
  get textcolorgray => isDark ? textcoloregreay : colorewhite;

  get containcolore1 => isDark ? containcolore : colorewhite;
  get getsecoundcontain => isDark ? secoundecpntain : const Color(0xffF4F5F7);

  get deercolore => isDark ? drowercolore : const Color(0xffF0EFFC);
  get drwetextcode => isDark ? const Color(0xffFFFFFF) :  const Color(0xff5648DF);

  get authbuttoncolore => isDark ? Colors.grey.withOpacity(0.2) : const Color(0xffF1F2F5);
  get darkmaincontain => isDark ? Colors.black : Colors.grey.withOpacity(0.2);

  get undrcontaincolore => isDark ? const Color(0xff282B37) : Colors.white;
  get mapclre => isDark ? const Color(0xffF4F5F7) : Colors.blue;

  get tercotain => isDark ?    const  Color(0xff1E2841) : Colors.white;

  get drfrrancontainecolore => isDark ? backgroundcolore : Color(0xffF4F5F7);






  bool _isDark = false;
  bool get isDark => _isDark;

  void isavalable(bool value) {
    _isDark = value;
    notifyListeners();
  }

}