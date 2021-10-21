import 'package:flutter/material.dart';

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
