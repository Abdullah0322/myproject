import 'package:flutter/material.dart';

import 'buyerdashboard.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int _currentPage;
  void initState() {
    _currentPage = 2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    //width of the screen
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Center(
              child: Text("Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),
            ),
            leading: GestureDetector(
              onTap: () {/* Write listener code here */},
              child: Icon(Icons.arrow_back,
                  color: Colors.black // add custom icons also
                  ),
            ),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      size: 26.0,
                      color: Colors.black,
                    ),
                  )),
            ]),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                        width: width * 0.93,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.dstATop),
                                  image: AssetImage('assets/Bags.jpg'),
                                ),
                              ),
                            ),
                            Center(
                                child: Container(
                              child: Text(
                                'BAGS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40),
                              ),
                            )),
                          ],
                        )),
                  ),
                ),
              ),
              Center(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                        width: width * 0.93,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.dstATop),
                                  image: AssetImage('assets/women.jpg'),
                                ),
                              ),
                            ),
                            Center(
                                child: Container(
                              child: Text(
                                'Women',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40),
                              ),
                            )),
                          ],
                        )),
                  ),
                ),
              ),
              Center(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                        width: width * 0.93,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.dstATop),
                                  image: AssetImage('assets/Men.jpg'),
                                ),
                              ),
                            ),
                            Center(
                                child: Container(
                              child: Text(
                                'Men',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40),
                              ),
                            )),
                          ],
                        )),
                  ),
                ),
              ),
              Center(
                child: Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Container(
                        width: width * 0.93,
                        height: 150,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                color: const Color(0xff7c94b6),
                                image: new DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: new ColorFilter.mode(
                                      Colors.black.withOpacity(0.5),
                                      BlendMode.dstATop),
                                  image: AssetImage('assets/Shoes.jpg'),
                                ),
                              ),
                            ),
                            Center(
                                child: Container(
                              child: Text(
                                'Shoes',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40),
                              ),
                            )),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomBar(
            currentIndex: _currentPage,
            onChange: (index) {
              setState(() {
                _currentPage = index;
              });
            }));
  }
}
