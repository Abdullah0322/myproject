import 'package:ClickandPick/Cart/cart.dart';
import 'package:ClickandPick/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  List<Color> colors = [Colors.blue, Colors.green, Colors.yellow, Colors.pink];
  List<String> imagePath = [
    "assets/bag_1.png",
    "assets/bag_2.png",
    "assets/bag_3.png",
    "assets/bag_4.png"
  ];
  var selectedColor = Colors.blue;
  var isFavourite = false;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/back.png",
                height: 34,
                width: 34,
              ),
            ),
            Column(
              children: [
                Text("Women's ORIGINAl",
                    style:
                        TextStyle(fontWeight: FontWeight.w100, fontSize: 16)),
                Text("BAG",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24))
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ));
              },
              child: Image.asset(
                "assets/shoppingcart.png",
                height: 34,
                width: 34,
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomButton() {
      return Container(
        padding: EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FlatButton(
                onPressed: () {},
                child: Text(
                  "Add to Cart +",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                )),
            Text(r"$95",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28))
          ],
        ),
      );
    }

    Widget hero() {
      return Container(
        child: Stack(
          children: [
            Image.asset(imagePath[colors.indexOf(selectedColor)]),
            Positioned(
                bottom: 10,
                right: 20,
                child: FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: () {
                    setState(() {
                      isFavourite = !isFavourite;
                    });
                  },
                  child: Image.asset(
                    !isFavourite ? "assets/hearten.png" : "assets/heart.png ",
                    height: 34,
                    width: 34,
                  ),
                ))
          ],
        ),
      );
    }

    Widget property() {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Color",
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                SizedBox(height: 10),
                Row(
                  children: List.generate(
                      4,
                      (index) => GestureDetector(
                            onTap: () {
                              print("index $index clicked");
                              setState(() {
                                selectedColor = colors[index];
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.only(right: 10),
                              height: 34,
                              width: 34,
                              child: selectedColor == colors[index]
                                  ? Image.asset("assets/heart.png")
                                  : SizedBox(),
                              decoration: BoxDecoration(
                                  color: colors[index],
                                  borderRadius: BorderRadius.circular(17)),
                            ),
                          )),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Size",
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16)),
                SizedBox(height: 10),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    color: AppColor.bodyColor.withOpacity(0.10),
                    child: Text(
                      "10.2",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      );
    }

    Widget section() {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In "
              "rutrum at ex non eleifend. Aenean sed eros a purus "
              "gravida scelerisque id in orci. Mauris elementum id "
              "nibh et dapibus. Maecenas lacinia volutpat magna",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: AppColor.bodyColor, fontSize: 14, height: 1.5),
            ),
            SizedBox(height: 20),
            property()
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: containercolor,
        body: SafeArea(
          child: Column(
            children: [
              header(),
              hero(),
              Expanded(child: section()),
              bottomButton()
            ],
          ),
        ));
  }
}
