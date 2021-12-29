import 'package:flutter/material.dart';
import 'package:flutterlabfinal/password.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GpaCalculator App',
      /*  initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the Main widget.
        '/': (context) => gpa(),
        '/message': (context) => Messages(),
        '/setting': (context) => Settings()
      },*/
      // home: Main(),
    );
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Password Dairy App'),
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            ' Welcome to Password Dairy ',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ])), drawer: Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
        children: <Widget>[
    DrawerHeader(
    child: Center(child: Text('Password Dairy')),
    decoration: BoxDecoration(
    color: Colors.blue,
    ),
    ),
          ListTile(
            title: Text('Add Password'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, '/message');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>password()));

            },
          ),
          ListTile(
            title: Text('Save  Password'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, '/message');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>password()));

            },
          ),
          ListTile(
            title: Text('Reterieve Password'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, '/message');
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>password()));

            },
          ),
    ])));


  }
}
