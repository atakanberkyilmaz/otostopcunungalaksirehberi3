import 'package:flutter/material.dart';
import '../detial.dart';
import '../model/travel.dart';

class ActivitiesBlog extends StatelessWidget {
  final _list = Travel.activitiesBlog();
  final _pageCtrl = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: _pageCtrl,
        itemCount: _list.length,
        itemBuilder: (context, index) {
          var travel = _list[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailPage(travel: travel);
              }));
            },
            child: Stack(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10, right: 20, bottom: 30),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                      travel.url,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  left: 15,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.location,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20))),
                      Material(
                          color: Colors.transparent,
                          child: Text(travel.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30))),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 8,
                  right: 30,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff0c3358),
                        borderRadius: BorderRadius.circular(30)),
                    child: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 22),
                  ),
                )
              ],
            ),
          );
        });
  }
}
