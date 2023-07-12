import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnapp/model/Notificatin.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../button.dart';
import '../button2.dart';
import '../button3.dart';
import '../db.dart';
import 'Home.dart';
import 'home bank.dart';
import 'login.dart';

class person extends StatefulWidget {
  const person({Key? key}) : super(key: key);

  @override
  State<person> createState() => _personState();
}

class _personState extends State<person> {
  sqldb sqlDb = sqldb();
  Future<List<Map>> readData() async{
    List<Map> response = await sqlDb.readData("SELECT * FROM'users'");
    return response ;
  }
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 3;
   final high = MediaQuery.of(context).size.height;
   final width = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar:SalomonBottomBar(
          selectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (i){setState(() => _currentIndex = i);
          if(i==0){
            Get.offAll(home(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
          }else if(i==1){
            Get.offAll(bank0(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
          }
          else if(i==2){
            Get.offAll(noti(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
          }
          else if(i==3){
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
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,

        appBar: AppBar(
          backgroundColor: Color.fromRGBO(92, 70, 156,0),
          elevation: 0,
          toolbarHeight: 80,
          leading: IconButton(onPressed: (){
            Get.offAll(home(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
          }, icon: Icon(Icons.arrow_back_outlined)),
        ),
        body: Container(
          height: high,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyButton(),
              MyButton2(),
              MyButton3(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                    style: ButtonStyle(

                      backgroundColor:MaterialStatePropertyAll(Color.fromRGBO(29, 38, 125, 10)),
                    fixedSize: MaterialStatePropertyAll(Size(200, 60))
                    ),
                    onPressed: (){
                      sqlDb.dleteData("DELETE FROM 'users'");
                      Get.offAll(login(),transition: Transition.size,duration:  Duration(seconds: 1));
                    },
                    child: Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Log Out",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500)),
                          SizedBox(width: 20,),
                          Icon(Icons.exit_to_app,size: 35,color: Colors.white),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
        ) ,
    );
  }
}
