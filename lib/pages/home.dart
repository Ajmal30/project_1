import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data={};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);
    String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.blue[900];
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child:Padding(
        padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assests/$bgImage'),
              fit: BoxFit.cover,
            )
          ),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                Navigator.pushNamed(context, '/location');
              },
            icon: Icon(Icons.edit_location),
           label: Text('Edit Location'),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget> [
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Text(
                data['time'],
                style:  TextStyle(
                  fontSize: 66.0
                ),
              )

            ],
          ),
        ),
      )),
    );
  }
}
