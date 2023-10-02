import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoe for the cart
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan 1 Mid SE',
      price: '399',
      imagePath: 'lib/images/10.jpg',
      description: 'Get into some summery fun in your new fave AJ1s.',
      // description: 'a',
    ),
    Shoe(
      name: 'AJKO 1',
      price: '499',
      imagePath: 'lib/images/6.jpg',
      description:
          'New colours and fresh textures give you an updated AJ1 without losing that forever great look and familiar feel.',
      // description: 'a',
    ),
    Shoe(
      name: 'Air Jordan 1 High G',
      price: '299',
      imagePath: 'lib/images/7.jpg',
      description:
          'Rock some retro colours and look good doin it. This pair of kicks has nubuck leather and suede in the upper for a plush look and feel.',
      // description: 'a',
    ),
    Shoe(
      name: 'Nike Zoom Freak',
      price: '499',
      imagePath: 'lib/images/8.webp',
      description: 'Turn heads from dawn til dusk in the Air Jordan 1.',
      // description: 'a',
    ),
    Shoe(
      name: 'Nike Zoom Freak',
      price: '800',
      imagePath: 'lib/images/9.jpg',
      description:
          'Partnering with Eastside Golf, we are bringing a modern look to the AJ1.',
      // description: 'a',
    ),
    Shoe(
      name: 'Nike Zoom Freak',
      price: '180',
      imagePath: 'lib/images/1.webp',
      description: 'The forward-thinking design of his latest shoe signatures',
      // description: 'a',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '300',
      imagePath: 'lib/images/2.webp',
      description:
          'Tailoring the timeless design of MJs first signature shoe for the golf course',
      // description: 'a',
    ),
    Shoe(
      name: 'Air Jordan 1 Zoom CMFT 2',
      price: '199',
      imagePath: 'lib/images/3.jpg',
      description: 'The forward-thinking design of his latest shoe signatures',
      // description: 'a',
    ),
    Shoe(
      name: 'Air Jordan Retro',
      price: '999',
      imagePath: 'lib/images/4.jpg',
      description:
          'Crisp leather gives a premium feel while metallic accents add some flash to your swing. ',
      // description: 'a',
    ),
    Shoe(
      name: 'Air Jordan Low OG',
      price: '799',
      imagePath: 'lib/images/5.jpg',
      description: 'This is the next generation of golf. You ready?',
      // description: 'a',
    ),
  ];
  //list of item in the user cart

  List<Shoe> userCart = [];
  //list for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
