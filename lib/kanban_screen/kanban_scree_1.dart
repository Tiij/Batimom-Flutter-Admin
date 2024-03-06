// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:kanban_board/custom/board.dart';
import 'package:kanban_board/models/inputs.dart';
import 'package:provider/provider.dart';
import '../Provider/colore_provider.dart';

class kanban_screen_1 extends StatefulWidget {
  const kanban_screen_1({super.key});

  @override
  State<kanban_screen_1> createState() => _kanban_screen_1State();
}

class _kanban_screen_1State extends State<kanban_screen_1> {

  ColorNotifire notifire = ColorNotifire();

  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Container(
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
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                      height: 800,
                      width: MediaQuery.of(context).size.width * 2,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: _buildcanban(),
                      )),
                ),
                const SizedBox(height: 100,),
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
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 800,
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: _buildcanban(),
                          )),
                    ],
                  ),
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
                const SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                          height: 800,
                           width: MediaQuery.of(context).size.width+105,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: _buildcanban(),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          );
        }
      },),
    );
  }

 Widget _buildcanban(){
    return KanbanBoard(

       // listDecoration: BoxDecoration(
       //   // color: Colors.red,
       //   borderRadius: BorderRadius.circular(15)
       // ),

      List.generate(
        6,
            (index1) => BoardListsData(
            // backgroundColor: Colors.white,
            // header: ClipRRect(borderRadius: BorderRadius.circular(15)),
            // footer: Text('Hi',style: TextStyle(color: Colors.red)),
            title: 'List ${index1 + 1}',
            headerBackgroundColor: index1 == 0? const Color(0xff5d87ff): index1 == 1? const Color(0xfff3ae21) : index1 == 2? const Color(0xfff1896b) : index1 == 3? const Color(0xff5adeb9) : index1==4? const Color(0xff5d87ff) : const Color(0xfff3ae21) ,
            footerBackgroundColor: index1 == 0? const Color(0xff5d87ff): index1 == 1? const Color(0xfff3ae21) : index1 == 2? const Color(0xfff1896b) : index1 == 3? const Color(0xff5adeb9) : index1==4? const Color(0xff5d87ff) : const Color(0xfff3ae21) ,
            items: List.generate(
              50,
                (index) => Container(
                color:  index1 == 0? const Color(0xffecf2ff): index1 == 1? const Color(0xfffdf5e5) : index1 == 2? const Color(0xfffcede8) : index1 == 3? const Color(0xffe6fffa) : index1==4? const Color(0xffecf2ff) :  const Color(0xfffdf5e5)  ,
                child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lorem ipsum dolor sit amet, Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. $index", style: TextStyle(fontSize: 15, height: 1.3, color: Colors.grey.shade800, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 10,),
                    const Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(backgroundImage: AssetImage('assets/avatar-3 2c.png'),radius: 15,),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: CircleAvatar(backgroundImage: AssetImage('assets/avatar-1 11.png'),radius: 15,),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40),
                              child: CircleAvatar(backgroundImage: AssetImage('assets/avatar-5 2z.png'),radius: 15,),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image(image: AssetImage('assets/trash (3).png')),
                      ],
                    ),
                  ],
                ),
              ),
                  ),
            )),
      ),
      onItemLongPress: (cardIndex, listIndex) {},
      onItemReorder: (oldCardIndex, newCardIndex, oldListIndex, newListIndex) {},
      onListLongPress: (listIndex) {},
      onListReorder: (oldListIndex, newListIndex) {},
      onItemTap: (cardIndex, listIndex) {},
      onListTap: (listIndex) {},
      onListRename: (oldName, newName) {},
      backgroundColor: notifire.containcolore1,
      displacementY: 124,
      displacementX: 0,
      textStyle: TextStyle(fontSize: 18, height: 1.3, color: Colors.grey.shade800, fontWeight: FontWeight.w500),
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
                child: Text('kanban',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  height: 60,
                  width: 110,
                  child: Row(
                    children: [
                      const SizedBox(width: 10,),
                      Image(image: const AssetImage('assets/6.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Dashboard',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('kanban',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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


  //
  // Widget contain({required double size}){
  //   return SizedBox(
  //       height: 900,
  //       width: size<1000 ? 1500 : size,
  //       child: Padding(
  //         padding: const EdgeInsets.only(left: 10),
  //         child: BoardViewExample(),
  //       ));
  // }





}




//
// class BoardViewExample extends StatelessWidget {
//
//
//
//   final List<BoardListObject> _listData = [
//     BoardListObject(title: "Todo", items: [
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//     ]),
//     BoardListObject(title: "Inprogress", items: [
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//     ]),
//     BoardListObject(title: "Onhold", items: [
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//     ]),
//     BoardListObject(title: "Completed", items: [
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//       BoardItemobject(title: "Angular 5 material\nLorem ipsum,dapibus ac facilsis\nin,egestas eget quam.interger\nposuere erat aassg."),
//     ]),
//   ];
//
//
//
//   //Can be used to animate to different sections of the BoardView
//   BoardViewController boardViewController = BoardViewController();
//
//   BoardViewExample({super.key});
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     List<BoardList> lists = [];
//     for (int i = 0; i < _listData.length; i++) {
//       lists.add(_createBoardList(_listData[i]) as BoardList);
//     }
//     return BoardView(
//       lists: lists,
//       width: 400,
//       boardViewController: boardViewController,
//     );
//   }
//
//   Widget buildBoardItem(BoardItemobject itemObject,int index) {
//     return  BoardItem(
//           onStartDragItem: (int? listIndex, int? itemIndex, BoardItemState? state) {
//           },
//           onDropItem: (int? listIndex, int? itemIndex, int? oldListIndex, int? oldItemIndex, BoardItemState? state) {
//             //Used to update our local item data
//             var item = _listData[oldListIndex!].items[oldItemIndex!];
//             _listData[oldListIndex].items.removeAt(oldItemIndex);
//             _listData[listIndex!].items.insert(itemIndex!, item);
//
//           },
//           onTapItem: (int? listIndex, int? itemIndex, BoardItemState? state) async {
//           },
//           item: Card(
//             shape: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.white),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             color:  index ==2 ? const Color(0xffE6FFFA) : index   ==3 ? const Color(0xffFDEDE8) : index ==4 ? const Color(0xffFEF5E5) : index ==5 ? const Color(0xffECF2FF) : index ==3 ?  Colors.deepPurple : Colors.pink ,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(itemObject.title),
//                 ),
//                 const Row(
//                   children: [
//                     SizedBox(width: 10,),
//                     Stack(
//                       children: [
//                         CircleAvatar(backgroundImage: AssetImage('assets/avatar-1 11.png'),radius: 15,),
//                         Padding(
//                           padding: EdgeInsets.only(left: 20),
//                           child: CircleAvatar(backgroundImage: AssetImage('assets/avatar-3 2c.png'),radius: 15,),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 40),
//                           child: CircleAvatar(backgroundImage: AssetImage('assets/avatar-2 11.png'),radius: 15,),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 60),
//                           child: CircleAvatar(backgroundImage: AssetImage('assets/avatar-4 2m.png'),radius: 15,),
//                         ),
//                       ],
//                     ),
//                     Spacer(),
//                     Image(image: AssetImage('assets/trash (1).png'),height: 20,width: 20,),
//                     SizedBox(width: 15,),
//                   ],
//                 ),
//                 const SizedBox(height: 10,),
//               ],
//             ),
//           ),
//     );
//   }
//
//   Widget _createBoardList(BoardListObject list) {
//
//     List<BoardItem> items = [];
//     for (int i = 0; i < list.items.length; i++) {
//       items.insert(i, buildBoardItem(list.items[i],list.items.length) as BoardItem);
//     }
//
//     return BoardList(
//       onStartDragList: (int? listIndex) {
//       },
//       onTapList: (int? listIndex) async {
//
//       },
//       onDropList: (int? listIndex, int? oldListIndex) {
//         //Update our local list data
//         var list = _listData[oldListIndex!];
//         _listData.removeAt(oldListIndex);
//         _listData.insert(listIndex!, list);
//       },
//       headerBackgroundColor: items.length ==2 ? const Color(0xff13DEB9) : items.length ==3 ? const Color(0xffFA896B) : items.length ==4 ? const Color(0xffFFAE1F) : items.length ==5 ? const Color(0xff5D87FF) : items.length ==3 ?  Colors.deepPurple : Colors.pink ,
//       boardView: BoardViewState(),
//       backgroundColor: Colors.white,
//       header: [
//         Expanded(
//             child: Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: Center(
//                   child: Text(
//                     list.title,
//                     style: const TextStyle(fontSize: 15,color: Colors.white),
//                   ),
//                 ))),
//       ],
//       items: items,
//     );
//   }
// }
//
//
//
//
//
//
//
//
// class BoardListObject{
//   String title;
//   List<BoardItemobject> items;
//   BoardListObject({required this.title, required this.items});
// }
//
// class BoardItemobject{
//   late String title;
//   late String from;
//   BoardItemobject({this.title = '',this.from = ''});
//
// }