import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'model/teacher.dart';

class Datasearch extends SearchDelegate{
  List subject = [
    'اللغة العربية',
    'اللغة الانجليزية',
    'اللغة الفرنسية',
    'اللغة الالمانية',
    'الكيمياء',
    'الفيزياء',
    'الاحياء',
    'الرياضيات',
    'علم النفس و الفلسفه',
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return[
      IconButton(onPressed: (){}, icon: Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back_outlined));

  }

  @override
  Widget buildResults (BuildContext context) {
    return
      ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            if(query ==  'اللغة العربية' ) {
              return InkWell(
                onTap: (){
                  Get.to(teach());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/1.jpg',fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(child: Text('اللغة العربية',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'اللغة الانجليزية' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/2.jpg',fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(child: Text('اللغة الانجليزية',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'اللغة الفرنسية' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/3.jpg',fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(child: Text('اللغة الفرنسية',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'اللغة الالمانية' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/4.jpg',fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Center(child: Text('اللغة الالمانية',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'الكيمياء' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/5.jpg',fit: BoxFit.cover,
                        ),
                      ),                                    SizedBox(height: 10,),
                      Center(child: Text('الكيمياء',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'الفيزياء' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/6.jpg',fit: BoxFit.cover,
                        ),
                      ),                                    SizedBox(height: 10,),
                      Center(child: Text('الفيزياء',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'الاحياء' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/7.jpg',fit: BoxFit.cover,
                        ),
                      ),                                    SizedBox(height: 10,),
                      Center(child: Text('الاحياء',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'الرياضيات' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/8.jpg',fit: BoxFit.cover,
                        ),
                      ),                                    SizedBox(height: 10,),
                      Center(child: Text('الرياضيات',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            } else if(query ==  'علم النفس و الفلسفه' ) {
              return InkWell(
                onTap: (){Get.to(teach());},
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        child: Image.asset('images/home/9.jpg',fit: BoxFit.cover,
                        ),
                      ),                                    SizedBox(height: 10,),
                      Center(child: Text('علم النفس والفلسفه',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),))

                    ],
                  ),
                ),
              );
            }else{
              return Center(
                child: Text('not found'),
              );
            }
          });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filtrname = subject ;
    return
      ListView.builder(
        itemCount: subject.length,
        itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            query = query == "" ? subject[index] : filtrname[index];
            showResults(context);
          },
          child: Container(
              padding: EdgeInsets.all(10),
            child: query == "" ? Text('${subject[index]}') :
            Text('${filtrname[index]}')
          ),
        );
      },

    );
  }
  
}