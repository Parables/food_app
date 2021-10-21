import 'package:flutter/material.dart';
import 'package:food_app/app/modules/home/views/category_card_widget.dart';
import 'package:food_app/app/modules/home/views/food_card_widget.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF0DA),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(15),
          children: [
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(fontSize: 25),
              ),
              subtitle: Text('Explore food'),
              trailing: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network('https://i.pravatar.cc/150?img=11'),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return CategoryCardWidget();
                },
                separatorBuilder: (BuildContext context, separatorIndex) {
                  return SizedBox(width: 20);
                },
                itemCount: 10,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Noodles',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text('See all'),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 240,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int itemIndex) {
                  return FoodCardWidget();
                },
                separatorBuilder: (BuildContext context, separatorIndex) {
                  return SizedBox(width: 20);
                },
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
