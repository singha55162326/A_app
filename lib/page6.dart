import 'package:A_app/page2.dart';
import 'package:A_app/page3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_viewer/image_viewer.dart';

class H extends StatelessWidget {
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
                "images/nar t 10.1.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
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
                        
                        buttonsubjectgame('images/61.png'),
                        buttonsubjectgame('images/63.png'),
                        buttonsubjectgame('images/65.png'),
                   
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                        buttonsubjectgame('images/62.png'),
                        buttonsubjectgame('images/64.png'),
                        buttonsubjectgame('images/66.png'),
                        
                      ]
                      // )
                      ),
                  
                               
                              
                          
                      
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
