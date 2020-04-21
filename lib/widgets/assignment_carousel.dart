import 'package:flutter/material.dart';

import '../screens/assignments_screen.dart';
import '../screens/add_new_group.dart';
import '../models/group_model.dart';
import '../models/assignment.dart';

class AssignmentCarousel extends StatefulWidget {
  @override
  _AssignmentCarouselState createState() => _AssignmentCarouselState();
}

class _AssignmentCarouselState extends State<AssignmentCarousel> {
  void _addA(String asTitle, String imageUrl, String id) {
    final newGroup = Group(
      title: asTitle,
      imageUrl: imageUrl,
      id: id,
    );
    setState(() {
      groups.add(newGroup);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Auftragslisten',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              FlatButton(
                padding: const EdgeInsets.only(left: 0),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) {
                    return AddNewGroup(_addA);
                  }),
                ),
                child: Text(
                  'Hinzufügen',
                  style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: groups.length,
              itemBuilder: (context, index) {
                return Row(
                  children: <Widget>[
                    SizedBox(width: 8),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) {
                          return AssignmentsScreen(
                            groups[index].title,
                            assignments,
                            assignmentsA,
                            assignmentsB,
                          );
                        }),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            height: 150,
                            width: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                groups[index].imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 120),
                            height: 30,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 125),
                            width: 150,
                            height: 20,
                            child: Text(
                              groups[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                );
              }),
        ),
      ],
    );
  }
}
