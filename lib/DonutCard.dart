import 'package:flutter/material.dart';

class DonutCard extends StatelessWidget {
  const DonutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 350,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 223, 223, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 10,
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 20,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 20,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 30,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: 30,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Image.asset("assets/images/donuts.png"),
          const Positioned(
            top: 250,
            left: 25,
            child: Text(
              "Sweetness",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Positioned(
            top: 290,
            left: 25,
            child: Text(
              "Check Menu →",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
