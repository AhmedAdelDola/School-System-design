import 'package:learnapp/model/Home.dart';
import 'package:learnapp/model/teacher1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class teach extends StatelessWidget {
  const teach({Key? key}) : super(key: key);

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
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(92, 70, 156,0),
          elevation: 0,
          centerTitle: true,
          toolbarHeight: 80,
          leading: IconButton(onPressed: (){
            Get.offAll(home(),transition: Transition.leftToRight, duration: Duration(milliseconds:500),);
          }, icon: Icon(Icons.arrow_back_outlined)),
          title: Text('اللغة العربية',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
        ),
        body: Column(
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
                        padding: const EdgeInsets.only(bottom: 20),
                        child: InkWell(
                          onTap: (){
                            Get.to(teach0(),transition: Transition.circularReveal, duration: Duration(milliseconds:1300),);
                          },
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('م/ محمود الشيخ', textAlign: TextAlign.end,style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w700),),
                                  SizedBox(width: 10),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: width*0.8,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 180,
                                      child: Image.asset('images/teach.jpg',fit: BoxFit.fill,
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
