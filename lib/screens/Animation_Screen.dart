import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_new_app/screens/New_Screen.dart';

class AnimationScreen extends StatefulWidget {

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> with SingleTickerProviderStateMixin {
  late Animation tween;
  late AnimationController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 1500),
        vsync: this);

    tween = Tween<double>(begin: 0, end: 110).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOut)
    );
  }
  bool show = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [IconButton(onPressed: () => myAnim(), icon: Icon(Icons.play_arrow))],
          title: Text(" Animation"),
          backgroundColor: Colors.blueAccent
      ),
      body: Column(
        children: [
          AnimatedBuilder(animation: tween, builder: (c, w) {
            return Container(
              margin: EdgeInsets.only(top: 110),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: tween.value),
                    height: 130,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(tween.value)
                    ),
                  ),
                ],
              ),
            );
          }),
          InkWell(
            child: Text("Animate to Next Screen",
                style: TextStyle(color: Colors.black54, fontSize: 24, fontWeight: FontWeight.bold)),
            onTap: () => Navigator.push(context, PageRouteBuilder(
              transitionsBuilder: (c, a, s, widget) {
                final myOpacity = Tween<double>(begin: 0.0, end: 1.0).animate(a);

                final myPosition = Tween(begin: Offset(0.99,0.7 ) , end: Offset.zero).animate(a);

                return SlideTransition(
                    position: myPosition,
                    child:FadeTransition(
                        child: widget,
                        opacity: myOpacity));
              },
              transitionDuration: Duration(seconds: 2),
              pageBuilder: (context, a, s) {
                return NewScreen();
              },
            )),
          ),
          InkWell(
            child: Text("Show / Hide Animation",
                style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold)),
            onTap: () => showHide(),
          ),
          if (show)
            Lottie.asset(
                reverse: true,
                "assets/anim/loading.json",
                width: 140,
                height: 140
            ),
        ],
      ),
    );
  }

  void myAnim() {
    if (controller.status == AnimationStatus.completed) {
      controller.reverse();
    } else {
      controller.forward();
    }
  }

  void showHide() {
    setState(() {
      show = !show;
    });
  }
}