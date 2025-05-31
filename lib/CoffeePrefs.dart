import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:my_project/styled_body_text.dart';
import 'package:my_project/styled_button.dart';
class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 1 ;
  int suger = 1 ;
void increasedStrength() {
  setState(() {
    strength = strength < 5 ? strength + 1 : 1; 
  });
}

void increasedSuger() {
  setState(() {
    suger = suger < 5 ? suger + 1 : 0; 
  });
}

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [
        Row( 
         children : [
        
           const StyledBodyText('strength')
          ,
            SizedBox(width: 8,),
          for (int i = 0 ; i <strength ;i ++)
             Image.asset('assets/img/picture1.png',
              height: 20,
              width: 20,
          ),

          SizedBox(width: 10,),
          const Expanded(child: SizedBox()),
         StyledButton(
          onPressed: increasedStrength,
          child: const Text("+") ,
         ),
         ]
        ),
        Row(
          children: [
            const StyledBodyText("suger") ,
            SizedBox(width : 6) ,

                   if (suger == 0)
                   const StyledBodyText("no suger"),

            SizedBox(width: 8,),
            
            for (int i = 0 ; i < suger ; i++)
               Image.asset('assets/img/picture2.png',
               height : 20 ,
               width : 20 ,),

            SizedBox(width: 26,),
            const Expanded(child: SizedBox()),
            StyledButton(
              onPressed: increasedSuger,
              child:Text("+"),
            )
          ],
        ) ,
      
       ],
        
  );
      
    


     
    
}
}
