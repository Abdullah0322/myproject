import 'package:ClickandPick/utils/colors.dart';
import 'package:flutter/material.dart';

class Registershop extends StatefulWidget {
  @override
  _RegistershopState createState() => _RegistershopState();
}

class _RegistershopState extends State<Registershop> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    //width of the screen
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: containercolor,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 70, 0, 0),
                    child: Text(
                      'Enter',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: headingcolor,
                        fontSize: 35,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 110, 0, 0),
                    child: Text(
                      'Your Shop',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: headingcolor,
                        fontSize: 35,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(25, 150, 0, 0),
                    child: Text(
                      'Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: headingcolor,
                        fontSize: 35,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: width * 0.8,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: 'Shop Name',
                            hintStyle: TextStyle(color: headingcolor),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        width: width * 0.8,
                        decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: new Border.all(
                            color: Colors.white,
                            width: 1.0,
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: 'Shop Address',
                            hintStyle: TextStyle(color: headingcolor),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Container(
                            height: 55,
                            width: width * 0.8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: RaisedButton(
                                color: buttoncolor,
                                child: Center(
                                  child: Text('Next',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                onPressed: () {},
                              ),
                            ))),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
