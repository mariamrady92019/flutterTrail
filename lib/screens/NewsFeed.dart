library font_awesome_flutter;

import 'dart:ffi';

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Home_Screen.dart';

//=> means return
void main() => runApp(MyHome());
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyApp()
    );
  }
}
class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ieee',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.amber,
      ),
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          //title: Text("FaceBook task"),
          backgroundColor: Colors.blue,


        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Container(
            height: MediaQuery.of(context).size.height/2,
            child: Card(

              color: Colors.white,
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                 mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Image.network(
                            "https://likewise-stage.azureedge.net/uploads/3eb6cf23-895b-45e9-b92c-5fb1b457dd04/bill-gates-profile-pic.jpg",
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      Text(
                        "Mariam Rady ELbradiey",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "life is to short , be kind and appreciate yourSelf",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1571680322279-a226e6a4cc2a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8dG9tYXRvfGVufDB8MnwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                      height: MediaQuery.of(context).size.height/4,
                      width:MediaQuery.of(context).size.width/1,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RaisedButton.icon(
                        onPressed: () {
                          print('Button Clicked.');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                        label: Text(
                          'like',
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.local_bar,
                          color: Colors.blue,
                        ),
                        textColor: Colors.blue,
                        splashColor: Colors.blue,
                        color: Colors.white,
                      ),
                      RaisedButton.icon(
                        onPressed: () {
                          print('Button Clicked.');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        label: Text(
                          'comment',
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.comment,
                          color: Colors.blue,
                        ),
                        textColor: Colors.blue,
                        splashColor: Colors.red,
                        color: Colors.white,
                      ),
                      /* Image.network(
                              "https://cdn3.iconfinder.com/data/icons/facebook-ui-flat/48/Facebook_UI-09-512.png",
                              width: 30,
                              height: 30)*/
                      RaisedButton.icon(
                        onPressed: () {
                          print("navigate");
                          Navigator.push(
                           context,
                              MaterialPageRoute(builder: (context) => Home_Page()));

                        },
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(10.0))),
                        label: Text(
                          'share',
                          style: TextStyle(color: Colors.blue),
                        ),
                        icon: Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        textColor: Colors.blue,
                        splashColor: Colors.red,
                        color: Colors.white,
                      )
                         /*Image.network(
                              "https://img.favpng.com/17/4/25/computer-icons-share-icon-sharing-png-favpng-q0nTUpQRiwdXb5aeHu2RS6MuU.jpg",
                              width: 30,
                              height: 30)*/
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
