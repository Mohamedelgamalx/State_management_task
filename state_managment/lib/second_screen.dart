import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/checkbox.dart';
import 'package:state_managment/third.dart';

class Second extends StatelessWidget {
  final String name;
  final String email;
  final String mobile;

  const Second({required this.name,required this.email, required this.mobile, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.orangeAccent,
        elevation: 0,
        automaticallyImplyLeading: true,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20,top: 9),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Icon(Icons.shopping_cart,size: 40,),
                CircleAvatar(
                  maxRadius: 9,
                  backgroundColor: Colors.red,
                  child: Consumer<myCheckBox>(builder: (context,myCheckBox,child) {
                    return Text('${myCheckBox.counter}');
                  }),
                ),
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.orangeAccent,
      body: Center(
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              Image.network('https://upload.wikimedia.org/wikipedia/commons/c/c6/Set_of_fourteen_side_chairs_MET_DP110780.jpg'),
              const SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(20),
                width: 360,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Welcome to our application', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    const SizedBox(height: 30,),
                    Text('Hallo to you $name', style: const TextStyle(
                        fontSize: 15,
                    ),),
                    const SizedBox(height: 10,),
                    Text('Your Email is $email', style: const TextStyle(
                        fontSize: 15,
                    ),),
                    const SizedBox(height: 10,),
                    Text('Mobile is $mobile', style: const TextStyle(
                        fontSize: 15,
                    ),),

                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text('Quantity', style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              ),
              const SizedBox(height: 10,),
              Container(
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Consumer<myCheckBox>(builder: (context, myCheckBox, child) {
                      return IconButton(icon: const Icon(Icons.remove), onPressed: () {
                        myCheckBox.dec();
                      },);
                    }),
                    Consumer<myCheckBox>(builder: (context, myCheckBox, child) {
                      return Text('${myCheckBox.counter}');}
                    ),
                    Consumer<myCheckBox>(builder: (context, myCheckBox, child) {
                      return IconButton(icon: const Icon(Icons.add), onPressed: () {
                        myCheckBox.inc();
                      },);
                    }),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Third()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart),
                      SizedBox(width: 10,),
                      Text('Add to cart', style: TextStyle(
                          fontSize: 20,
                          color: Colors.white),
                      ),
                    ],
                  ) 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}