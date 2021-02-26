
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/networking/Api.dart';
import 'package:flutter_app/screens/Login_Screen.dart';
import 'package:flutter_app/screens/Profile.dart';
import 'package:flutter_app/screens/SignUp.dart';

import 'AddAuthor.dart';

class Home_Page extends StatefulWidget{
  static int index=1;


  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> with SingleTickerProviderStateMixin {

   TabController _tabController ;
   Color first = Colors.amber;
   Color second = Colors.green;
  static TextEditingController _emailController= new TextEditingController();



   List<Widget> pages = <Widget>[

    Login_Screen(
      _emailController
    ),
     SignUP(),
  ];




   @override
   void initState() {
     super.initState();
     _tabController = new TabController(vsync: this, length:pages.length);

   }

  @override
  Widget build(BuildContext context) {
    // TODO:  implement build


    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.grey,
        ),
        home:Scaffold(
            resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
                appBar:AppBar(
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero )),
                  backgroundColor: Colors.white,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.network(
                          "https://likewise-stage.azureedge.net/uploads/3eb6cf23-895b-45e9-b92c-5fb1b457dd04/bill-gates-profile-pic.jpg",
                         // width: 30,
                        //  height: 30,
                        ),
                      ),
                    ),
                  ],

                  flexibleSpace: new Column(
                    //textBaseline:TextBaseline.alphabetic ,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,195,0),
                        child:  TabBar(
                       controller: _tabController,
                        /* onTap: (_hasBeenPressed) {

                           this.moveBtn.backgroundColor.green;


                      },*/
                      tabs: [
                        new Tab(text: "Login",),
                          new Tab(text  :"SignUp"),

                  ],
                  labelStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.normal,),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black54,
                  indicatorColor: Colors.black,
                  indicatorPadding: const EdgeInsets.fromLTRB(15, 0, 10, 0),
                  // indicatorWeight: 0.95,
                )


                      ),

                    ],
                  ),
                ),
            body:

            TabBarView(
              controller: _tabController,
              children:[
                pages[0]
                ,
               pages[1],
              ]),
            floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton:Padding(
          padding: EdgeInsets.only(bottom: 35,right: 15),
              child:
             FloatingActionButton(
                elevation:20 ,
                // shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(5))),
                child: Container(
                    color: Colors.transparent,
                    child:
                    Icon(Icons.arrow_forward_outlined,color: Colors.white,)),

                backgroundColor: _tabController.index==0?Colors.amber:Colors.green,
                onPressed: () {
                   API.loginByEmail();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddAuthor()),
                  );
                  setState(() {
                    _tabController.index==0?first:second;
                    if(_emailController.text.toString().endsWith("m")){

                    };

                  });
                },
              )

             ),
        ))
        ;


  }



}