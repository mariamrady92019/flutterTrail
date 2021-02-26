
library dart.dom.html;

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      primarySwatch: Colors.grey,
    ),
      home: Scaffold(
        backgroundColor:Colors.white,

            appBar: PreferredSize(
              preferredSize: Size(double.infinity, 50),
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(
                        color: Colors.black12,
                        spreadRadius: 5,
                        blurRadius: 2
                    )]
                ),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Container(
                  decoration: BoxDecoration(
                      color: HexColor("0f1123"),
                     // borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0),bottomRight: Radius.circular(0))
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [Icon(Icons.navigate_before,size: 40,color:HexColor("214151"),),
                              Text("Back",style: TextStyle(fontSize: 20,color:HexColor("214151"),fontWeight: FontWeight.bold)),
                            ],

                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: InkWell(
                                child: Text("Edit",style: TextStyle(fontSize: 20,color:HexColor("214151"),
                                    fontWeight: FontWeight.bold)),


                            ),

                          ),


                        ],
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
            ),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: HexColor("0f1123"),
              child: Column(

                children: [
                   Padding(
                     padding: const EdgeInsets.only(top:20,),
                     child: CircleAvatar(
                       backgroundColor: HexColor("4e3d53"),
                       radius: 95,
                       child: CircleAvatar(
                         backgroundColor: HexColor("a98b98"),
                         radius:90,
                         child: CircleAvatar(
                           foregroundColor: Colors.pink,
                           backgroundImage: NetworkImage(
                           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeI4_DlNHk9uCbbGuRzPNyrKoCVDoj0aY3nQ&usqp=CAU.jpg" ),
                           radius: 85,),
                       ),
                     ),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Mariam ElBradiey",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.normal),),
                    
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left:110.0,right: 110) ,
                    selected:true,
                    leading: Column(children: [
                     Text("43",style: TextStyle(color: Colors.white,fontSize:15,fontStyle: FontStyle.normal),),
                      Text("Assists",style: TextStyle(color: HexColor("214151"),fontSize:10,fontStyle: FontStyle.normal),),

                    ],),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(children: [
                          Text("43",style: TextStyle(color: Colors.white,fontSize:15,fontStyle: FontStyle.normal),),
                          Text("orders",style: TextStyle(color:HexColor("214151"),fontSize:10,fontStyle: FontStyle.normal),),

                        ],),
                    ),
                     
                    trailing:
                      Column(children: [
                        Text("43",style: TextStyle(color: Colors.white,fontSize:15,fontStyle: FontStyle.normal),),
                        Text("reviews",style: TextStyle(color:HexColor("214151"),fontSize:10,fontStyle: FontStyle.normal),),

                      ],),
                    
                  ),
                  Expanded(
                     flex: 1,
                    child: Card(
                      color:HexColor("214151"),
                      elevation:8,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))),
                      child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: ListTile(selected:true,
                            leading:Icon(FontAwesomeIcons.coffee,color: Colors.brown,),
                            title:
                                Text("Favorite Coffee",style: TextStyle(color: Colors.white,fontSize:17,fontStyle: FontStyle.normal),),
                            trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,) ,



                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: ListTile(selected:true,
                            leading:Icon(FontAwesomeIcons.firstOrder,color: Colors.black45,),
                            title:
                            Text("FirstOrder",style: TextStyle(color: Colors.white,fontSize:17,fontStyle: FontStyle.normal),),
                            trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,) ,



                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: ListTile(selected:true,
                            leading:Icon(FontAwesomeIcons.caravan,color: Colors.purple,),
                            title:
                            Text("adresses",style: TextStyle(color: Colors.white,fontSize:17,fontStyle: FontStyle.normal),),
                            trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,) ,



                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: ListTile(selected:true,
                            leading:Icon(Icons.payment,color: Colors.deepPurple,),
                            title:
                            Text("Payment options",style: TextStyle(color: Colors.white,fontSize:17,fontStyle: FontStyle.normal),),
                            trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,) ,



                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: ListTile(selected:true,
                            leading:Icon(Icons.rate_review_outlined,color: Colors.cyan,),
                            title:
                            Text("Review Activity",style: TextStyle(color: Colors.white,fontSize:17,fontStyle: FontStyle.normal),),
                            trailing:Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,) ,



                          ),
                        ),
                      ],
                    ),
                    ),
                  )
                ],
              ),
            ),
      ),
      );

  }
}
