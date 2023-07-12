import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learnapp/model/homework2.dart';


class homework1 extends StatefulWidget {
  const homework1({Key? key}) : super(key: key);

  @override
  State<homework1> createState() => _homework1State();
}

class _homework1State extends State<homework1> {
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
                          Get.to(homework2(),transition: Transition.size,duration: Duration(seconds: 1));
                        },
                        child: Card(
                          child: ListTile(
                            title: Text(' واجب الحصه الاولى',textAlign: TextAlign.right),
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
