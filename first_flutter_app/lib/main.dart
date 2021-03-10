import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {  //stateless widget are static
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0, //for removing shadow below titlebar
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{
            setState(()=>{
              ninjaLevel+=1,
            }),
          },
          child:Icon(Icons.add) ,
          backgroundColor: Colors.grey[800],
        )
      ,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //1. Avatar
              Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://scontent.fdel33-1.fna.fbcdn.net/v/t1.0-9/86265679_100336241563219_6121702584471257088_o.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=7JexU8qeBdMAX84Dx9r&_nc_ht=scontent.fdel33-1.fna&oh=399b3d703036223eb2750f4946cbcad3&oe=606CE951'),
                  radius: 40.0,
                ),
              )
            , 
              Divider(
                height:60.0,
                color: Colors.grey[800],
              )
            ,
            //2. Name
            Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text('Santosh',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 30.0),
            Text(
              'Current Ninja Level',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text('$ninjaLevel',
                style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                )),

            SizedBox(height: 30.0), // gives space of 30px
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                
                  SizedBox(width:10.0)
                ,
                Text(
                  'santosh.sk11112222@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  )
                )
              ],
            )

          ],
        ),
      ),
    );
  }
}

