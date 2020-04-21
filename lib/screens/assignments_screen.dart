import 'package:flutter/material.dart';

import '../widgets/assignments_list_tile.dart';

import '../models/assignment.dart';
import '../widgets/new_assignment.dart';

class AssignmentsScreen extends StatefulWidget {
  final String assignmentTitle;
  final String assignmentOverviewId;
  final List<Assignment> assignments;
  final List<Assignment> assignmentsA;
  final List<Assignment> assignmentsB;

  AssignmentsScreen(
    this.assignmentTitle,
    this.assignmentOverviewId,
    this.assignments,
    this.assignmentsA,
    this.assignmentsB,
  );

  @override
  _AssignmentsScreenState createState() => _AssignmentsScreenState();
}

class _AssignmentsScreenState extends State<AssignmentsScreen> {
  void _statusChanger(bool status) {
    setState(() {
      return status = true;
    });
  }

  void _addNewAssignment(
    String txTitle,
    DateTime chosenDate,
  ) {
    final newAs = Assignment(
      assignment: txTitle,
      deadlineDay: chosenDate,
      done: false,
      assignmentId: DateTime.now().toString(),
    );
    setState(() {
      assignmentsA.add(newAs);
      Navigator.pop(context);
    });
  }

  void _startAddNewAssignment(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            behavior: HitTestBehavior.opaque,
            child: NewAssignment(_addNewAssignment),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(widget.assignmentTitle),
      ),
      body: assignments.isEmpty && assignmentsA.isEmpty && assignmentsB.isEmpty
          ? Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'Feierabend...',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Container(
                    child: Image.network(
                        'https://images.emojiterra.com/google/android-10/512px/1f634.png'),
                  )
                ],
              ),
            )
          : Column(
              children: <Widget>[
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(60),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Headline('Höchste Priorität'),
                            AssignmentListTile(assignments),
                            Headline('Mittlere Priorität'),
                            AssignmentListTile(assignmentsA),
                            Headline('Niedrige Priorität'),
                            AssignmentListTile(assignmentsB)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => _startAddNewAssignment(context),
        child: Icon(
          Icons.add,
          color: Colors.green,
          size: 25,
        ),
        //onPressed: () => _startAddNewAssignment(context),
      ),
    );
  }
}

class Headline extends StatelessWidget {
  final String title;

  Headline(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      child: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.amber,
        ),
      ),
    );
  }
}
