import 'package:A_app/page2.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_viewer/image_viewer.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class HomePage extends StatelessWidget {
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
                "images/nar t 5.3.png",
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
                        'images/1.png',
                      ),
                      buttonsubjectgame(
                        'images/10.png',
                      ),
                      
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/2.png'),
                        buttonsubjectgame('images/4.png'),
                        buttonsubjectgame('images/6.png'),
                        buttonsubjectgame('images/8.png'),
                        buttonsubjectgame('images/11.png'),
                      ]),
                      
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buttonsubjectgame('images/3.png'),
                        buttonsubjectgame('images/5.png'),
                        buttonsubjectgame('images/7.png'),
                        buttonsubjectgame('images/9.png'),
                        buttonsubjectgame('images/12.png'),
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
                                    builder: (context) => Nar(),
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
              ('images/TBLaoP3co-008.jpg'),
              ('images/TBLaoP3co-009.jpg')
            ],
            startingPosition: 1,
            );
            
          },
          child: Image.asset(path)));
}

