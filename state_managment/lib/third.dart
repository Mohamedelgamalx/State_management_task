import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'checkbox.dart';

class Third extends StatelessWidget {
  const Third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.orangeAccent,
        automaticallyImplyLeading: true,
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Classic Sofa Chair', style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black)),
              const SizedBox(height: 40,),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/c/c6/Set_of_fourteen_side_chairs_MET_DP110780.jpg'),
              const SizedBox(height: 40,),
              const Text('Quantity', style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 20,),
              CircleAvatar(
                backgroundColor: Colors.white60,
                child: Consumer<myCheckBox>(builder: (context, myCheckBox, child) {
                  return Text('${myCheckBox.counter}', style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black));
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}