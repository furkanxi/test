import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import '../models/assignment.dart';

class AssignmentListTile extends StatelessWidget {
  final List<Assignment> assignments;


  AssignmentListTile(this.assignments);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: assignments.map((as) {
        return ListTile(
          leading: !as.done
              ? IconButton(
                  icon: Icon(Icons.done_outline), onPressed: () {})
              : IconButton(
                  icon: Icon(Icons.done),
                  onPressed: () {},
                ),
          title: Text(as.assignment),
          subtitle: Text(
            DateFormat.yMEd().format(as.deadlineDay),
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPressed: () {},
          ),
        );
      }).toList(),
    );
  }
}
