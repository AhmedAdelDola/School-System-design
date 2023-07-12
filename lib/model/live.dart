import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnapp/model/video.dart';

class live extends StatelessWidget {
  const live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child:  Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(right: 10 , left:10,),
                child: ListView.builder(
                  itemCount: 50,
                  //physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: (){
                          Get.to(video(),transition: Transition.zoom,duration: Duration(seconds: 1));
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Expanded( flex: 1, child: Image.asset('images/teach.jpg',height: 100,width: 150,fit: BoxFit.fill)),
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    textDirection:TextDirection.rtl,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                          textDirection: TextDirection.rtl,
                                          text: TextSpan(
                                              children: [
                                                TextSpan(text:'الحصه الاولى',style: TextStyle(fontSize: 25,color: Colors.black,fontFamily: 'bein'),),
                                              ])),
                                      RichText(
                                          textDirection: TextDirection.rtl,
                                          text: TextSpan(
                                              children: [
                                                TextSpan(text:'حصه معدلات القوه والحركه',style: TextStyle(fontSize: 18,color: Colors.grey,fontFamily: 'bein'),)

                                              ]))

                                    ],
                                  ),
                                ),
                              ),
                            ],
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
