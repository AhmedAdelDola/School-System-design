import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learnapp/model/teacher.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class pdf2 extends StatefulWidget {
  const pdf2({Key? key}) : super(key: key);

  @override
  State<pdf2> createState() => _pdf2State();
}

class _pdf2State extends State<pdf2> {
  @override
  Widget build(BuildContext context) {
    final high = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'bein'
      ) ,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
            backgroundColor: Color.fromRGBO(92, 70, 156,100),
            elevation: 0,
            centerTitle: true,
            leading: IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.arrow_back_outlined)),
            title: Text('pdf',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),
          ),
        backgroundColor:Color.fromRGBO(56, 43, 96,1) ,
        body: Container(
          width: width,
          height: high,
          child: SfPdfViewer.asset('images/فيزياء 2ث ترم تانى 2023.pdf',
            canShowPageLoadingIndicator:false,
            currentSearchTextHighlightColor: Colors.black,
            interactionMode: PdfInteractionMode.pan,
        ),
        )
      ),
    );
  }
}
