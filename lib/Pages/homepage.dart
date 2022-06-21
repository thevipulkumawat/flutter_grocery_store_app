import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store_ui/Widgets/CategoriesWidget.dart';
import 'package:grocery_store_ui/Widgets/Popular_ItemWidget.dart';

import '../Widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00A368),
      body: SafeArea(
        child: SingleChildScrollView(
          // whole homepage in single child scroll view.
          child: Column(
            children: [
              //Custom app bar
              Container(
                padding: EdgeInsets.only(right: 20, left: 15, top: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30,
                      ),
                      Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              color: Color(0xFF00A368),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.5),
                                  blurRadius: 2,
                                )
                              ]),
                          child: Badge(
                            badgeColor: Colors.red,
                            padding: EdgeInsets.all(6.0),
                            badgeContent: Text(
                              "3",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(
                                CupertinoIcons.cart,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ))
                    ]),
              ),
              // Welcome Title and Search Widget in same container in column.
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "What do you want to Buy?",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    //Search widget
                    Container(
                      margin: EdgeInsets.all(15),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 250,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Search Here...",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          //Spacer(),
                          Icon(Icons.filter_list),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Products Widgets
              Container(
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                    ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CategoriesWidget(),
                    PopularItemsWidget(),
                    ItemsWidget(),
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
