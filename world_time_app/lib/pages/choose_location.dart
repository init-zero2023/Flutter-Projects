import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // void getData() async{
  //
  //   //simulate network request for a username
  //   String username = await Future.delayed(Duration(seconds: 3),(){  // this will take 3 second to print
  //     return "Yoshi";
  //   });
  //   print("statement");
  //
  //   String bio = await Future.delayed(Duration(seconds :2), ()
  //   {
  //     return 'Musician';
  //   });
  //
  //   print('$username - $bio');
  // }
  //
  // // @override
  // // void initState() {     // this will load up only first timer
  // //   // TODO: implement initState
  // //   super.initState();
  // //   // print("initState function run");
  // //   getData();
  // //   print("Hey There");
  // // }
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }


  @override
  Widget build(BuildContext context) {
    // print("build function run");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: RaisedButton(
        onPressed: ()=>{
          setState(()=>{    // this makes build function to rerun
            // counter+=1,
          }),
        },
        // child: Text('counter is $counter'),
      ),
    );
  }
}
