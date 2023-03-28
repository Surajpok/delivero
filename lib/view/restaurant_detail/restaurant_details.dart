import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/imports.dart';

class RestaurantDetails extends StatefulWidget {
  final DocumentSnapshot<Map<String, dynamic>> documentSnapshot;
  const RestaurantDetails({super.key, required this.documentSnapshot});

  @override
  State<RestaurantDetails> createState() => _RestaurantDetailsState();
}

class _RestaurantDetailsState extends State<RestaurantDetails> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
