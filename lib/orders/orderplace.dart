import 'package:flutter/material.dart';

class OrderPlace extends StatelessWidget {
  const OrderPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 317,
      width: 430,
      
     decoration: const BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      
     ),
     child: const Column(children: [
      
     ]),
    );
  }
}
