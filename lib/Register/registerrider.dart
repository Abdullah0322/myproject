import 'package:ClickandPick/Login/login.dart';
import 'package:ClickandPick/Register/registervehicle.dart';
import 'package:ClickandPick/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterRider extends StatefulWidget {
  @override
  _RegisterRiderState createState() => _RegisterRiderState();
}

class _RegisterRiderState extends State<RegisterRider> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final password = TextEditingController();
  final email = TextEditingController();
  final confirm = TextEditingController();
  final name = TextEditingController();
  final phone = TextEditingController();

  final requiredValidator =
      RequiredValidator(errorText: 'this field is required');
  final passwordValidator = MultiValidator([
    RequiredValidator(errorText: 'password is required'),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ]);
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
                key: _formKey,
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
                          controller: name,
                          validator: requiredValidator,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText: 'Name',
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
                          controller: email,
                          validator: validateEmail,
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
                          controller: password,
                          validator: passwordValidator,
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
                          validator: (val) {
                            if (val.isEmpty) return 'This field is required';
                            if (val != password) return 'Not Match';
                            return null;
                          },
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
                          controller: phone,
                          validator: validateMobile,
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
                                onPressed: () {
                                  if (_formKey.currentState.validate()) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              RegisterVehicle(),
                                        ));
                                  }
                                },
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

String validateEmail(String value) {
  print("validateEmail : $value ");

  if (value.isEmpty) return "This field is required";

  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regex = new RegExp(pattern);

  if (!regex.hasMatch(value.trim())) {
    return "The Email Address is not valid";
  }

  return null;
}

String validateMobile(String value) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = new RegExp(pattern);
  if (value.length == 0) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}
