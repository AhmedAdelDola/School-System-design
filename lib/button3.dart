import 'package:flutter/material.dart';

import 'db.dart';
class MyButton3 extends StatefulWidget {
  const MyButton3({Key? key}) : super(key: key);


  @override
  _MyButtonState3 createState() => _MyButtonState3();
}

class _MyButtonState3 extends State<MyButton3> {
  sqldb sqlDb = sqldb();
  Future<List<Map>> readData() async{
    List<Map> response = await sqlDb.readData("SELECT * FROM'users'");
    return response ;
  }
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: _isTapped ? 50 : 60,
          width: 200,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(29, 38, 125, 10) ,),
            ),
            onPressed: () {
              setState(() {
                _isTapped = !_isTapped;
              });
            },
            child: const Text('password',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500,fontFamily: 'bein')),

          ),
        ),
        AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: _isTapped ? 1.0 : 0.0,
          child: FutureBuilder(
            future: readData(),
            builder: (context, snapshot) => Padding(
              padding: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  '${snapshot.data?[0]['password']}',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}