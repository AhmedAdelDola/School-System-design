import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class homework2 extends StatelessWidget {
  const homework2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Get.back();
          }, icon: Icon(Icons.arrow_back_outlined)),
          title: Text('واجب الحصه الاولى',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),),
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
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        child: ListTile(

                          title: Text('السؤال يتحدث عن الكمية الفيزيائية الحراريه الداخلية الخارجيه الكميائية الاوروبيه الدولية',textAlign: TextAlign.right),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 180,
                              //width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: Text('الاجابة الاولى')),
                                  Expanded(
                                      flex: 1,
                                      child: Text('الاجابة الثانية')),
                                  Expanded(
                                      flex: 1,
                                      child: Text('الاجابة الثالثة')),
                                  Expanded(
                                      flex: 1,
                                      child: Text('الاجابة الرابعة')),
                                ],
                              ),
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
