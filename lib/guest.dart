import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jak_one_pay/gradient_outline_button.dart';
import 'package:jak_one_pay/gradient_text.dart';
import 'package:jak_one_pay/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GuestView extends StatefulWidget {
  const GuestView({super.key});

  @override
  State<GuestView> createState() => _GuestViewState();
}

class _GuestViewState extends State<GuestView> {
  List<String> assetPaths = [
    "assets/images/monas.png",
    "assets/images/monas.png",
    "assets/images/monas.png"
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Image.asset('assets/images/help.png'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/indo_flag.png'),
                        Image.asset('assets/images/uk_flag.png')
                      ],
                    )),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 6),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/credit_card.png'),
                        const SizedBox(
                          width: 4,
                        ),
                        Image.asset('assets/images/jakcard_logo.png')
                      ],
                    )),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: carouselImage(assetPaths[index]));
              },
              options: CarouselOptions(
                height: 300,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const GradientText("Explore Jakarta with Jakarta Tourist Pass",
                style: TextStyle(
                    color: Color(0xffFC9842),
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffFE5F5F), Color(0xffFC9842)])),
            const SizedBox(
              height: 16,
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: assetPaths.length,
              effect: const ScrollingDotsEffect(
                  fixedCenter: false,
                  activeDotColor: Color(0xffFFDBA5),
                  dotColor: Color(0xffFFEBE8),
                  dotHeight: 5,
                  dotWidth: 5,
                  spacing: 4),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 38, vertical: 6),
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xffFE5F5F), Color(0xffFC9842)]),
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Color(0xffFFF84B))),
                child: const Text(
                  "Continue as a Guest",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GradientOutlineButton(
              strokeWidth: 2,
              radius: 24,
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffFFF84B), Color(0xffFE5F5F)]),
              child: const Text(
                "Continue as a Guest",
                style: TextStyle(
                    color: Color(0xffFE5F5F),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomeView()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget carouselImage(String assetPath) {
  return Container(
    height: 286,
    width: 275,
    padding: const EdgeInsets.only(bottom: 23),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(assetPath), fit: BoxFit.cover),
    ),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Color(0xffFC9842)),
        child: const Text(
          "Monumen Nasional",
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}
