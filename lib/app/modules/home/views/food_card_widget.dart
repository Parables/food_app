import 'package:flutter/material.dart';

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
