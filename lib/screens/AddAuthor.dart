import 'package:flutter/material.dart';
import 'package:flutter_app/networking/Api.dart';

class AddAuthor extends StatefulWidget {
  @override
  _AddAuthorState createState() => _AddAuthorState();
}

class _AddAuthorState extends State<AddAuthor> {
  String authorName;
  final key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('New Author'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Author name', labelText: 'Author Name'),
                onChanged: (value) {
                  setState(() {
                    authorName = value;
                  });
                },
              ),
              RaisedButton(
                child: Text('Save'),
                onPressed: () {
                  API.loginByEmail( );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}