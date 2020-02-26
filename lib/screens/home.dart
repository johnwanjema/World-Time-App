import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: Icon(Icons.edit_location),
                label: Text('Edit Loaction')),
             SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                 Text(data['loaction'],
                 style: TextStyle(
                   letterSpacing: 2.0,
                   fontSize: 28.0
                 ),),
              ],
            ),
            SizedBox(height: 20.0 ),
             Text(
               data['time'],
               style: TextStyle(
                 fontSize: 60.0
               ),
             )
          ],
        )),
      ),
    );
  }
}
