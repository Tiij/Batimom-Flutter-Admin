import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:web_project1/Auth_Screen/forgot_screen.dart';
import 'package:web_project1/Auth_Screen/otp_screen.dart';
import 'package:web_project1/Auth_Screen/auth_screen.dart';
import 'package:web_project1/Auther_Pages/comming_soon_screen.dart';
import 'package:web_project1/Auther_Pages/error_404_Page.dart';
import 'package:web_project1/Auther_Pages/error_505_Page.dart';
import 'package:web_project1/Auther_Pages/started_screen.dart';
import 'package:web_project1/Auther_Pages/multi-level-screen.dart';
import 'package:web_project1/Avatar_Screen/avater_screen.dart';
import 'package:web_project1/Carousel_Screen/carousel_screen.dart';
import 'package:web_project1/Chart_Screen/chart_screen_1.dart';
import 'package:web_project1/Chat_Screen/chat_screen.dart';
import 'package:web_project1/Components_screen/basic_vertical_and_horizantal.dart';
import 'package:web_project1/Components_screen/chekbox_radio_screen.dart';
import 'package:web_project1/Components_screen/inline_form_screen.dart';
import 'package:web_project1/Components_screen/input_size_input_group.dart';
import 'package:web_project1/Components_screen/selected_screen.dart';
import 'package:web_project1/Components_screen/validation_screen.dart';
import 'package:web_project1/Components_screen/button_screen.dart';
import 'package:web_project1/Components_screen/components_screen_1.dart';
import 'package:web_project1/Components_screen/components_tabs_screen.dart';
import 'package:web_project1/Components_screen/drop_down_screen.dart';
import 'package:web_project1/Components_screen/floating_lables_screen.dart';
import 'package:web_project1/Components_screen/form_element_screen.dart';
import 'package:web_project1/Crm_Section/auto_complete_select_screen.dart';
import 'package:web_project1/Crm_Section/crm_dashboard_screen.dart';
import 'package:web_project1/Crm_Section/file_uploade_screen.dart';
import 'package:web_project1/FAQ_SCREEN/faq_scrren.dart';
import 'package:web_project1/Invoice_Screen/invoice_list_scree.dart';
import 'package:web_project1/Invoice_Screen/invoice_table_screen.dart';
import 'package:web_project1/Map_Scrren/map_screen.dart';
import 'package:web_project1/Pricing_Screen/pricing_screen.dart';
import 'package:web_project1/Project_Creat_Screen/project_create_screen.dart';
import 'package:web_project1/Project_screen/project1_screen.dart';
import 'package:web_project1/Widget_Screen/widget_screen_1.dart';
import 'package:web_project1/Zig_Zag_Screen/zig_zag_screen.dart';
import 'package:web_project1/e%20commerce_screen/Add_product_screen.dart';
import 'package:web_project1/e%20commerce_screen/Check_out_screen.dart';
import 'package:web_project1/e%20commerce_screen/Datatable_screen.dart';
import 'package:web_project1/e%20commerce_screen/Detail_Product_Screen.dart';
import 'package:web_project1/e%20commerce_screen/Order_screen.dart';
import 'package:web_project1/e%20commerce_screen/cart_screen.dart';
import 'package:web_project1/e%20commerce_screen/prodect_screen.dart';
import 'package:web_project1/kanban_screen/kanban_scree_1.dart';
import '../Auth_Screen/forgot_screen_2.dart';
import '../Auth_Screen/login_screen.dart';
import '../Crm_Section/contact_screen.dart';
import '../Crm_Section/contact_screen_2.dart';
import '../Crm_Section/opportunitie_scerren.dart';
import '../Crm_Section/profile_details_screen.dart';
import '../Crm_Section/task_screen.dart';
import '../demo-1-screen/common_layout.dart';
import '../e commerce_screen/invoices.dart';
import '../email-inbox-screen/inbox_screen.dart';

class InboxController extends GetxController implements GetxService {
  int pageselecter = 0;
  bool drwar = false;

  setvalue(){
    drwar =! drwar;
    update();
  }

  List page12=[
    const laout(),                         //0
    const Inbox(),                         //1
    const Projct(),                        //2
    const comoponet(),                     //3
    const tabs(),                          //4
    const Button(),                        //5
    const Drop_Down(),                     //6
    const Form_Elemente(),                 //7
    const Floating_Lables(),               //8
    const Select_Screen(),                 //9
    const Checkbox_and_Radio(),            //10
    const InputScreen(),                   //11
    const Vertical_Horizontal(),           //12
    const Inline_Form(),                   //13
    const Pricing_Screen(),                //14
    const Avater_SCreen(),                 //15
    const CAROUSEL_screen(),               //16
    const Zig_and_Zag_Screen(),            //17
    const MAP_SCREEN(),                    //18
    const FAQ_Screen(),                    //19
    const Chat_Screen(),                   //20
    const Widget_Screen_1(),               //21
    const Auth_Screen(),                   //22
    const Login_Screen(),                  //23
    const ForgotScreen(),                  //24
    const Forgot_Screen_2(),               //25
    const OTP_Screen(),                    //26
    const OTP_Screen(),                    //27
    const Charyt_Screen(),                 //28
    const Project_Create(),                //29
    const invoice_screen(),                //30
    const Invoid_Table(),                  //31
    const Error_Screen_1(),                //32
    const Error_Screen_2(),                //33
    const Started_Screen_1(),              //34
    const Comming_soon(),                  //35
    const multi_level(),                   //36
    const Validation(),                    //37
    const kanban_screen_1(),               //38
    const Product_screen_1(),              //39
    const Product_Screen_11(),             //40
    const Cart_screen_1(),                 //41
    const Check_out_1(),                   //42
    const Order_Screen_1(),                //43
    const Add_Product_screen_1(),          //44
    const Invoices(),                      //45
    const crm_dashboard(),                 //46
    const Contact_Details_Screen(),        //47
    const Opportunitie_Screen(),           //48
    const Task_Screen(),                   //49
    const Contact_Screen_2(),              //50
    const Profile_Details(),               //51
    const auto_complete_select(),          //52
    const File_Uploade(),                  //53
  ];

  setTextIsTrue(int value) {
    pageselecter = value;
    update();
  }

}
