import 'package:flutter/material.dart';

class ChartKey extends StatelessWidget {
  final int red;
  final String text;
  final String price;

  const ChartKey({
    super.key,
    required this.red,
    required this.text,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 30,
      width: 150,
      //color: const Color.fromARGB(255, 54, 244, 235),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, red, 32, 32),
                borderRadius: const BorderRadius.all(Radius.circular(5))),
          ),
          Text(
            text ,
            style: const TextStyle(
              fontFamily: "akshar",
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            "\$ $price",
            style: const TextStyle(
              fontFamily: "akshar",
              fontWeight: FontWeight.w400
            ),
          )
        ],
      ),
    );
  }
}
