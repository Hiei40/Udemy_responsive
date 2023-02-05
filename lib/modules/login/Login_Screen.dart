// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:untitled1/shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
var Formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
             key: Formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
DefaultTextForm(controller: emailController,
    type: TextInputType.emailAddress,
    validate:(String x){
  if(
    x!.isEmpty
  ){
    print("ssssss");

  }

  else null;
},
    Label: 'email adress',
    prefix: Icons.email)
                  // TextFormField(
                  //   controller: emailController,
                  //   keyboardType: TextInputType.emailAddress,
                  //   onFieldSubmitted: (String value) {
                  //     print(value);
                  //   },
                  //   onChanged: (String value) {
                  //     print(value);
                  //   },
                  //   validator: (String? value){
                  //     if(value!.isEmpty){
                  //       return "E-Mail can\'t be empty";
                  //
                  //
                  //     }
                  //     return null;
                  //
                  //   },
                  //   decoration: InputDecoration(
                  //     labelText: 'Email Address',
                  //     prefixIcon: Icon(
                  //       Icons.email,
                  //     ),
                  //     border: OutlineInputBorder(),
                  //   ),
                  // ),
                  SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (String value) {
                      print(value);
                    },
                    onChanged: (String value) {
                      print(value);
                    },

                    validator: (String? value){
                      if(value!.isEmpty){
                        return "Password can\'t be empty";


                      }
                      return null;

                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  DefaultButton(
                    width: double.infinity,
                    background: Colors.blue,
                    text:'Login',
                    function: (){
                  if(Formkey.currentState!.validate())
                    {

                      print(passwordController.text);
                      print(emailController.text);


                    }
                       },

                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  DefaultButton(

                      background: Colors.blue,
                      function:(){
                        print('text');


                      }
                      ,
                      text:'Register',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?',),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register Now',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}