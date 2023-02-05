

import 'package:flutter/material.dart';

Widget DefaultButton ({
   double width =double.infinity,
 Color background=Colors.blue,
  bool isUpperCase = true,
  required void Function() function,
  required String text,
})=> Container(
width:width ,
color:background ,
child: MaterialButton(
    onPressed: function,


child: Text(
 isUpperCase? text.toUpperCase():text,
style: TextStyle(
color: Colors.white,
),
),
),
);





Widget DefaultTextForm({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit(String x)?,
 Function? onChange(String y)?,
required Function() validate,
required String Label,
required IconData prefix,




})=>TextFormField(
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,
  validator:validate(),
  decoration: InputDecoration(
    labelText: Label,
    prefixIcon: prefix ,
    border: OutlineInputBorder(),
  ),
);
