
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnapp/db.dart';
import 'package:learnapp/model/Home.dart';



class login extends StatefulWidget {
 login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  sqldb sqlDb = sqldb();
  TextEditingController password = TextEditingController();
  bool isPassword = true ;
  @override
  void initState() {
    logdata();
    super.initState();
  }

//fetch data from api====================================
  Future logdata() async {
    final dio = Dio();
      var response = await dio.post('https://laowai-panda.com/json/login',
        data: {
          'email': '${email.text}',
          'password': '${password.text}'
        },);

        await sqlDb.insertData(
            " INSERT INTO 'users' (name,email,password) VALUES ('${name
                .text}','${email.text}','${password.text}') ");
        Get.offAll(home());

    }
//===================================================


  //Navigator===============================

  @override
  Widget build(BuildContext context) {
    final high = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        body: Container(
         height: high,
         width: width,
         child: ListView(
           children: [
            Image.asset('images/log.png',fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 40 ,bottom: 50),
              child: Column(
                children: [
                  TextFormField(
                    controller: name,
                    validator: (value) {
                      if (value != null ) return null;
                      return 'Invalid email.';
                    },

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      prefixIconColor: Colors.white,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Icon(Icons.person),
                        ),

                        hintText: 'your name',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color:Colors.white,
                              style: BorderStyle.solid,
                            )
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color:Color.fromRGBO(96, 180, 180, 1),
                            style: BorderStyle.solid,),
                          gapPadding: 10,
                        )),
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height:22 ,),
                  TextFormField(
                    controller: email,
                    validator: (value) {
                      if (value != null && value.isEmail ) return null;
                      return 'Invalid email.';
                    },

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                        prefixIconColor: Colors.white,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Icon(Icons.mail_sharp),
                        ),
                        hintText: 'your email',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color:Colors.white,
                              style: BorderStyle.solid,
                            )
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color:Color.fromRGBO(96, 180, 180, 1),
                        style: BorderStyle.solid,),
                      gapPadding: 10,
                    )),
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                  SizedBox(height:22 ,),
                  TextFormField(
                    controller: password,

                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value != null && value.length >= 6) return null;
                      return 'Invalid email.';
                    },
                    decoration: InputDecoration(
                        prefixIconColor: Colors.white,
                        suffixIconColor: Colors.white,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Icon(Icons.lock),
                        ),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: IconButton( onPressed: () {
                            setState(() {
                              isPassword = !isPassword ;
                            });
                            }, icon: Icon(isPassword? Icons.visibility : Icons.visibility_off,),),
                        ) ,
                        hintText: 'Password',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color:Colors.white,
                            style: BorderStyle.solid,
                          )
                        ),
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color:Color.fromRGBO(29, 38, 125, 10),
                          style: BorderStyle.solid,),
                        gapPadding: 10,
                    )),
                    obscureText: isPassword,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50 ,bottom: 50),
              child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(29, 38, 125, 10)),
                  //elevation: MaterialStatePropertyAll(),
                    textStyle: MaterialStatePropertyAll(TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    )),
                    fixedSize: MaterialStatePropertyAll(Size(150, 50)),
                    shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ))
                  ),

                  onPressed: () {
                    logdata();
              },
                  child:Text('Login')
              ),
            ),
           ],),
          ),


      ),
    );
  }
}
