import 'dart:ffi';

import 'package:flutter/material.dart';

class DessertCard extends StatelessWidget {
  const DessertCard({
    super.key,
    required this.imageName,
    required this.dessertTitle,
    required this.dessertDesc,
    required this.dessertPrice,
    required this.leftVal,
    required this.topVal,
  });

  final String imageName;
  final String dessertTitle;
  final String dessertDesc;
  final double dessertPrice;
  final double leftVal;
  final double topVal;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 215,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Image.asset(
              imageName,
              height: 150,
              width: 150,
            ),
          ),
          Positioned(
            top: topVal,
            left: leftVal,
            child: Column(
              children: [
                Text(
                  dessertTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  dessertDesc,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      "\$",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 177, 177, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      dessertPrice.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
