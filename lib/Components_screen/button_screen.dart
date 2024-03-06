import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}
ColorNotifire notifire = ColorNotifire();
class _ButtonState extends State<Button> {
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
                firstcontain(),
                const SizedBox(height: 20,),
                secoundecontain(size: constraints.maxWidth),
                const SizedBox(height: 20,),
                thirdcontain(),
                const SizedBox(height: 20,),
                fourcontain(size: constraints.maxWidth),
                const SizedBox(height: 20,),
                fivecontain(),
                const SizedBox(height: 20,),
                sixcontain(size: constraints.maxWidth),
                const SizedBox(height: 10,),
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
                const SizedBox(height: 120,),
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
                Row(
                  children: [
                    Expanded(child: firstcontain()),
                    Expanded(child: secoundecontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: thirdcontain()),
                    Expanded(child: fourcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: fivecontain()),
                    Expanded(child: sixcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 10,),
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
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: firstcontain()),
                    Expanded(child: secoundecontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: thirdcontain()),
                    Expanded(child: fourcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(child: fivecontain()),
                    Expanded(child: sixcontain(size: constraints.maxWidth))
                  ],
                ),
                const SizedBox(height: 10,),
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
                const SizedBox(height: 20,),
              ],
            ),
          );
        }
      },),
    );
  }





  Widget mainrow(){
    return   Row(
      children:  [
        Expanded(
          child: SizedBox(
            // color: Colors.red,
            height: 50,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Components',style: TextStyle(fontFamily: 'Jost-SemiBold',fontSize: 20,color: notifire.textcolore,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis),
              ),
              trailing:  Padding(
                padding: const EdgeInsets.only(top: 20,left: 0),
                child: SizedBox(
                  height: 60,
                  width: 150,
                  child: Row(
                    children: [
                      const SizedBox(width: 60,),
                      Image(image: const AssetImage('assets/coinsqwe.png'),color: notifire.textcolore),
                      // SizedBox(width: 10,),
                      // Text('Components',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
                      const SizedBox(width: 10,),
                      Text('button',style: TextStyle(color: notifire.textcolore,fontSize: 15),overflow: TextOverflow.ellipsis),
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

  Widget firstcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Default Buttons',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
             Padding(
              padding: const EdgeInsets.only(left: 0,top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff1F58C7))),
                    onPressed: () {

                    },
                    child: const Text('Primary',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffA4A9B4))),
                    onPressed: () {

                    },
                    child: const Text('Secondry',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff28B765))),
                     onPressed: () {

                    },
                    child: const Text('Success',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(60, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff52C6EA))),
                    onPressed: () {

                    },
                    child: const Text('Info',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffF4C238))),
                    onPressed: () {

                    },
                    child: const Text('Warning',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () {

                    },
                    child: const Text('Danger',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff35415A))),
                    onPressed: () {

                    },
                    child: const Text('Dark',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffFFFFFF))),
                    onPressed: () {

                    },
                    child: const Text('Link',style: TextStyle(color: Color(0xff746DD8))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffF5F6F8))),
                    onPressed: () {

                    },
                    child: const Text('Light',style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget secoundecontain({required double size}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        // height: 184,
        width: 500,
        decoration: BoxDecoration(
            color: notifire.containcolore1,
            borderRadius: BorderRadius.circular(10)
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Outline Buttons',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            size<1300?
            Padding(
              padding:  const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xff1F58C7)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(90, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Primary',style: TextStyle(color: Color(0xff1F58C7))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xffA4A9B4)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(120, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Secoundry',style: TextStyle(color: Color(0xffA4A9B4))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xff28B765)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(100, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Success',style: TextStyle(color: Color(0xff28B765))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xff52C6EA)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(60, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Info',style: TextStyle(color: Color(0xff52C6EA))),
                  ),
                  // OutlinedButton(
                  //   style: OutlinedButton.styleFrom(
                  //     side: BorderSide(width: 1, color: Color(0xffF4C238)),
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  //     fixedSize: Size(100, 32),
                  //   ),
                  //   onPressed: () {},
                  //   child:  Text('Warnings',style: TextStyle(color: Color(0xffF4C238))),
                  // ),
                  // OutlinedButton(
                  //   style: OutlinedButton.styleFrom(
                  //     side: BorderSide(width: 1, color: Colors.red),
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  //     fixedSize: Size(90, 32),
                  //   ),
                  //   onPressed: () {},
                  //   child:  Text('Danger',style: TextStyle(color: Colors.red)),
                  // ),
                  // OutlinedButton(
                  //   style: OutlinedButton.styleFrom(
                  //     side: BorderSide(width: 1, color: Color(0xff35415A)),
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  //     fixedSize: Size(90, 32),
                  //   ),
                  //   onPressed: () {},
                  //   child:  Text('Dark',style: TextStyle(color: Color(0xff35415A))),
                  // ),
                  // OutlinedButton(
                  //   style: OutlinedButton.styleFrom(
                  //     side: BorderSide(width: 1, color: Color(0xffF5F6F8)),
                  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  //     fixedSize: Size(90, 32),
                  //   ),
                  //   onPressed: () {},
                  //   child:  Text('Light',style: TextStyle(color: Colors.black)),
                  // ),
                ],
              ),
            ):
            Padding(
              padding:  const EdgeInsets.only(top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xff1F58C7)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(90, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Primary',style: TextStyle(color: Color(0xff1F58C7))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xffA4A9B4)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(120, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Secoundry',style: TextStyle(color: Color(0xffA4A9B4))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xff28B765)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(100, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Success',style: TextStyle(color: Color(0xff28B765))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xff52C6EA)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(60, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Info',style: TextStyle(color: Color(0xff52C6EA))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xffF4C238)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(120, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Warninge',style: TextStyle(color: Color(0xffF4C238))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Colors.red),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(90, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Danger',style: TextStyle(color: Colors.red)),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xff35415A)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(90, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Dark',style: TextStyle(color: Color(0xff35415A))),
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1, color: Color(0xffF5F6F8)),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(90, 32),
                    ),
                    onPressed: () {},
                    child:  const Text('Light',style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget thirdcontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Rounded Buttons',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
             Padding(
              padding: const EdgeInsets.only(left: 0,top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff1F58C7))),
                    onPressed: () {

                    },
                    child: const Text('Primary',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffA4A9B4))),
                    onPressed: () {

                    },
                    child: const Text('Secondry',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff28B765))),
                    onPressed: () {

                    },
                    child: const Text('Success',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(60, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff52C6EA))),
                    onPressed: () {

                    },
                    child: const Text('Info',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffF4C238))),
                    onPressed: () {

                    },
                    child: const Text('Warning',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    onPressed: () {

                    },
                    child: const Text('Danger',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff35415A))),
                    onPressed: () {

                    },
                    child: const Text('Dark',style: TextStyle(color: Colors.white)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffFFFFFF))),
                    onPressed: () {

                    },
                    child: const Text('Link',style: TextStyle(color: Color(0xff746DD8))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffF5F6F8))),
                    onPressed: () {

                    },
                    child: const Text('Light',style: TextStyle(color: Colors.black)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget fourcontain({required double size}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        // height: 184,
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Button With Icon',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
            size<1300?
             Padding(
              padding: const EdgeInsets.only(left: 0,top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(120, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff1F58C7))),
                      onPressed: () {

                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/user-circle.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 5,),
                          Text('Primary',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(120, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffA4A9B4))),
                      onPressed: () {

                      },
                      child:  const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/9.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 5,),
                          Text('Secondry',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(110, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff28B765))),
                      onPressed: () {

                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/60727.png'),width: 15,height: 15,color: Colors.white),
                          SizedBox(width: 4,),
                          Text('Success',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff52C6EA))),
                      onPressed: () {

                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/triangle-exclamation.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 10,),
                          Text('Info',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  // ElevatedButton(
                  //     style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(111, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffF4C238))),
                  //     onPressed: null,
                  //     child:  Row(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: [
                  //         Image(image: AssetImage('assets/ban.png'),color: Colors.white,width: 15,height: 15),
                  //         SizedBox(width: 10,),
                  //         const Text('Warning',style: TextStyle(color: Colors.white)),
                  //       ],
                  //     )
                  // ),
                  // ElevatedButton(
                  //     style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(110, 32)),backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  //     onPressed: null,
                  //     child:  Row(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: [
                  //         Image(image: AssetImage('assets/badge.png'),color: Colors.white,width: 15,height: 15),
                  //         SizedBox(width: 10,),
                  //         const Text('Danger',style: TextStyle(color: Colors.white)),
                  //       ],
                  //     )
                  // ),
                  // ElevatedButton(
                  //     style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(110, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff35415A))),
                  //     onPressed: null,
                  //     child: Row(
                  //       mainAxisSize: MainAxisSize.min,
                  //       children: [
                  //         Image(image: AssetImage('assets/13.png'),color: Colors.white,width: 15,height: 15),
                  //         SizedBox(width: 10,),
                  //         const Text('Dark',style: TextStyle(color: Colors.white)),
                  //       ],
                  //     )
                  // ),
                ],
              ),
            ):
             Padding(
              padding: const EdgeInsets.only(left: 0,top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(131, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff1F58C7))),
                      onPressed: () {

                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/user-circle.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 10,),
                          Text('Primary',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(142, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffA4A9B4))),
                      onPressed: () {

                      },
                      child:  const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/9.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 10,),
                          Text('Secondry',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(133, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff28B765))),
                      onPressed: () {

                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/60727.png'),width: 15,height: 15,color: Colors.white),
                          SizedBox(width: 10,),
                          Text('Success',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(101, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff52C6EA))),
                      onPressed: () {

                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/triangle-exclamation.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 10,),
                          Text('Info',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(136, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffF4C238))),
                      onPressed: () {

                      },
                      child:  const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/ban.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 10,),
                          Text('Warning',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(127, 32)),backgroundColor: MaterialStatePropertyAll(Colors.red)),
                      onPressed: () {

                      },
                      child:  const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/badge.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 10,),
                          Text('Danger',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                  ElevatedButton(
                      style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(110, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xff35415A))),
                      onPressed: () {

                      },
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image(image: AssetImage('assets/13.png'),color: Colors.white,width: 15,height: 15),
                          SizedBox(width: 10,),
                          Text('Dark',style: TextStyle(color: Colors.white)),
                        ],
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget fivecontain(){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Soft Buttons',style: TextStyle(fontSize: 18,color: notifire.textcolore),)
              ],
            ),
             Padding(
              padding: const EdgeInsets.only(left: 0,top: 40),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffE8EEF9))),
                    onPressed: () {

                    },
                    child: const Text('Primary',style: TextStyle(color: Color(0xff1F58C7))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffF6F6F7))),
                    onPressed: () {

                    },
                    child: const Text('Secondry',style: TextStyle(color: Color(0xffA4A9B4))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffE9F8EF))),
                    onPressed: () {

                    },
                    child: const Text('Success',style: TextStyle(color: Color(0xff28B765))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(60, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffEDF9FD))),
                    onPressed: () {

                    },
                    child: const Text('Info',style: TextStyle(color: Color(0xff52C6EA))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(100, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffFEF9EB))),
                    onPressed: () {

                    },
                    child: const Text('Warning',style: TextStyle(color: Color(0xffF4C238))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffFDEEEE))),
                    onPressed: () {

                    },
                    child: const Text('Danger',style: TextStyle(color: Colors.red)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffEAECEE))),
                    onPressed: () {

                    },
                    child: const Text('Dark',style: TextStyle(color: Color(0xff35415A))),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),backgroundColor: MaterialStatePropertyAll(Colors.white)),
                    onPressed: () {

                    },
                    child: const Text('Link',style: TextStyle(color: Colors.grey)),
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),fixedSize: MaterialStatePropertyAll(Size(90, 32)),backgroundColor: MaterialStatePropertyAll(Color(0xffFEFEFE))),
                    onPressed: () {

                    },
                    child: const Text('Light',style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget sixcontain({required double size}){
    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10),
      child: Container(
        padding: const EdgeInsets.all(15),
        // height: 184,
        width: 500,
        decoration: BoxDecoration(
          color: notifire.containcolore1,
          borderRadius: BorderRadius.circular(10),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Row(
              children: [
                Text('Soft Icon Buttons',style: TextStyle(fontSize: 18,color: notifire.textcolore),),
              ],
            ),
            size<1000?
            Padding(
              padding:  const EdgeInsets.only(left: 0,top: 35),
              child: Wrap(
                spacing: 33,
                runSpacing: 20,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE8EEF9),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/user-circle.png'),color: Color(0xff5580D5),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF6F6F7),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/9.png'),color: Color(0xffA4A9B4),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE9F8EF),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/60727.png'),color: Color(0xff28B765),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffEDF9FD),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/triangle-exclamation.png'),color: Color(0xff52C6EA),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFEF9EB),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/ban.png'),color: Color(0xffF4C238),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFDEEEE),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/badge.png'),color: Colors.red,height: 20,width: 20,),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 35,
                  //   width: 35,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: Color(0xffEAECEE),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10),
                  //     child: Image(image: AssetImage('assets/13.png'),color: Color(0xff35415A),height: 20,width: 20,),
                  //   ),
                  // ),
                  // Container(
                  //   height: 35,
                  //   width: 35,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: Colors.white,
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10),
                  //     child: Image(image: AssetImage('assets/17.png'),color: Colors.grey,height: 20,width: 20,),
                  //   ),
                  // ),
                  // Container(
                  //   height: 35,
                  //   width: 35,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10),
                  //     color: Color(0xffFEFEFE),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.all(10),
                  //     child: Image(image: AssetImage('assets/22.png'),color: Colors.black,height: 20,width: 20,),
                  //   ),
                  // ),
                ],
              ),
            ):
            Padding(
              padding: const EdgeInsets.only(left: 0,top: 35),
              child: Wrap(
                spacing: 33,
                runSpacing: 20,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE8EEF9),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/user-circle.png'),color: Color(0xff5580D5),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF6F6F7),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/9.png'),color: Color(0xffA4A9B4),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffE9F8EF),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/60727.png'),color: Color(0xff28B765),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffEDF9FD),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/triangle-exclamation.png'),color: Color(0xff52C6EA),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFEF9EB),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/ban.png'),color: Color(0xffF4C238),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFDEEEE),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/badge.png'),color: Colors.red,height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffEAECEE),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/13.png'),color: Color(0xff35415A),height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/17.png'),color: Colors.grey,height: 20,width: 20,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffFEFEFE),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Image(image: AssetImage('assets/22.png'),color: Colors.black,height: 20,width: 20,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }




}


