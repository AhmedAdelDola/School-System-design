import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:learnapp/model/homework1.dart';
import 'package:learnapp/model/pdf1.dart';
import 'package:learnapp/model/sheet0.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnapp/model/teacher.dart';
import 'Course.dart';
import 'live.dart';

class teach0 extends StatelessWidget {
  const teach0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final high = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(92, 70, 156,100),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(onPressed: (){
            Get.off(teach(),transition: Transition.circularReveal, duration: Duration(milliseconds:1300),);
          }, icon: Icon(Icons.arrow_back_outlined)),
          title: Text('م / محمود الشيخ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),

                  child: Image.asset('images/teach.jpg',)),
                  Container(
                    padding: EdgeInsets.only(top: 30,right: 15,left: 15),
                    decoration: BoxDecoration(color:Color.fromRGBO(92, 70, 156,100) ,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    ),
                  height: high*0.7,
                  width: width,
                  child: ContainedTabBarView(
                    tabBarProperties: TabBarProperties(

                      height: 50,

                      isScrollable: false,
                      indicatorSize: TabBarIndicatorSize.tab ,
                      width: double.infinity,
                      labelColor: Colors.white,
                      indicator: BoxDecoration(
                        color:Color.fromRGBO(29, 38, 125, 10) ,
                        borderRadius: BorderRadius.circular(10),
                      ),

                        background: Container(
                          decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          ),
                      //indicatorColor: Color.fromRGBO(77, 79, 250, 10),

                      unselectedLabelColor: Color.fromRGBO(189, 189, 189, 100),
                      labelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w900,fontFamily: 'bein'),
                      unselectedLabelStyle: TextStyle(fontSize: 14,fontFamily: 'bein'),
                      alignment: TabBarAlignment.start,
                      labelPadding: EdgeInsets.all(5)
                    ),
                    tabs: [
                      Text('الملفات'),
                      Text('الحصص'),
                      Text('الشيتات'),
                      Text('البث المباشر',textAlign: TextAlign.right,style: TextStyle(fontSize: 12)),
                      Text('الواجبات'),
                    ],
                    views: [
                      pdf1(),
                      cours(),
                      sheet0(),
                      live(),
                      homework1(),
                    ],
                    onChange: (index) => print(index),
                  ),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
