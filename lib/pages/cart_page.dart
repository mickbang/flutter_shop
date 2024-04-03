import 'package:flutter/material.dart';
import 'package:flutter_shop_cc/config/string.dart';
import '../config/index.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<StatefulWidget> createState() => CartState();
}

class CartState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(QString.cartTitle),
    );
  }
}
