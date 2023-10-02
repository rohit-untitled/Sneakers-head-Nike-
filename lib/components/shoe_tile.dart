import 'package:flutter/material.dart';

import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(20),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        // shoe image
        ClipRRect(
          // borderRadius: BorderRadius.circular(20),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Image.asset(shoe.imagePath),
        ),

        // description
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            shoe.description,
            style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // price

        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //shoe name
                  Text(
                    shoe.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  const SizedBox(height: 3),
                  // shoe price
                  Text(
                    '\$' + shoe.price,
                    style: TextStyle(color: Colors.grey.shade800),
                  ),
                ],
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 22,
                    )),
              ),
            ],
          ),
        )

        // buttom to add to cart
      ]),
    );
  }
}
