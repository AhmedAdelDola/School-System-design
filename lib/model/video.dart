import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pod_player/pod_player.dart';

class video extends StatefulWidget {
  const video({Key? key}) : super(key: key);
  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  late final PodPlayerController controller;

  @override
  void initState() {
    controller = PodPlayerController(
      playVideoFrom: PlayVideoFrom.youtube('https://www.youtube.com/watch?v=Ag8QL9SEdkg'),
    )..initialise();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      home: Scaffold(
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(92, 70, 156,0),
          elevation: 0,
          centerTitle: true,
          //toolbarHeight: 80,
          leading: IconButton(onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back_outlined)),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(child: PodVideoPlayer(controller: controller)),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black54,
                            border: Border.all(color: Colors.white,
                          width: 3,
                          strokeAlign: BorderSide.strokeAlignInside,
                        ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: ListTile(

                            title: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text('حصه معدلات القوه والحركه',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700,color: Colors.white)),
                            ),
                          subtitle: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset('images/user.png'),
                              ),
                              SizedBox(width: 8,),
                              Text('م / محمود الشيخ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.white)),
                            ],
                          ),
                      ),),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}