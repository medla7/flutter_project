import 'package:auth/warehouse/custom_widgets/redAppBar.dart';
import 'package:auth/warehouse/custom_widgets/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});
  static const screenRoute = 'add-Transaction';
  
  @override
  State<AddTransactionScreen> createState() => AddtransactionScreen();
}

class AddtransactionScreen extends State<AddTransactionScreen> {
   String selectedValue = 'Option 1';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffE1DADA),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: RedAppBar(
            button: "assets/back.png",
            textt: "Add Transaction",
          ),
        ),
        body: Center(
          child: Container(
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
            child: Stack(
              children: [
                Positioned(
                  top: 30,
                  left: 10,
                  child: Container(
                    //color: Colors.blueAccent,
                    width: 330,
                    height: 390,
                    padding: const EdgeInsets.all(16), // Added padding
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("New Actions",style: TextStyle(fontFamily: "akshar",fontSize: 25,fontWeight: FontWeight.bold),)],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SegmentedButton<String>(
                              segments: const <ButtonSegment<String>>[
                                ButtonSegment(value: "export",label: Text("exp")),
                                ButtonSegment(value: "import",label: Text("imp"))
                              ],
                              selected: <String>{selectedValue},
                              onSelectionChanged: (Set<String> newSelection) {
                                setState(() {
                                  selectedValue = newSelection.first;
                                });
                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textField(
                              height: 50,
                              width: 290,
                              text: "name",
                              type: "text",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textField(
                              height: 50,
                              width: 290,
                              text: "reference ",
                              type: "text",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textField(
                              height: 50,
                              width: 140,
                              text: "unit price",
                              type: "number",
                            ),
                            textField(
                              height: 50,
                              width: 140,
                              text: "total price",
                              type: "number",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            textField(
                              height: 50,
                              width: 140,
                              text: "qte",
                              type: "number",
                            ),
                            textField(
                              height: 50,
                              width: 140,
                              text: "date",
                              type: "text",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 430,
                  right: 25,
                  child: SizedBox(
                    height: 110,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            // Handle cancel button press
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.red, width: 2),
                          ),
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              fontFamily: "akshar",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Handle submit button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                          ),
                          child: const Text(
                            "Submit",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "akshar",
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
