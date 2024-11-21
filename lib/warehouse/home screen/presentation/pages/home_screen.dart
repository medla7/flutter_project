import 'package:auth/warehouse/custom_widgets/redAppBar.dart';
import 'package:auth/warehouse/home%20screen/presentation/pages/requestBudget_screen.dart';
import 'package:auth/warehouse/home%20screen/presentation/widgets/listView.dart';
import 'package:auth/warehouse/home%20screen/presentation/widgets/myPie.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:auth/warehouse/custom_widgets/ChartKey.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xffE1DADA),
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        //custom appBar
        child: RedAppBar(button: "", textt: "home"),
      ),
      body: Stack(children: [
        Positioned(
            top: 20,
            left: 21.5,
            child: Container(
                height: 250,
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
                child: Stack(children: [
                  Positioned(
                      top: 180,
                      left: 25,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RequestBudgetScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(38, 10, 38, 10),
                            child: Text(
                              "Request   budget",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "akshar",
                                fontSize: 25,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ))),
                  const Positioned(
                    top: 40,
                    left: 180,
                    child: ChartKey(
                        red: 222, text: "import", price: "10000000000"),
                  ),
                  const Positioned(
                      top: 90,
                      left: 180,
                      child: ChartKey(
                          red: 255, text: "export", price: "10000000000")),
                  const Positioned(
                    top: 15,
                    left: 15,
                    child: SizedBox(
                        height: 150,
                        width: 150,
                        child: myPie(valeur1:40,valeur2:30)),
                  ),
                  const Positioned(
                      top: 60, left: 50, child: Text("income\nimport - export"))
                ]))),
        const Positioned(
            top: 280,
            left: 20,
            child: Text(
              "latest\ninteraction",
              style: TextStyle(
                  color: Colors.red,
                  fontFamily: "akshar",
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            )),
        const Positioned(
            top: 350,
            left: 21.5,
            child: SizedBox(
              height: 250,
              width: 350,
              //color: Colors.amber,
              
              child: listView(),
            ))
      ]),
    ));
  }
}
