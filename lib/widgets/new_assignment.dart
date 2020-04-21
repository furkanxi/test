import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewAssignment extends StatefulWidget {
  final Function addAs;

  NewAssignment(this.addAs);

  @override
  _NewAssignmentState createState() => _NewAssignmentState();
}

class _NewAssignmentState extends State<NewAssignment> {
  final _titleController = TextEditingController();
  DateTime _selectedDate;

  void _submitData() {
    final enteredTitle = _titleController.text;

    if (enteredTitle.isEmpty || _selectedDate == null) {
      return;
    }
    widget.addAs(enteredTitle, _selectedDate);
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2021),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Auftrag'),
                onSubmitted: (_) =>  _submitData,
              ),
              Container(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      _selectedDate == null
                          ? ' Kein Datum gewählt!'
                          : '${DateFormat.yMd().format(_selectedDate)}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    FlatButton(
                      child: Text(
                        'Wähle Datum!',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: _presentDatePicker,
                      color: Theme.of(context).accentColor,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
              RaisedButton(
                child: Text('Hinzufügen'),
                color: Theme.of(context).accentColor,
                textColor: Colors.white,
                onPressed: _submitData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
