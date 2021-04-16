import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SafeArea (
        child:Scaffold(

        body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children:[
           contacts(
             name: 'amira ali',
             phone: '123456',
             text: 'ahmed@gmail.com',
             add: 'BOSS    ',
             url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTd5KqiP_7htmin1ZO_xz4J9ZGEFums_SeuuuqQbqce4n4KAND-etj0j4opK_2TSPhdNIQ&usqp=CAU',
           ),

           contacts(
             name: 'mohamed ali',
             phone: '789123',
             text: 'mohamed@gmail.com',
             add: 'bosss   ',
             url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXTxBNCdcVAGIvsptgQk6yytZMeunmbaqEeZsa6q8qaherDzKMfZSuL1sYkAVZfYoam9E&usqp=CAU',
           ),
           contacts(
             name: 'mahmoud ali',
             phone: '147852',
             text: 'mahmoud@gmail.com',
             add: 'BosS   ',
             url: 'https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg',
           ),
         ]
        ),

      ),
      ),

      )
    );
  }
}

class contacts extends StatelessWidget {
  String name,text,phone,add,url;
  contacts({this.name,this.phone,this.text,this.add,this.url});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 170.0,
      margin: EdgeInsets.only(top:30.0),
      decoration: BoxDecoration(
        color: Colors.teal,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                this.url              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                      ),
                ),
                Row(
                  children:[
                Icon(Icons.mail,size: 15.0,color:Colors.grey,),
                Text(this.text),
                  ],

                ),
                Row(
                  children:[
                    Icon(Icons.phone,size: 20.0,color:Colors.grey,),
                    Text(this.phone),
                  ],

                ),
                Row(
                  children:[
                    Icon(Icons.favorite,size: 20.0,color:Colors.red,),
                    Icon(Icons.favorite,size: 20.0,color:Colors.red,),
                    Icon(Icons.favorite,size: 20.0,color:Colors.red,),
                    Text('      '),
                    Icon(Icons.my_library_add_rounded,size: 20.0,color:Colors.white,),
                    Text(' '),
                    Text(this.add),
                    Icon(Icons.delete,size:25.0,color: Colors.white,),


                  ],

                ),

              ],
            ),
          )
        ],
      )
    );
  }
}

