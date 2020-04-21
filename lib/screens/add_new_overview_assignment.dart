import 'package:flutter/material.dart';

import '../screens/homescreen.dart';

class AddNewOverviewAssignment extends StatefulWidget {
  final Function addAsB;

  AddNewOverviewAssignment(this.addAsB);

  @override
  _AddNewOverviewAssignmentState createState() =>
      _AddNewOverviewAssignmentState();
}

class _AddNewOverviewAssignmentState extends State<AddNewOverviewAssignment> {
  final _titleController = TextEditingController();
  final _pictureController = TextEditingController();

  void _submitData() {
    final enteredTitle = _titleController.text;
    final enteredPicture = _pictureController.text;
    final id = DateTime.now().toString();

    widget.addAsB(enteredTitle, enteredPicture, id);

    setState(() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
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
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Neue Auftragsliste',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          /*Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            height: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                color: Theme.of(context).accentColor),
            child: Center(
              child: Text(
                'Foto anlegen',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),*/
          TextField(
            decoration: InputDecoration(labelText: 'Hier kommen Fotos'),
            controller: _pictureController,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Titel',
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 20)),
              controller: _titleController,
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: _submitData,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  'Hinzufügen',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
