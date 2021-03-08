import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home:Home(),
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
        body: Center(
          child: Image.network('https://images.unsplash.com/photo-1562911791-c7a97b729ec5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c3BvcnRzJTIwY2FyfGVufDB8fDB8&ixlib=rb-1.2.1&w=1000&q=80'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Text('click '),
          backgroundColor: Colors.red[600],
        ),
      );
  }
}
