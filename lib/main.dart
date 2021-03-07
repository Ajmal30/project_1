
import 'package:flutter/material.dart';
import 'package:project_1/pages/choose_location.dart';
import 'package:project_1/pages/home.dart';
import 'package:project_1/pages/loading.dart';

void main() => runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
        '/' : (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
    },
));
