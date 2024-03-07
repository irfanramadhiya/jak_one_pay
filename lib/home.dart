import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bannerAssetPaths = [
      "assets/images/banner.png",
      "assets/images/banner.png",
      "assets/images/banner.png"
    ];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color(0xffFF4747), Color(0xffFFF84B)]),
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Image.asset('assets/images/qris.png'),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 4,
                offset: Offset(3, 0),
              ),
            ],
            color: Colors.white),
        child: BottomAppBar(
          height: 50,
          color: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xffFF4747), Color(0xffFC9842)])
                      .createShader(bounds),
                  child: Image.asset("assets/images/home.png")),
              ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (Rect bounds) => const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xffFF4747), Color(0xffFC9842)])
                      .createShader(bounds),
                  child: Image.asset("assets/images/profile.png")),
            ],
          ),
        ),
      ),
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 196,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xffFE5F5F), Color(0xffFC9842)]),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 32, left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/jakarta_tourist_pass.png'),
                      Row(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xffFF4747),
                                    Color(0xffFFF84B)
                                  ]),
                            ),
                            child: Image.asset('assets/images/file.png'),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xffFF4747),
                                      Color(0xffFFF84B)
                                    ])),
                            child: Image.asset('assets/images/bell.png'),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset('assets/images/profile_user.png'),
                      const SizedBox(
                        width: 16,
                      ),
                      const Text(
                        "Good morning,\nGuest",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Stack(
                  children: [
                    Container(
                      width: 311,
                      height: 82,
                      padding: EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xffFF4747), Color(0xffFFF84B)]),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.only(
                            left: 16, top: 16, bottom: 16, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Balance Account",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10),
                                ),
                                Text(
                                  "Rp 0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                                Text(
                                  "-",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 11),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 33,
                                width: 57,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffFE5F5F),
                                          Color(0xffFC9842)
                                        ]),
                                    borderRadius: BorderRadius.circular(4),
                                    border:
                                        Border.all(color: Color(0xffFFF84B))),
                                child: const Text(
                                  "Top Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 11,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 41),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      homeButton("Explore Jakarta", 'assets/images/map.png'),
                      homeButton("Top Up JakCard", 'assets/images/wallet.png'),
                      homeButton(
                          "JakCard Balance", 'assets/images/credit_cards.png'),
                      homeButton("Event", 'assets/images/event.png')
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  child: CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (context, index, realIndex) {
                        return Image.asset(bannerAssetPaths[index]);
                      },
                      options: CarouselOptions(
                          enableInfiniteScroll: false,
                          padEnds: false,
                          height: 91)),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(100),
                                  topRight: Radius.circular(100)),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xffFE5F5F),
                                    Color(0xffFC9842)
                                  ]),
                              shape: BoxShape.rectangle,
                            ),
                            height: 35,
                            width: 35,
                            child: Image.asset('assets/images/landmark.png'),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Let's Go with Jakarta Tourist Pass",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                              ),
                              const Text(
                                "a place not to be missed",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                              Container(
                                height: 2,
                                width: 37,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffFF4747),
                                        Color(0xffFFF84B)
                                      ]),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const Text(
                        "View all",
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  padding: EdgeInsets.only(left: 32),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          const Text("Did You\nKnow ?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15)),
                          SizedBox(
                            height: 9,
                          ),
                          Image.asset('assets/images/map2.png')
                        ],
                      ),
                      SizedBox(
                        width: 22,
                      ),
                      Container(
                        height: 142,
                        width: 99,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 3),
                              ),
                            ],
                            color: Colors.white),
                        child: Column(
                          children: [
                            Image.asset('assets/images/ancol.png'),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 8, right: 8, top: 8),
                              child: const Text(
                                "Ancol Entrance Gate",
                                style: TextStyle(
                                    fontSize: 8, fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      gradient: const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffFE5F5F),
                                            Color(0xffFC9842)
                                          ]),
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: const Text(
                                      "Detail",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 7,
                                          color: Colors.white),
                                    )),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ]),
    );
  }
}

Widget homeButton(String text, String assetPath) {
  return Column(
    children: [
      Container(
        height: 62,
        width: 62,
        padding: EdgeInsets.all(7),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xffFFE3CA), Color(0xffFFFFFF)]),
            border: Border.all(color: Colors.orange)),
        child: Image.asset(assetPath),
      ),
      const SizedBox(
        height: 4,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 8, fontWeight: FontWeight.w500),
      )
    ],
  );
}
