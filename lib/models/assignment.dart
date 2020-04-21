import 'package:flutter/material.dart';

class Assignment {
  final String assignment;
  final String assignmentId;
  final bool done;
  final DateTime deadlineDay;

  Assignment({
    @required this.assignment,
    @required this.assignmentId,
    @required this.done,
    @required this.deadlineDay,
  });
}

final List<Assignment> assignments = [
  /*Assignment(
      assignment: 'lackieren von a1',
      done: false,
      deadlineDay: DateTime.now()),
  Assignment(
      assignment: 'lackieren von a1',
      done: false,
      deadlineDay: DateTime.now()),
  Assignment(
      assignment: 'lackieren von a1',
      done: false,
      deadlineDay: DateTime.now()),
  Assignment(
      assignment: 'lackieren von a1',
      done: true,
      deadlineDay: DateTime.now()),*/
];

List<Assignment> assignmentsA = [
  /*Assignment(
      assignment: 'lackieren von b1',
      done: false,
      deadlineDay: DateTime.now()),
  Assignment(
      assignment: 'lackieren von b2',
      done: false,
      deadlineDay: DateTime.now()),
  Assignment(
      assignment: 'lackieren von c3',
      done: false,
      deadlineDay: DateTime.now()),*/
];

List<Assignment> assignmentsB = [
  /*Assignment(
      assignment: 'lackieren von a3',
      done: false,
      deadlineDay: DateTime.now()),
  Assignment(
      assignment: 'lackieren von a3',
      done: false,
      deadlineDay: DateTime.now()),
  Assignment(
      assignment: 'lackieren von d3',
      done: false,
      deadlineDay: DateTime.now()),*/
];
