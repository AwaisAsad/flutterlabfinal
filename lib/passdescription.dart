import 'package:flutter/material.dart';

class passDesc extends StatefulWidget {
  const passDesc({Key? key}) : super(key: key);

  @override
  _passDescState createState() => _passDescState();
}

class _passDescState extends State<passDesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Password Dairy"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(child:Center(child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                      title: Text("Enter Password"),
                      // keyboardType: TextInputType.number;
                      content: TextField(
                        onChanged: (value) {
                          setState(() {
                            var valueText = value;
                          });
                        },
                      ),

                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => passDesc()));
                          },
                          child: Text("Save"),
                        ),
                      ],
                    ));
          },
          child: Text("Enter Password"),
        ))));
  }
}
