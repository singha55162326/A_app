import 'package:A_app/page2.dart';
import 'package:A_app/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_viewer/image_viewer.dart';

class Nar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: new Image.asset(
                "images/nar t 6.1.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: Image.asset('images/poum ork.png'),
                            width: 200,
                            height: 80,
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buttonsubjectgame(
                        'images/13.png',
                      ),
                      buttonsubjectgame(
                        'images/22.png',
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/14.png'),
                        buttonsubjectgame('images/16.png'),
                        buttonsubjectgame('images/18.png'),
                        buttonsubjectgame('images/20.png'),
                        buttonsubjectgame('images/23.png'),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/15.png'),
                        buttonsubjectgame('images/17.png'),
                        buttonsubjectgame('images/19.png'),
                        buttonsubjectgame('images/21.png'),
                        buttonsubjectgame('images/24.png'),
                      ]
                      // )
                      ),
                  Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => oiy(),
                                  ),
                                );
                              },
                              child: Image.asset('images/next.png'),
                            ),
                            width: 200,
                            height: 80,
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buttonsubjectgame(
  String path,
) {
  return SizedBox(
      width: 250,
      height: 150,
      child: FlatButton(
          onPressed: () {
            ImageViewer.showImageSlider(images: [
              'images/TBLaoP3co-276.jpg',
              'images/TBLaoP3co-277.jpg'
            ]);
          },
          child: Image.asset(path)));
}
