import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class about extends StatelessWidget {
  const about({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final high = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(92, 70, 156,100),
          elevation: 0,
          centerTitle: true,
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back_outlined)),
        ),
        body:Container(
          width: width,
          height: high,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('contact us',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 55),),
                SizedBox(height: 20),
                Text('+20100 142 0464',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),),
                SizedBox(height: 15),
                Text('+20100 124 6675',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),)
              ],
            ),
          ),
        ) ,
      ),
    );
  }
}
