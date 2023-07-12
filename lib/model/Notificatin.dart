import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnapp/model/person.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'Home.dart';
import 'home bank.dart';

class noti extends StatefulWidget {
  const noti({Key? key}) : super(key: key);

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 2;

    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(92, 70, 156,0),
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 80,
          leading: IconButton(onPressed: (){
            Get.offAll(home(),transition: Transition.leftToRight, duration: Duration(seconds:1),);
          }, icon: Icon(Icons.arrow_back_outlined)),
          title: Text('الاشعارات',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
        ),

        bottomNavigationBar: SalomonBottomBar(
          selectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (i){setState(() => _currentIndex = i);
          if(i==0){
            Get.offAll(home(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
          }else if(i==1){
            Get.offAll(bank0(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
          }
          else if(i==2){
          }
          else if(i==3){
            Get.offAll(person(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
          }
          },

          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("الصفحه الرئيسية"),
              selectedColor: Colors.white,

            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.bookmark_added),
              title: Text("بنك الاسئلة"),
              selectedColor: Colors.white,
            ),

            /// Search
            SalomonBottomBarItem(
              icon: Icon(Icons.notifications),
              title: Text("الإشعارات"),
              selectedColor: Colors.white,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("بيانات الحساب"),
              selectedColor: Colors.white,
            ),
          ],
        ),
        body:Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 20,right: 20 , left:20,),
                child: ListView.builder(
                  itemCount: 5,
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        child: ListTile(

                          title: Text('م/ محمود الشيج',textAlign: TextAlign.right),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text('تم نزول حصه جديده وشيت جديد',textAlign: TextAlign.right),
                          ),
                        ),
                      ) ,
                    );

                  },),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
