import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          //TOP Row
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00A368),
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ),
        //Grid view for top items( includes image title and rate and cart icon(InkWell)
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          shrinkWrap: true,
          children: [
            for (int i = 1; i < 8; i++)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "itempage");
                      },
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        child: Image.asset(
                          "images/$i.png",
                          height: 110,
                          width: 110,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 6),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Item title",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Fresh Fruit 2KG",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$20",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF00A368),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(8),
                              //margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                color: Color(0xFF00A368),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
          ],
        )
      ],
    );
  }
}
