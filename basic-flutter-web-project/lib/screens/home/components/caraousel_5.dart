import 'package:flutter/material.dart';
import 'package:mimar/screens/home/components/app_bar.dart';

import '../../../constants.dart';

class Carousel_5 extends StatefulWidget {
  const Carousel_5({
    Key? key,
  }) : super(key: key);

  @override
  State<Carousel_5> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel_5> {
  late PageController _pageController;

  List<String> images = [
    "assets/images/Tilmen Höyük/DENEMEE_11 - Foto.jpg",
    "assets/images/Tilmen Höyük/DENEMEE_12 - Foto.jpg",
    "assets/images/Tilmen Höyük/DENEMEE_13 - Foto.jpg",
    "assets/images/Tilmen Höyük/render deneme-2.jpg",
    "assets/images/Tilmen Höyük/renderrrr.jpg",
    "assets/images/Tilmen Höyük/renders_21 - Foto.jpg",
    "assets/images/Tilmen Höyük/renderss_14 - Foto.jpg",
    "assets/images/Tilmen Höyük/RRR.jpg",
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
        body: ListView(children: [
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
                    "tilmen höyük".toUpperCase(),
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
