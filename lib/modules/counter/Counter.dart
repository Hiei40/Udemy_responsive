import 'package:flutter/material.dart';

class Count extends StatefulWidget {

  @override
  State<Count> createState() {
    return _CountState();
  }
}
void initState(){
  
initState();

}
class _CountState extends State<Count> {
  int Counter=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar:AppBar(
title: Text('Counter'),
),
      body:
       Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              TextButton(
child: Text('-',
            style: TextStyle(
            fontWeight:FontWeight.bold,
            fontSize: 70.0,


          ),),
                onPressed:(){
setState(() {

  Counter--;
  print(Counter);

});

                } ,
              ),

              Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                child: Text('$Counter',
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 70.0,
                  ),
                ),
              ),
            TextButton(
            child:
                Text('+',
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 70.0,


                  ),
                ),
              onPressed: (){
setState(() {
  Counter++;
  print( Counter);

});


              },

            ),

            ],



          ),
       ),



    );
  }
}
