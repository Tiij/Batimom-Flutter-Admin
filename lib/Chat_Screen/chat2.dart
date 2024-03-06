import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/colore_provider.dart';

class Chat2 extends StatefulWidget {
  const Chat2({super.key});

  @override
  State<Chat2> createState() => _Chat2State();
}
ColorNotifire notifire = ColorNotifire();
class _Chat2State extends State<Chat2> {
  @override
  Widget build(BuildContext context) {
    notifire = Provider.of<ColorNotifire>(context, listen: true);
    return Scaffold(
      backgroundColor: notifire.containcolore1,
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Frank Vickery',style: TextStyle(fontSize: 15,color: notifire.textcolore)),
              subtitle: Row(children: [
                Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(65)
                  ),
                ),
                const SizedBox(width: 5,),
                Text('Active Now',style: TextStyle(color: notifire.textcolore)),
              ]),
              trailing: SizedBox(
                height: 60,
                width: 60,
                child: Row(
                  children: [
                    Image(image: const AssetImage('assets/settings.png'),color: notifire.textcolore),
                    const SizedBox(width: 10,),
                    Image(image: const AssetImage('assets/more-horizontal.png'),color: notifire.textcolore),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Divider(color: Colors.grey.withOpacity(0.4),),
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 250,
                  child: ListTile(
                    dense: true,
                    leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png'),),
                    title: Text('Kirollos',style: TextStyle(color: notifire.textcolore)),
                    subtitle: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: const Color(0xffD7F4E2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(child: Text('Hey! I am available',style: TextStyle(),)),
                    ),
                  ),
                ),
              ],
            ),
             Row(
              children: [
                const SizedBox(width: 150,),
                Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
                Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ListTile(
                      dense: true,
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Nik Graf',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color(0xffEFF2F7),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(child: Text('Hi, How are you? What about our next meeting',style: TextStyle(),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
                Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
                const SizedBox(width: 270,)
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 70,
                  decoration: const BoxDecoration(
                      color: Color(0xffEFF2F7),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  child: const Center(child: Text('Today',style: TextStyle(),)),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ListTile(
                    dense: true,
                    leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png'),),
                    title: Text('Kirollos',style: TextStyle(color: notifire.textcolore)),
                    subtitle: Container(
                      height: 30,
                      width: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xffD7F4E2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(child: Text('Hello',style: TextStyle(),)),
                    ),
                  ),
                ),
              ],
            ),
             Row(
              children: [
                const SizedBox(width: 150,),
                Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
                Text('10:00',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ListTile(
                      dense: true,
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Nik Graf',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color(0xffEFF2F7),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(child: Text('Hi, How are you? What about our next meeting',style: TextStyle(),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
                Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
                const SizedBox(width: 270,)
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 200,
                  child: ListTile(
                    dense: true,
                    leading: const CircleAvatar(backgroundImage: AssetImage('assets/artist-8 1.png'),),
                    title: Text('Kirollos',style: TextStyle(color: notifire.textcolore)),
                    subtitle: Container(
                      height: 30,
                      width: 10,
                      decoration: BoxDecoration(
                        color: const Color(0xffD7F4E2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(child: Text('Yesh everthing fine',style: TextStyle(),)),
                    ),
                  ),
                ),
              ],
            ),
             Row(
              children: [
                const SizedBox(width: 150,),
                Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
                Text('10:00',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ListTile(
                      dense: true,
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Nik Graf',style: TextStyle(color: notifire.textcolore)),
                          const SizedBox(height: 10,),
                          Container(
                            height: 30,
                            width: 300,
                            decoration: BoxDecoration(
                              color: const Color(0xffEFF2F7),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(child: Text('Hi, How are you? What about our next meeting',style: TextStyle(),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.lock_clock,size: 10,color: notifire.textcolore),
                Text('12:09',style: TextStyle(fontSize: 10,color: notifire.textcolore),),
                const SizedBox(width: 270,)
              ],
            ),
            const SizedBox(height: 70,),
            Row(
              children: [
                const SizedBox(width: 10,),
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      style: TextStyle(color: notifire.textcolore),
                      decoration: InputDecoration(
                          hintText: 'Enter Message...',hintStyle: TextStyle(color: notifire.textcolore),
                          focusColor: Colors.red,
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.grey.withOpacity(0.4))),
                          border:  OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: const BorderSide(color: Colors.red))
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding:  const EdgeInsets.only(left: 10,right: 10),
                    child:   Container(
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Send',style: TextStyle(color: Colors.white)),
                            ],
                          )
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
