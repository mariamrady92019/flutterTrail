import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Home_Screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login_Screen extends StatelessWidget {
  MaterialColor myColor = Colors.blueGrey;
  String header_text = "Welcome Back ,";
  String body_text = " Mariam :)" ;
 TextEditingController _emailController;
 Login_Screen(this._emailController);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        // height: MediaQuery.of(context).size.height/5,
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
            height: MediaQuery.of(context).size.height / 15,
          ),
          //Divider(),
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text(
              header_text,
              style: TextStyle(

                  color: Colors.black87,
                  fontSize: 42,
                  // fontStyle: FontStyle.italic,

                  fontWeight: FontWeight.w300),
            ),
          ),



            Padding(
              padding: const EdgeInsets.only(left:20),
              child: Text(
               body_text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                   ),
                textAlign: TextAlign.start,
              ),
            ),

          Container(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 20, 12, 12),
            child: TextFormField(
              controller: _emailController,
              obscureText: false,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  fillColor: myColor,
                  prefixIcon: Icon(
                    Icons.person,
                    color: myColor,
                  ),
                  contentPadding: EdgeInsets.all(10),
                  labelText: 'Email',
                  labelStyle: TextStyle(color: myColor, fontSize: 16),
                  hintText: "Email Address",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black45)),
              cursorColor: myColor,


    ),

          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54, width: 1),
                      borderRadius: BorderRadius.circular(15)),
                  fillColor: myColor,
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: myColor,
                  ),
                  labelText: 'password',
                  labelStyle: TextStyle(color: myColor, fontSize: 16),
                  hintText: "enter your password",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300, color: Colors.black45)),
              cursorColor: myColor,

            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
                child: InkWell(
                  onTap: null,
                  child: Icon(
                    FontAwesomeIcons.facebook,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(10, 20, 20, 20),
                  child: InkWell(
                    onTap: null,
                    child: Icon(
                      FontAwesomeIcons.googlePlus,
                      size: 35,
                      color: Colors.black,
                    ),
                  )),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 6,
          ),
          // Divider(),

          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 20),
            child: FlatButton(
                onPressed: null,
                child: Text(
                  " Forget Password ?",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 17,
                  ),
                )),
          ),
              Expanded(
                child: Container(
              padding: EdgeInsets.all(10),
              decoration: new BoxDecoration(
                  color: Colors.black12,
                  borderRadius: new BorderRadius.only(
                   topLeft: const Radius.circular(0.0),
                   topRight: const Radius.circular(0.0),
                  )),
              width: MediaQuery.of(context).size.width,
            )),

        ]));
  }


}
