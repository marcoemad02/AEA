import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';

class SliderP extends StatefulWidget {
  SliderP({Key? key}) : super(key: key);

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final assetImages = [
    'asset/1.png',
    'asset/2.png',
    'asset/3.png',
    'asset/4.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F1F1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              carouselController: controller,
              itemCount: assetImages.length,
              itemBuilder: (context, index) {
                final assetPath = assetImages[index];
                return buildImage( assetPath, index);
              },
              options: CarouselOptions(

                height:360,
                autoPlay: true,
                enableInfiniteScroll: false,
                autoPlayAnimationDuration: Duration(seconds:3),
                enlargeCenterPage: true,
                onPageChanged: (index, reason) => setState(() => activeIndex = index),
              ),
            ),
            SizedBox(height:12),
            buildIndicator(),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: ExpandingDotsEffect(dotWidth:15, activeDotColor: Colors.blue),
    activeIndex: activeIndex,
    count: assetImages.length,
  );

  void animateToSlide(int index) => controller.animateToPage(index);
}

Widget buildImage(String assetPath, int index) => Container(
  child: Image.asset(
    assetPath,
    fit: BoxFit.cover,
  ),
);