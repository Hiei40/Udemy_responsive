import 'package:flutter/material.dart';

 class Bmiresult extends StatelessWidget {
  final bool isMale;
  final double result;
  final int age;

  const Bmiresult({super.key, required this.isMale, required this.result, required this.age});




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(10, 15, 30, 1.0),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(10, 15, 30, 1.0),
      leading: IconButton(
        onPressed: (){
            Navigator.pop(context);
         },
         icon: Icon(
           Icons.arrow_back_ios,
         ),
      ),
        title:const Text(
          "BMI RESULT",
        ),
      ),
      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Gender: ${isMale? 'Male':'Female'}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              color: Colors.white,
              ),
            ),
            Text(
              "Result: ${result.round()}",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "Age: $age",
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),



    );
  }
}
