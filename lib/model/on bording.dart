
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'login.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final high  = MediaQuery.of(context).size.height;
    return GetMaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      color: Color.fromRGBO(92, 70, 156,100),
      home:Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        body:  OnBoardingSlider(
        centerBackground: true,
        controllerColor: Colors.white,
        pageBackgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        headerBackgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        onFinish:(){ Get.off(login(),transition:  Transition.rightToLeft ,duration: Duration(seconds: 2));},
        finishButtonText: 'Login',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Color.fromRGBO(29, 38, 125, 10),
        ),
        skipTextButton: Text('Skip'),

        background: [
          Image.asset('images/onbording/1.png',alignment: Alignment.center),
          Image.asset('images/onbording/2.png',alignment: Alignment.center),
        ],
        totalPage: 2,
        speed: 3,
        pageBodies: [
          Container(
            padding: EdgeInsets.only(left:31),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: high*0.5,
                ),
                Text('Explore your\nnew skills today',
                    style:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      //height: 72,

                    ) ),
                Text('You can learn various kinds of\ncourses in your hand',
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      //height: 72,

                    ) ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left:31),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: high*0.5,
                ),
                Text('Empower your\neducation to next level',
                    style:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      //height: 72,

                    ) ),
                Text('Learn new things and develop your\nproblem solving skills',
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      //height: 72,

                    ) ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}