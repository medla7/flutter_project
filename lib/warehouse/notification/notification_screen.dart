import 'package:auth/warehouse/custom_widgets/redAppBar.dart';

import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffE1DADA),
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: RedAppBar(button: "", textt: "notification"),
            ),
            body: Stack(children: [
              Positioned(
                  top: 20,
                  left: 21.5,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 550,
                    width: 350,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(186, 113, 113, 113),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (_, index) => Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                        ),
                        child: Text("item $index"),
                      ),
                    ),
                  ))
            ])));
  }
}
