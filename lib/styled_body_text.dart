import 'package:flutter/widgets.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text ,{super.key});
  

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text , style:TextStyle(
          color:Color.fromARGB(218, 50, 39, 30),
          fontWeight: FontWeight.bold,
          fontSize: 20,
    ));
  }
}