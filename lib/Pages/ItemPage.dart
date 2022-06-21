import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Fruit Picture Container
              Container(
                padding: EdgeInsets.all(15),
                height: 350,
                width: double.infinity,
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/2.png"),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Color(0xFF00A368),
                  ),
                ),
              ),
              // Fruit Info Container
              Container(
                // we can change height according to our choice
                height: MediaQuery.of(context).size.height * 0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF00A368),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // fruit title and plus minus sign
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fruit Title",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(CupertinoIcons.minus),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "01",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Icon(CupertinoIcons.plus),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    // Rating Row
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Text(
                          "4.8 (230)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    //Description Column
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description:",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "This is the discription of the product, here you can write more about this product.This is the discription of the product, here you can write more about this product.This is the discription of the product, here you can write more about this product. ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                    //Delivery time Row
                    Row(
                      children: [
                        Text("Delivery Time:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                        )
                      ],

                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
