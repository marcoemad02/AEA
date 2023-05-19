import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/carouse_slider.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F1F1),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(),
            SizedBox(height: 20,),
            Container(
                height:420,
                child: SliderP()),
          ],
        ),
      ),


    );
  }
}
