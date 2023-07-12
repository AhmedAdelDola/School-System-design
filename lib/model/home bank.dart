import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnapp/model/person.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'Home.dart';
import 'Notificatin.dart';
import 'bank.dart';

class bank0 extends StatefulWidget {
  const bank0({Key? key}) : super(key: key);

  @override
  State<bank0> createState() => _bank0State();
}

class _bank0State extends State<bank0> {
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 1;
    final high = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        appBar: AppBar(
          backgroundColor:  Color.fromRGBO(92, 70, 156,0),
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 80,
          leading: IconButton(onPressed: (){
            Get.offAll(home(),transition: Transition.downToUp, duration: Duration(milliseconds:600),
            );
          }, icon: Icon(Icons.arrow_back_outlined)),
          title: Text('بنك الاسئلة',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
        ),
        bottomNavigationBar: SalomonBottomBar(
          selectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (i){setState(() => _currentIndex = i);
          if(i==0){
            Get.offAll(home(),transition: Transition.leftToRight,duration: Duration(milliseconds: 500));
          }else if(i==1){
          }
          else if(i==2){
            Get.offAll(noti(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
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
        body: Container(
          width:width ,
          height:high ,
          child:Padding(
            padding: const EdgeInsets.only(left: 33,right: 27),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 0),
                    child: ListView(
                      children: [
                        GridView.count(
                            crossAxisCount: 1,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            mainAxisSpacing: 0,
                            childAspectRatio:1.1,
                            children: [
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/1.jpg',fit: BoxFit.cover,
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Center(child: Text('اللغة العربية',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/2.jpg',fit: BoxFit.fill,
                                            ),
                                          ),


                                        ],
                                      ),
                                    ),
                                    Center(child: Text('اللغة الانجليزية',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/3.jpg',fit: BoxFit.cover,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Center(child: Text('اللغة الفرنسية',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/4.jpg',fit: BoxFit.cover,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Center(child: Text('اللغة الالمانية',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/5.jpg',fit: BoxFit.cover,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Center(child: Text('الكيمياء',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/6.jpg',fit: BoxFit.cover,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Center(child: Text('الفيزياء',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/7.jpg',fit: BoxFit.cover,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Center(child: Text('الاحياء',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/8.jpg',fit: BoxFit.cover,
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                    Center(child: Text('الرياضيات',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: (){Get.to(bank(),transition: Transition.upToDown, duration: Duration(seconds:1),);},
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                          color: Colors.white),
                                      padding: EdgeInsets.all(10),
                                      width: width*0.9,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            child: Image.asset('images/home/9.jpg',fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Center(child: Text('علم النفس والفلسفه',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700,color: Colors.white),)),

                                  ],
                                ),

                              ),

                            ])
                      ],
                    ),
                  ),
                )


              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
