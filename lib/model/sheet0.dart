import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Sheet.dart';

class sheet0 extends StatefulWidget {
  const sheet0({Key? key}) : super(key: key);

  @override
  State<sheet0> createState() => _sheet0State();
}

class _sheet0State extends State<sheet0> {
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
                          Get.to(Sheet(),transition: Transition.downToUp,duration: Duration(seconds: 1));
                        },
                        child: Card(
                          child: ListTile(
                            title: Text(' الشيت الاول',textAlign: TextAlign.right),
                            leading: Checkbox(
                                value: false ,
                                onChanged: (value) {
                                     value = false   ;
                                },),
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
