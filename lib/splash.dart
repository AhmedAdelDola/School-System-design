import 'package:flutter/material.dart';
import 'package:learnapp/model/on%20bording.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pod_player/pod_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // video controller
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/splash.mp4',
    )
      ..initialize().then((_) {
        setState(() {});
      })
      ..setVolume(0.0);

    _playVideo();
  }

  void _playVideo() async {
    // playing video
    _controller.play();

    //add delay till video is complite
    await Future.delayed(const Duration(seconds: 5,));

    // navigating to home screen
    Navigator.pushReplacement(context,PageTransition(child: OnBoarding(), type:  PageTransitionType.rightToLeftWithFade,duration: Duration(milliseconds: 2500)) );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(
            _controller,
          ),
        )
            : Container(),
      ),
    );
  }
}