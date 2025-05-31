import 'package:flutter/material.dart';
import 'package:my_project/CoffeePrefs.dart';
import 'package:my_project/styled_body_text.dart';


class  Home extends StatelessWidget {
  const  Home({super.key});


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my coffee' , style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.white, // Move color here
           
        )),

        backgroundColor: const Color.fromARGB(255, 125, 87, 60),
         centerTitle:true,
      ) ,
      body : Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment : MainAxisAlignment.start ,
        
          children: [
              Container (
              width:100,
              color : Color.fromARGB(255, 175, 149, 130),
              padding: const EdgeInsets.all(10),
              child: const StyledBodyText("how do you like your coffee?"),
              
              
              ),
              Container (
          width : 300 ,
          color : const Color.fromARGB(333,223,412,324),
          padding : const EdgeInsets.all(10),
          child : const CoffeePrefs() ,
              ),
              Expanded
              (child: Image.asset('assets/img/picture2.png',
                fit: BoxFit.fitWidth,
                alignment: Alignment.center
                )),
              
          ],
        ),
     );
  }
}
