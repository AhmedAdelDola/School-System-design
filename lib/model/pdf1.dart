import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnapp/model/pdf2.dart';

import 'Sheet.dart';

class pdf1 extends StatefulWidget {
  const pdf1({Key? key}) : super(key: key);

  @override
  State<pdf1> createState() => _pdf1State();
}

class _pdf1State extends State<pdf1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
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
                      padding: const EdgeInsets.only(bottom: 10),
                      child: InkWell(
                        onTap: (){
                          Get.to(pdf2(),transition: Transition.downToUp,duration: Duration(seconds: 1));
                        },
                        child: Card(
                          child: ListTile(
                            title: Text(' pdf',textAlign: TextAlign.right),
                            trailing: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('images/note.png'),
                            ),
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
