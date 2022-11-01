import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  var path = 'assets/photos/dice2.png';
  var path2 = 'assets/photos/dice5.png';

  ThemeData MyTheme=ThemeData.light();
  List<DropdownMenuItem<ThemeData>> myItemList = [

    DropdownMenuItem(
      child: Row(
      children: [
        Icon(Icons.dark_mode_rounded),
        Text("Dark Mode")
      ],
      ),
      value: ThemeData.dark(),
    ),
    DropdownMenuItem(
      child: Row(
        children: [
          Icon(Icons.light_mode_sharp),
          Text("Light Mode")
        ],
      ),
      value: ThemeData.light(),
    ),

  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "DiceApp",
              textAlign: TextAlign.center,
            ),
            actions: [
              DropdownButton(

                items: myItemList,
                onChanged: (ThemeData? value2) {
                  // This is called when the user selects an item.
                  setState(() {
                    MyTheme = value2!;
                  });
                },
                value: MyTheme,
                elevation: 16,
              )
            ]),
        body: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      var arr = [
                        'assets/photos/dice1.png',
                        'assets/photos/dice2.png',
                        'assets/photos/dice3.png',
                        'assets/photos/dice4.png',
                        'assets/photos/dice5.png',
                        'assets/photos/dice6.png'
                      ];
                      var intvalue = Random().nextInt(5);
                      var intvalue2 = Random().nextInt(6);
                      var value = arr[intvalue];
                      var value2 = arr[intvalue2];
                      print(value);
                      setState(() {
                        path = value;
                        path2 = value2;
                      });
                    },
                    child: Image.asset(path, fit: BoxFit.scaleDown)),
              ),
              SizedBox(
                width: 200,
              ),
              Expanded(
                child: GestureDetector(
                    onTap: () {
                      var arr = [
                        'assets/photos/dice1.png',
                        'assets/photos/dice2.png',
                        'assets/photos/dice3.png',
                        'assets/photos/dice4.png',
                        'assets/photos/dice5.png',
                        'assets/photos/dice6.png'
                      ];
                      var intvalue = Random().nextInt(6);
                      var intvalue2 = Random().nextInt(6);
                      var value = arr[intvalue];
                      var value2 = arr[intvalue2];
                      print(value);
                      setState(() {
                        path = value;
                        path2 = value2;
                      });
                    },
                    child: Image.asset(
                      path2,
                      fit: BoxFit.scaleDown,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*void dropdownCallback(String? selectedValue){
  if(selectedValue is String){

  }
}
*/
