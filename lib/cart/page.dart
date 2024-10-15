import 'package:flutter/material.dart';
import 'package:valley_app/preferences/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Text(
          'Cart Page'
        ),
      ),
    );
  }
}