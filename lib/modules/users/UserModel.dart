import 'package:flutter/material.dart';

import '../../models/user/user_model.dart';






  class List_View extends StatelessWidget {
List<ModelUser>users=[
  ModelUser(id: 1,
      phone:'01113790956',
      name:'Mohamed Khaled',),
  ModelUser(id: 2,
    phone: '01115123678',
    name: 'Shady Mohamed',
  ),
  ModelUser(id: 3,
    phone: '01115123673',
    name: 'Khaled Mahmoud',
  ),
  ModelUser(id: 4,
    phone:'01113790956',
    name:'Mohamed Khaled',),
  ModelUser(id: 5,
    phone: '01115123678',
    name: 'Shady Mohamed',
  ),
  ModelUser(id: 6,
    phone: '01115123673',
    name: 'Khaled Mahmoud',
  ),
  ModelUser(id: 1,
    phone:'01113790956',
    name:'Mohamed Khaled',),
  ModelUser(id: 2,
    phone: '01115123678',
    name: 'Shady Mohamed',
  ),
  ModelUser(id: 3,
    phone: '01115123673',
    name: 'Khaled Mahmoud',
  ),
  ModelUser(id: 4,
    phone:'01113790956',
    name:'Mohamed Khaled',),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('users'
      ,style:TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
 ),
body:ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]),
    separatorBuilder:(context,index) =>Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 20.0,

      ),
      child: Container(
        width: double.infinity,
        height: 1.0,
        color: Colors.grey[300],
      ),
    ),
    itemCount:users.length,),

    );
  }
}
Widget buildUserItem(ModelUser users)=>Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Row(

    children: [

      CircleAvatar(
        radius: 20.0,
        child:Text('${users.id}'),
      ),
      SizedBox(
        width: 20.0,
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${users.name} ',
            style:TextStyle(
              color: Colors.black,
              fontSize:20.0,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text('${users.phone}',


          ),
        ],


      )
    ],



  ),
);