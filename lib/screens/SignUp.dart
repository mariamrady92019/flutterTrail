import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUP extends StatelessWidget {
  MaterialColor myColor = Colors.blueGrey;
  String header_text = "Hello My Dear , ";
  String body_text = " Enter your information below or \n login with a social account";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
            // height: MediaQuery.of(context).size.height/5,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: MediaQuery.of(context).size.height / 14,
          ),
          //Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 20),
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
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              body_text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12.0, 20, 12, 12),
            child: TextField(
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
            child: TextField(
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
          Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
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
              child: Opacity(
                opacity:0.8 ,
                child: Container(
            padding: EdgeInsets.all(10),
            decoration: new BoxDecoration(
                  color: Color(0xFFf44949),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(0.0),
                    topRight: const Radius.circular(0.0),
                  )),
            width: MediaQuery.of(context).size.width,
          ),
              )),
        ] ));
  }
}
