import 'package:flutter/material.dart';


class MassngerList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.white,
        elevation: 1.0,
        titleSpacing: 20.0,
        title: Row(

          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage('https://pps.whatsapp.net/v/t61.24694-24/319928361_1549576625546412_1551878482848298616_n.jpg?ccb=11-4&oh=01_AdQiL60wtOk2etKXsMrGf7GBPUuFx8g8qWIUodCCPZyPGg&oe=63C377BD'),
            ),
            SizedBox(
              width: 20.0,


            ),

            Text('Chats',
              style:TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon:CircleAvatar(
                  backgroundColor:Colors.blue ,
                  radius: 20.0,
                  child: Icon(
                      Icons.camera_alt),
                ),
                onPressed:()
                {
                  print('fuck you Anisha');
                },
              ),
              IconButton(
                icon:CircleAvatar(
                  backgroundColor:Colors.blue ,
                  radius: 20.0,
                  child: Icon(
                      Icons.edit),
                ),
                onPressed:()
                {
                  print('fuck you Anisha');
                },
              ),
            ],
          ),
        ],
      ) ,
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child:   SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(

                decoration: BoxDecoration(

                  borderRadius:BorderRadius.circular(50.0),

                  color: Colors.grey[300],),
                padding:EdgeInsets.all(10.0) ,

                child: Row(
                  children: [
                    Icon(Icons.search),

                    SizedBox(
                      width: 10.0,
                    ),
                    Text('search'),
                  ],
                ),
              ),
              SizedBox(height: 10.0
                ,
              ),
              Container(

              height: 100.0,
                child: ListView.separated(
                  shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder:(context,index)=>SetStory(),
                separatorBuilder:(context,index)=>SizedBox(
                width: 15.0,
                ) ,
                itemCount: 20,
                ),
                ),
            SizedBox(height: 10.0
              ,
            ),

              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              itemBuilder:(context,index)=>SetChat(),
    separatorBuilder:(context,index)=>SizedBox(
      height: 10.0,
    ),
    itemCount:30
    ),
   ],
          ),
        ),
      ),

    ) ;
  }
}
Widget SetStory()=>Row(

  children: [
    Container(
      width: 60.0,
      child: Column(
        children:
        [
          Stack(
            alignment: Alignment.bottomRight,
            children: [

              CircleAvatar(
                radius:30.0,
                backgroundImage: NetworkImage('https://pps.whatsapp.net/v/t61.24694-24/319928361_1549576625546412_1551878482848298616_n.jpg?ccb=11-4&oh=01_AdQiL60wtOk2etKXsMrGf7GBPUuFx8g8qWIUodCCPZyPGg&oe=63C377BD'),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom:3.0,
                  end :3.0,
                ),
                child: CircleAvatar(
                  radius: 5.0,
                  backgroundColor:Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Text('Mohamed Khaled Mahmoud Abdelrhiem',
            maxLines:1,
            overflow: TextOverflow.ellipsis,
          ),

        ],
      ),
    ),
  ],
);
//Set Chat
Widget SetChat()=>Row(



  children: [



    Stack(



      alignment: Alignment.bottomRight,



      children: [







        CircleAvatar(



          radius:30.0,



          backgroundImage: NetworkImage('https://pps.whatsapp.net/v/t61.24694-24/319928361_1549576625546412_1551878482848298616_n.jpg?ccb=11-4&oh=01_AdQiL60wtOk2etKXsMrGf7GBPUuFx8g8qWIUodCCPZyPGg&oe=63C377BD'),



        ),



        Padding(



          padding: const EdgeInsetsDirectional.only(



            bottom:3.0,



            end :3.0,



          ),



          child: Padding(



            padding: const EdgeInsetsDirectional.only(



              top: 5.0,



              bottom: 5.0,







            ),



            child: CircleAvatar(



              radius: 5.0,



              backgroundColor:Colors.green,



            ),



          ),



        ),







      ],



    ),



    SizedBox(



      width: 20.0,



    ),



    Expanded(



      child: Column(



        crossAxisAlignment: CrossAxisAlignment.start,



        children: [



          Text('Mohamed Khaled Mohamed Khaled Mohamed Khaled Mohamed Khaled ',



            maxLines: 1,



            overflow:TextOverflow.ellipsis,



            style:TextStyle(



              fontSize:16.0,



              fontWeight: FontWeight.bold,







            ),



          ),



          Row(



            children: [



              Expanded(



                child: Text('Mohamed Khaled Mohamed Khaled Mohamed Khaled Mohamed Khaled ',







                  maxLines: 2,



                  overflow:TextOverflow.ellipsis,



                ),



              ),



              Padding(



                padding: const EdgeInsets.symmetric(



                  horizontal: 20.0,







                ),



                child: CircleAvatar(



                  radius: 5.0,



                  backgroundColor:Colors.blue,



                ),



              ),



              Text('02:00Pm'),



            ],



          )







        ],



      ),



    ),



  ],



);

