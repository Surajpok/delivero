
import 'package:equatable/equatable.dart';

class PopularProduct extends Equatable {
  final int id;
  final String title;
  final double star;

  final double price;
  final String image;
  final String desc;

  PopularProduct({
    required this.id,
    required this.title,
    required this.star,
    required this.price,
    required this.image,
    required this.desc,
  });
  @override
  List<Object?> get props => [id, title, star, price, image, desc];

  static List<PopularProduct> products = [
    PopularProduct(
      id: 1,
      title: 'Foam Padded Chair4',
      desc:
          'Our simple, classic cheeseburger begins with a 100% pure beef burger seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped',
      star: 4,
      price: 120.00,
      image: 'assets/images/burger.png',
    ),
    PopularProduct(
      id: 2,
      title: 'Foam Padded Chair1',
      desc:
          'Our simple, classic cheeseburger begins with a 100% pure beef burger seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped',
      star: 4.5,
      price: 120.00,
      image: 'assets/images/burger.png',
    ),
    PopularProduct(
      id: 3,
      title: 'Foam Padded Chair2',
      desc:
          'Our simple, classic cheeseburger begins with a 100% pure beef burger seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped',
      star: 5,
      price: 120.00,
      image: 'assets/images/burger.png',
    ),
    PopularProduct(
      id: 4,
      title: 'Foam Padded Chair3',
      desc:
          'Our simple, classic cheeseburger begins with a 100% pure beef burger seasoned with just a pinch of salt and pepper. The McDonald’s Cheeseburger is topped',
      star: 3.5,
      price: 120.00,
      image: 'assets/images/burger.png',
    ),
  ];
}
