import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
      child: Container(
        width: 200.0,
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

          //coffee image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              coffeeImagePath,
              fit: BoxFit.cover,
              height: 200,
              width: 200,),
            ),

            //coffee name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffeeName, style: TextStyle(fontSize: 20),),
                  Text('With Almond Milk', style: TextStyle(color: Colors.grey[700]),),
                ],
              ),
            ),

            //price
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('\$' + coffeePrice),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(Icons.add)),
              ],),
            )
          ],
        ),      
      ),
    );
  }
}