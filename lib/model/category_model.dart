import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String icon; //or Image in place of string
  final int color;
  Category({
    required this.id,
    required this.name,
    required this.icon,
    required this.color,
  });
  @override
  List<Object?> get props => [id, name, icon, color];
  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Pizza',
      icon: '🍕',
      color: 0xffF0CCC1,
    ),
    Category(
      id: 2,
      name: 'Burger',
      icon: '🍔',
      color: 0xffCCF0C1,
    ),
    Category(
      id: 3,
      name: 'Sausage',
      icon: '🌭',
      color: 0xffC1DAF0,
    ),
    Category(
      id: 4,
      name: 'Doughnut',
      icon: '🍩',
      color: 0xffF0E3C1,
    ),
    Category(
      id: 5,
      name: 'Taco',
      icon: '🌮',
      color: 0xffF0CCC1,
    ),
  ];
}
