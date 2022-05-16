import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BodyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView(
          cacheExtent: 60000,
          shrinkWrap: true,
          children: [
            Container(
              height: 700,
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1.5,
                    autoPlay: true,
                    scrollDirection: Axis.horizontal,
                    autoPlayCurve: Curves.linear),
                items: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tilmen Höyük/DENEMEE_11 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tilmen Höyük/DENEMEE_12 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tilmen Höyük/DENEMEE_13 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tilmen Höyük/render deneme-2.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tilmen Höyük/renderrrr.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tilmen Höyük/renders_21 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 700.0,
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1.5,
                    autoPlay: true,
                    reverse: true,
                    autoPlayCurve: Curves.easeInCirc),
                items: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tostçu/renders_3 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Tostçu/renders_4 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 700,
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1.5,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInExpo),
                items: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Ata Konakları/Render_2 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Ata Konakları/Render_4 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 700,
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1.5,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOutCubicEmphasized,
                    reverse: true),
                items: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Diyarbakır/render_1 - Photo.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Diyarbakır/render_2 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 700,
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1.5,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeOutQuad),
                items: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Halfeti Konak/render_6 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Halfeti Konak/render_7 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              height: 700,
              margin: EdgeInsets.all(5.0),
              child: CarouselSlider(
                options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOutSine,
                    reverse: true),
                items: [
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Halfeti Konak/render_16 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(17.0),
                      child: Image(
                        image: AssetImage(
                            "assets/images/Halfeti Konak/render_15 - Foto.jpg"),
                        height: 800.0,
                        width: 1360.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Container(
                height: 700,
                margin: EdgeInsets.all(10.0),
                child: CarouselSlider(
                    options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlay: true,
                        autoPlayCurve: Curves.slowMiddle,
                        scrollDirection: Axis.vertical),
                    items: [
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17.0),
                          child: Image(
                            image:
                                AssetImage("assets/images/Tostçu/renders.jpg"),
                            height: 800.0,
                            width: 600.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(17.0),
                          child: Image(
                            image: AssetImage(
                                "assets/images/Tostçu/renders_10 - Foto.jpg"),
                            height: 800.0,
                            width: 600.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
