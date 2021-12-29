import 'package:flutter/material.dart';
import 'package:flutterlabfinal/passdescription.dart';

class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  _passwordState createState() => _passwordState();
}

class _passwordState extends State<password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Password Dairy"),
          backgroundColor: Colors.deepPurple,
        ),
        body: Container(
          child: Center(
            child: RaisedButton(
              onPressed: () {
               showDialog(
                    context: context,
                    builder: (ctx)=>
                    AlertDialog(
                      title: Text("Enter Secuity Code"),
                       // keyboardType: TextInputType.number;
                      content:TextField(
                          onChanged: (value) {
                            setState(() {

                              var valueText = value;
                            });
                          },),
                      actions: <Widget>[
                        FlatButton(
                          onPressed: () {
                           Navigator.push(context, MaterialPageRoute(builder:(context)=> passDesc()));
                          },
                          child: Text("Next"),
                        ),
                      ],
                    ));


              },
              child: Text("Enter Security Number"),
            )
            ,
          )
          ,
        )
    );
  }
}


