import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:convert';

class WorldTime{
  String location;    // location name for the UI
  String time;  // time in that location
  String flag ;  //url to an asset flag icon
  String pos;

  WorldTime({this.location, this.flag, this.pos});

  Future<void> getTime() async{
    try {
      Uri url = Uri.parse('https://worldtimeapi.org/api/timezone/$pos');
      Response response = await get(url);
      // print(response.body);
      Map data = jsonDecode(response.body);
      // print(data);
      String datetime = data['datetime'];
      String offsetHour = data['utc_offset'].substring(1, 3);
      String offsetMinutes = data['utc_offset'].substring(4, 6);
      // print(datetime);
      // print(offset);


      // create Datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(
          hours: int.parse(offsetHour), minutes: int.parse(offsetMinutes)));

      // set the time property;
      time = now.toString()
    }
  }
  catch(e){
    print("There is an error :$e");
    time = "Couldn't find!!";
  }
}
