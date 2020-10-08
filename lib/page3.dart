import 'package:A_app/page2.dart';
import 'package:A_app/page4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_viewer/image_viewer.dart';

class oiy extends StatelessWidget {
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
                "images/nar t 7.1.png",
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
                        'images/25.png',
                      ),
                      buttonsubjectgame(
                        'images/34.png',
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/26.png'),
                        buttonsubjectgame('images/28.png'),
                        buttonsubjectgame('images/30.png'),
                        buttonsubjectgame('images/32.png'),
                        buttonsubjectgame('images/35.png'),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/27.png'),
                        buttonsubjectgame('images/29.png'),
                        buttonsubjectgame('images/31.png'),
                        buttonsubjectgame('images/33.png'),
                        buttonsubjectgame('images/36.png'),
                        
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
                                    builder: (context) => Noy(),
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
