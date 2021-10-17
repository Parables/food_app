import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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

class FoodCardWidget extends StatelessWidget {
  const FoodCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  'Peri-Peri Chicken',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('4.6'),
                        Icon(
                          Icons.star,
                          size: 14,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Text('(250k Reviews)'),
                  ],
                ),
                SizedBox(height: 6.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$20.00',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 150,
            height: 150,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xFFFEF7EA),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://res.cloudinary.com/icodegh/image/upload/v1634329745/food_app/b_pork.jpg',
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoryCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              'Noodles',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: 80,
            height: 80,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Color(0xFFFEF7EA),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://res.cloudinary.com/icodegh/image/upload/v1634329745/food_app/b_pork.jpg',
              ),
            ),
          )
        ],
      ),
    );
  }
}
