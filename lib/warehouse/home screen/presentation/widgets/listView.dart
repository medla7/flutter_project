import 'package:flutter/material.dart';  

class listView extends StatelessWidget {  


  // Constructor to accept the two values  
  const listView({  
    Key? key,  
    
  }) : super(key: key);  

  @override  
  Widget build(BuildContext context) {  
    return ListView.builder(
                itemCount: 5,
                itemBuilder: (_, index) => Container(
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(5),
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  child: Text("item $index"),
                ),
              );
  }  
}