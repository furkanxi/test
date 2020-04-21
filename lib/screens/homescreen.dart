import 'package:flutter/material.dart';

import '../widgets/assignment_carousel.dart';

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        leading: Icon(
          Icons.menu,
          color: Color.fromRGBO(255, 251, 235, 1),
        ),
        title: Text(
          'Prototyp',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Color.fromRGBO(255, 251, 235, 1),
          ),
        ),
      ),
      body: Container(
        height:  MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(200),
          ),
          color: Theme.of(context).accentColor,
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 100, top: 20),
              width: 250,
              child: Text(
                'Die App, die deine Produktivität steigern wird!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 70),
            AssignmentCarousel(),
          ],
        ),
      ),
    );
  }
}
