import 'package:ClickandPick/Login/login.dart';
import 'package:ClickandPick/utils/colors.dart';
import 'package:flutter/material.dart';

class RegisterManager extends StatefulWidget {
  @override
  _RegisterManagerState createState() => _RegisterManagerState();
}

class _RegisterManagerState extends State<RegisterManager> {
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
                      'Hello!',
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
                      'Signup to  ',
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
                      'get started',
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
                            hintText: 'Employee ID',
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
                            hintText: 'Email Address',
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
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: 'Password',
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
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: 'Confirm Password',
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
                            hintText: 'Phone Number',
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
                                  child: Text('Signup',
                                      style: TextStyle(color: Colors.white)),
                                ),
                                onPressed: () {},
                              ),
                            ))),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        Container(
                            child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Text(
                              'Already have an account?',
                              style: TextStyle(
                                color: headingcolor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        )),
                        Container(
                            child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 120.0),
                            child: Text(
                              'Signin',
                              style: TextStyle(
                                color: headingcolor,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
