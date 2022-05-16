import 'package:flutter/material.dart';
import 'package:mimar/screens/home/components/app_bar.dart';

import '../../../constants.dart';

class Carousel_3 extends StatefulWidget {
  const Carousel_3({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel_3> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel_3> {
  late PageController _pageController;

  List<String> images = [
    "assets/images/Diyarbakır/render_1 - Photo.jpg",
    "assets/images/Diyarbakır/render_2 - Foto.jpg",
    "assets/images/Diyarbakır/render_6 - Foto.jpg",
    "assets/images/Diyarbakır/render_7 - Foto.jpg",
    "assets/images/Diyarbakır/render_11 - Foto.jpg",
    "assets/images/Diyarbakır/render_12 - Foto.jpg",
    "assets/images/Diyarbakır/render_15 - Foto.jpg",
  ];

  int activePage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(shrinkWrap: true, children: [
      Container(
        height: size.height,
        width: size.width,
        color: kTextColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "diyarbakır".toUpperCase(),
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: smallwriteColors, fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   "add...",
                  //   style: TextStyle(fontSize: 21, color: smallwriteColors),
                  // ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  child: PageView.builder(
                      itemCount: images.length,
                      pageSnapping: true,
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          activePage = page;
                        });
                      },
                      itemBuilder: (context, pagePosition) {
                        bool active = pagePosition == activePage;
                        return slider(images, pagePosition, active);
                      }),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(images.length, activePage))
              ],
            )
          ],
        ),
      ),
    ]));
  }
}

AnimatedContainer slider(images, pagePosition, active) {
  double margin = active ? 10 : 20;

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutCubic,
    margin: EdgeInsets.all(margin),
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(images[pagePosition]))),
  );
}

imageAnimation(PageController animation, images, pagePosition) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, widget) {
      print(pagePosition);

      return SizedBox(
        width: 200,
        height: 200,
        child: widget,
      );
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Image.asset(images[pagePosition]),
    ),
  );
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: EdgeInsets.all(3),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: currentIndex == index ? Colors.black : Colors.grey,
          shape: BoxShape.circle),
    );
  });
}
