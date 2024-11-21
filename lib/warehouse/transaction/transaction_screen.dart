import 'package:auth/warehouse/transaction/addTransaction_Screen.dart';
import 'package:auth/warehouse/custom_widgets/redAppBar.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color(0xffE1DADA),
            appBar: const PreferredSize(
              preferredSize: Size.fromHeight(100.0),
              child: RedAppBar(button: "", textt: "transaction"),
            ),
            body: Stack(children: [
              const Positioned(
                  top: 22,
                  left: 230,
                  child: Text(
                    "total :   10000",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  )),
              Positioned(
                top: 10,
                left: 80,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddTransactionScreen()),
                    );
                  },
                  icon: Image.asset("assets/addicon.png"),
                ),
              ),
              Positioned(
                  top: 10,
                  left: 40,
                  child: IconButton(
                      onPressed: () {}, icon: const Icon(Icons.edit))),
              Positioned(
                  top: 70,
                  left: 21.5,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    height: 500,
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
