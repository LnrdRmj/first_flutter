import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Mamma mia'),
          backgroundColor: Colors.green[300],
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Hello there',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2.0,
                    fontFamily: 'BebasNeue'
                ),
              ),
              const Icon(
                Icons.airport_shuttle,
                size: 100,
              ),
              ElevatedButton (
                onPressed: () { print('qualcosa'); },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.star
                    ),
                    Text('Ciao a te'),
                  ],
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green)
                ),
              ),
              Padding(
                  child: Text('Del padding col widget padding'),
                  padding: const EdgeInsets.all(20),
              ),
              Container(
                child: Text('Del padding col widget container'),
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('ciao'), Text('ciao2'),
                  Container(
                    child: Text('ciao3'),
                    color: Colors.cyan,
                    padding: EdgeInsets.all(20),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Container1'),
                      color: Colors.pink,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Container2'),
                      color: Colors.cyan,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Container3'),
                      color: Colors.deepOrange
                    ),
                  )
                ],
              )
            ],
          )
          // Image.asset('assets/AOT.jpg')
          // Image.network('https://www.ufopedia.it/images/2/2a/Attack-on-titan.jpg')
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () { print('ciaooooo'); },
          child: Text('+'),
          backgroundColor: Colors.green[300],
        ),
      ),
    );
  }
}