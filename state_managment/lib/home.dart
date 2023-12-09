import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_managment/checkbox.dart';
import 'package:state_managment/second_screen.dart';

class Home extends StatelessWidget {
  Home({super.key});

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: SizedBox(
          width: 360,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign Up', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                decoration: TextDecoration.underline
              ),
              ),
              const SizedBox(height: 40,),
              TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Full Name',
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0,
                      color: Colors.grey
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                          width: 0,
                          color: Colors.grey
                      )
                ),
              )
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: email,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0,
                            color: Colors.grey
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0,
                            color: Colors.grey
                        )
                    ),
                  )
              ),
              const SizedBox(height: 20,),
              TextField(
                  controller: mobile,
                  decoration: InputDecoration(
                    hintText: 'Mobile Number',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0,
                            color: Colors.grey
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0,
                            color: Colors.grey
                        )
                    ),
                  )
              ),
              const SizedBox(height: 20,),
              TextField(
                  controller: password,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0,
                            color: Colors.grey
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0,
                            color: Colors.grey
                        )
                    ),
                  )
              ),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer<myCheckBox>(builder: (context, myCheckBox,child) {
                    return Checkbox(value: myCheckBox.value, onChanged: (bool? value) { myCheckBox.checkValue(); },);
                  }),
                  RichText(
                    text: const TextSpan(
                      text: 'I Agree with the ',
                        style: TextStyle(color: Colors.black),
                        children: [
                        TextSpan(
                          text: 'Terms & Services',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, decoration: TextDecoration.underline),
                        ),
                          TextSpan(
                        text: ' of Rawmart',
                        style: TextStyle(color: Colors.black),
                    )
                        ]
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Second(name: name.text, email: email.text, mobile: mobile.text,

                    )));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  child: const Text('Sign Up', style: TextStyle(
                      fontSize: 20,
                      color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}