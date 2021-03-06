import 'package:flutter/material.dart';
import 'package:mimar/screens/home/components/app_bar.dart';
import 'package:mimar/screens/home/components/caraousel_1.dart';
import 'package:mimar/screens/home/components/caraousel_2.dart';
import 'package:mimar/screens/home/components/caraousel_3.dart';
import 'package:mimar/screens/home/components/caraousel_4.dart';
import 'package:mimar/screens/home/components/caraousel_5.dart';
import '../../../constants.dart';

class ProjectEnv extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        cacheExtent: 60000,
        shrinkWrap: true,
        children: [
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
                        "Projects".toUpperCase(),
                        style: Theme.of(context).textTheme.headline2!.copyWith(
                            color: smallwriteColors,
                            fontWeight: FontWeight.bold),
                      ),
                      // Text(
                      //   "can add some text under the headline2",
                      //   style: TextStyle(
                      //       fontSize: 21,
                      //       color: Colors.deepPurple.withOpacity(0.80)),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                    child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Carousel_1()),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.grey,
                              width: 640,
                              height: 460,
                              child: Column(
                                children: [
                                  Container(
                                      width: 640,
                                      height: 100,
                                      color: Colors.grey,
                                      child: Center(
                                        child: Text(
                                          "Tost??u",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      )),
                                  Container(
                                    width: 640,
                                    height: 360,
                                    child: Image.asset(
                                      "assets/images/Tost??u/renders_3 - Foto.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Carousel_2()),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.grey,
                              width: 640,
                              height: 460,
                              child: Column(
                                children: [
                                  Container(
                                      width: 640,
                                      height: 100,
                                      color: Colors.grey,
                                      child: Center(
                                        child: Text(
                                          "Ata Konaklar??",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      )),
                                  Container(
                                    width: 640,
                                    height: 360,
                                    child: Image.asset(
                                      "assets/images/Ata Konaklar??/Render_2 - Foto.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Carousel_3()),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.grey,
                              width: 640,
                              height: 460,
                              child: Column(
                                children: [
                                  Container(
                                      width: 640,
                                      height: 100,
                                      color: Colors.grey,
                                      child: Center(
                                        child: Text(
                                          "Diyarbak??r",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      )),
                                  Container(
                                    width: 640,
                                    height: 360,
                                    child: Image.asset(
                                      "assets/images/Diyarbak??r/render_1 - Photo.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Carousel_4()),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.grey,
                              width: 640,
                              height: 460,
                              child: Column(
                                children: [
                                  Container(
                                      width: 640,
                                      height: 100,
                                      color: Colors.grey,
                                      child: Center(
                                        child: Text(
                                          "Halfeti Konaklar??",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      )),
                                  Container(
                                    width: 640,
                                    height: 360,
                                    child: Image.asset(
                                      "assets/images/Halfeti Konak/render_6 - Foto.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Carousel_5()),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              color: Colors.grey,
                              width: 640,
                              height: 460,
                              child: Column(
                                children: [
                                  Container(
                                      width: 640,
                                      height: 100,
                                      color: Colors.grey,
                                      child: Center(
                                        child: Text(
                                          "Tilmen H??y??k",
                                          style: TextStyle(fontSize: 24),
                                        ),
                                      )),
                                  Container(
                                    width: 640,
                                    height: 360,
                                    child: Image.asset(
                                      "assets/images/Tilmen H??y??k/DENEMEE_11 - Foto.jpg",
                                      fit: BoxFit.fill,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
