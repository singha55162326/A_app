import 'package:A_app/page2.dart';
import 'package:A_app/page3.dart';
import 'package:A_app/page6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_viewer/image_viewer.dart';

class Yai extends StatelessWidget {
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
                "images/nar t 9.1.png",
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
                        'images/49.png',
                      ),
                      buttonsubjectgame(
                        'images/58.png',
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/50.png'),
                        buttonsubjectgame('images/52.png'),
                        buttonsubjectgame('images/54.png'),
                        buttonsubjectgame('images/56.png'),
                        buttonsubjectgame('images/59.png'),
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/51.png'),
                        buttonsubjectgame('images/53.png'),
                        buttonsubjectgame('images/55.png'),
                        buttonsubjectgame('images/57.png'),
                        buttonsubjectgame('images/60.png'),
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
                                    builder: (context) => H(),
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
