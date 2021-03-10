import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Updated App',
        ),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      // body: Center(
      //   child: RaisedButton.icon(  flatbuttons are also there
      //     onPressed: ()=>{},
      //     icon: Icon(
      //       Icons.mail
      //     ),
      //     label:Text('mail me') ,
      //     color: Colors.amber,
      //   )
      //   child: IconButton(
      //     onPressed: ()=>{
      //       print('You clicked me')
      //     },
      //     icon: Icon(Icons.alternate_email),
      //     color: Colors.amber,
      //   ),
      // ),
      // body: Container(
      //   // padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      //   // padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
      //   padding:EdgeInsets.all(20.0),
      //   margin: EdgeInsets.all(20.0),
      //   color: Colors.grey[400],
      //   child: Text('Hello'),   //# if we did not include child property in a container then I will take the whole screen
      // body: Padding(
      //   padding: EdgeInsets.all(90.0),
      //   child: Text('Hello'),
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   mainAxisAlignment:  MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children:  <Widget>[
      //     Text('Hello World!!!'),
      //     FlatButton(
      //       onPressed: ()=>{},
      //       color: Colors.amber,
      //       child: Text('Click me'),
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30.0),
      //       child: Text('inside container'),
      //     ),
      //   ],
      //   ),

      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: <Widget>[
      //     Row(
      //       children: <Widget>[
      //         Text('Hello'),
      //         Text('World!!')
      //       ],
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(20.0),
      //       color: Colors.cyan,
      //       child: Text('One'),
      //     ), 
      //     Container(
      //       padding: EdgeInsets.all(30.0),
      //       color: Colors.pinkAccent,
      //       child: Text('Two'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.amber,
      //       child: Text('Three'),
      //     )
      //   ],
      // ),

      body: Row(
        children: <Widget>[
          Expanded(
              flex: 19,
              child: Image.network(
                  'https://imgd.aeplcdn.com/1280x720/cw/ec/23766/Ford-Mustang-Exterior-126883.jpg?wm=0&q=85')),
          Expanded(
            flex: 15, // take 2 out of total flex1+flex2+flex3
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 18,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amber,
              child: Text('3'),
            ),
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: Text('click '),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
