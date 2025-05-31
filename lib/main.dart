import 'package:flutter/material.dart';
import 'package:my_project/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home()
    ),
  );

}
class SandBox extends StatelessWidget {
  const SandBox({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text( 'sandbox',
          style: TextStyle(
            color: Colors.white, // Move color here
          ),
        ),
        backgroundColor: Colors.black,
        ),
        body: Row(
        crossAxisAlignment : CrossAxisAlignment.stretch,
          mainAxisAlignment : MainAxisAlignment.center,
          children: [

          Container (
            height : 100 ,
            color : const Color.fromARGB(255, 116, 63, 59) ,
            child : const Text ('one'),
          ),
          Container(
            height : 200 ,
            color : const Color.fromARGB(255, 36, 55, 71) ,
            child : const Text ('two'),
          ),
          Container (
            height : 300 ,
            color : const Color.fromARGB(255, 139, 112, 175) ,
            child : const Text ('three'),

          ),

          Container (
            height : 400 ,
            color : const Color.fromARGB(255, 225, 85, 148) ,
            child : const Text ('three'),

          ) ,
             Container (
            height : 500 ,
            color : const Color.fromARGB(255, 181, 81, 181) ,
            child : const Text ('three'),

          ),
        ]
      )
    );
  }
}
