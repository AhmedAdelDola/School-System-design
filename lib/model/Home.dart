import 'package:get/get.dart';
import 'package:learnapp/model/about.dart';
import 'package:learnapp/model/home%20bank.dart';
import 'package:learnapp/model/login.dart';
import 'package:learnapp/model/person.dart';
import 'package:learnapp/model/teacher.dart';
import 'package:learnapp/search.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../db.dart';
import 'Notificatin.dart';

class home extends StatefulWidget {

  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home>{
  sqldb sqlDb = sqldb();
  Future<List<Map>> readData() async{
    List<Map> response = await sqlDb.readData("SELECT * FROM'users'");
    return response ;
  }
  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    final high = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        bottomNavigationBar: SalomonBottomBar(
          duration: Duration(milliseconds: 200),
          selectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          onTap: (i){setState(() => _currentIndex = i);
          if(i==0){

          }else if(i==1){
            Get.offAll(bank0(),transition: Transition.rightToLeft,duration: Duration(milliseconds: 500));
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
        endDrawer: FutureBuilder(
          future: readData(),
          builder: (context, snapshot) =>
           Drawer(
            backgroundColor: Color.fromRGBO(92, 70, 156,100),
            child:Padding(
          padding: const EdgeInsets.only(top: 130,bottom: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                Container(width: 120,height: 120,child: Image.asset('images/user.png',)),
                 SizedBox(height: 5,),
                Center(child: Text('${snapshot.data?[0]['name']}',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white)),),],),
                Divider(
                  color:Colors.black,
                  thickness: 5,
                  indent:20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: (){
                        Get.to(person(),transition: Transition.zoom, duration: Duration(seconds: 1));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("بيانات الحساب",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                            SizedBox(width: 20,),
                            Icon(Icons.account_circle_rounded,size: 35,color: Colors.black),
                          ],
                        ),
                      )),
                ),Divider(
                  color:Colors.black,
                  thickness: 5,
                  indent:20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll( Colors.white),
                      ),
                      onPressed: (){
                        Get.to(bank0(),transition: Transition.leftToRight, duration: Duration(seconds: 1));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("بنك الاسئلة",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                            SizedBox(width: 20,),
                            Icon(Icons.bookmark_added,size: 35,color: Colors.black),
                          ],
                        ),
                      )),
                ),Divider(
                  color:Colors.black,
                  thickness: 5,
                  indent:20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll( Colors.white),
                      ),
                      onPressed: (){
                        Get.to(about(),transition: Transition.size, duration: Duration(seconds: 1));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("About Us",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                            SizedBox(width: 20,),
                            Icon(Icons.mark_unread_chat_alt,size: 35,color: Colors.black),
                          ],
                        ),
                      )),
                ),
                Divider(
                  color:Colors.black,
                  thickness: 5,
                  indent:20,
                  endIndent: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:MaterialStatePropertyAll( Colors.white),
                      ),
                      onPressed: (){
                        sqlDb.dleteData("DELETE FROM 'users'");
                        Get.offAll(login(),transition: Transition.circularReveal, duration: Duration(seconds: 1));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("تسجيل الخروج",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w500)),
                            SizedBox(width: 20,),
                            Icon(Icons.exit_to_app,size: 35,color: Colors.black),
                          ],
                        ),
                      )),
                ),


              ],
            ),
            ),


          ),
        ),

        appBar: AppBar(
          toolbarHeight: 119,
            title: FutureBuilder(
              future: readData(),
              builder: (context, snapshot) =>
               Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome !',style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      fontFamily: AutofillHints.name
                    ),),
                    Text('${snapshot.data?[0]['name']}',style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 25,
                        fontFamily: AutofillHints.name
                    ),)
                  ],
                ),
              ),
            ),
            backgroundColor:Color.fromRGBO(92, 70, 156,0),
        elevation: 0),

        body: Container(
          width:width ,
          height:high ,
          child:Padding(
            padding: const EdgeInsets.only(left: 33,right: 27),
            child: Column(
              children: [
                OutlineSearchBar(

                  cursorRadius: Radius.circular(20),
                  elevation: 3,
                  onTap: () {
                    showSearch(context: context, delegate: Datasearch());
                  },
                  autoCorrect: true,
                  textStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w300,),
                  hintText: 'Search',
                  margin: EdgeInsets.symmetric(horizontal: 20 ),
                  borderRadius: BorderRadius.circular(8),
                  borderColor:Color.fromRGBO(0, 128, 128, 100),
                  borderWidth: 3.5,
                  cursorColor: Color.fromRGBO(0, 128, 128, 100),
                  searchButtonIconColor: Color.fromRGBO(0, 128, 128, 100),

                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30,bottom: 0),
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                  padding: EdgeInsets.all(10),
                                  width: width*0.9,
                                  //color: Colors.white,
                                  child: Container(
                                    height: 200,
                                    child: Image.asset('images/home/1.jpg',fit: BoxFit.cover,
                                    ),
                                  ),
                          ),
                                  Center(child: Text('اللغة العربية',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),))

                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500),

                              );
                                },
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: width*0.9,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: width*0.9,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: width*0.9,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: width*0.9,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: width*0.9,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
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
                              onTap: (){Get.to(teach(),transition: Transition.zoom, duration: Duration(milliseconds:500));},
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    width: width*0.9,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                        color: Colors.white),
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

