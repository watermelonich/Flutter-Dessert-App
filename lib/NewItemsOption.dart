import 'package:flutter/material.dart';

class NewItemsOption extends StatelessWidget {
  const NewItemsOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50,
        top: 20,
      ),
      child: Row(
        children: [
          const Text(
            "New",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 34,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "items",
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ),
          ),
          const SizedBox(
            width: 100,
          ),
          SizedBox(
            height: 40,
            child: ElevatedButton(
              onPressed: (() => print("pressed >")),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text(
                ">",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
