import 'package:auth/warehouse/custom_widgets/redAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RequestBudgetScreen extends StatelessWidget {
  const RequestBudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffE1DADA),
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child:
              //############################### the appbar widget ########################################
                  RedAppBar(button: "assets/back.png", textt: "request budget"),
            ),
            body: Center(
                child: Container(
              height: 450,
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
              child: Form(
                child: Stack(children: [
                  Positioned(
                    top: 120,
                    right: 60,
                    child: SizedBox(
                      //color: Colors.orange,
                      width: 230,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "amount",
                          hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 255, 163, 34),
                            fontFamily: "akshar",
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(
                              color: Colors.red,
                              width: 3.0,
                            ),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      top: 250,
                      right: 25,
                      child: SizedBox(
                        height: 110,
                        width: 300,

                        //color: Colors.orange,
                        //Text("click on amount to choose you request budget"),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.red, width: 2),
                                ),
                                child: const Text(
                                  "cancel",
                                  style: TextStyle(
                                      fontFamily: "akshar",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                ),
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                  child: const Text(
                                    "submit",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "akshar",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ]),
                      ))
                ]),
              ),
            ))));
  }
}
