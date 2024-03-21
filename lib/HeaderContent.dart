import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: Image.asset(
                      "assets/images/candle.png",
                      height: 50,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50, left: 10),
                    child: Text(
                      "Dezzert",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.83,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(right: 120, top: 30),
          child: Text(
            "Eat And Enjoy",
            style: TextStyle(color: Colors.white, fontSize: 30.8),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 25, top: 5),
          child: Text(
            "Quality Desserts 🍰",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.8,
            ),
          ),
        )
      ],
    );
  }
}
