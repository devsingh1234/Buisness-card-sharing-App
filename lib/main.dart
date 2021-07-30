import 'package:flutter/material.dart';
import 'package:share/share.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amberAccent,
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1789&q=80',
                  ),
                ),
                Text(
                  "Divyansh",
                  style: TextStyle(fontSize: 40, fontFamily: 'Nosifer-Regular'),
                ),
                Text(
                  "Flutter devloper",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Card(
                  color: Colors.amber,
                  elevation: 10,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    title: Text("Divyanshasingh@gmail.com"),
                  ),
                ),
                Card(
                  color: Colors.amber,
                  elevation: 20,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    title: Text("+91-872XXXX544"),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  elevation: 20,
                  splashColor: Colors.redAccent,
                  height: 50,
                  minWidth: 120,
                  color: Colors.amber,
                  onPressed: () {
                    // Share.share('''Divyansh Kuamr Singh ,
                    //        UNIV NO : 191510005 ,
                    //        Email : Divyansh.sing_cs.ccvv19@gla.ac.in''');

                    Share.share(
                        'Divyansh Kuamr Singh\nUNIV NO : 191510005\nEmail : Divyansh.sing_cs.ccvv19@gla.ac.in\nMobile No: 8726403522\nCurrent sem:V\n');
                  },
                  child: Icon(
                    Icons.share,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
