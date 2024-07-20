

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 final List<String> listnom = [
    'rasmga/1.jpg',
    'rasmga/2.jpg',
    'rasmga/3.jpg',
    'rasmga/4.jpg',
    'rasmga/5.jpg',
    'rasmga/6.jpg',
    'rasmga/7.jpg',
    'rasmga/8.jpg',
    'rasmga/9.jpg',
    'rasmga/10.jpg',
    'rasmga/11.jpg',
    'rasmga/12.jpg',
    'rasmga/13.jpg',
    'rasmga/14.jpg',
    'rasmga/15.jpg',
    'rasmga/16.jpg',
    'rasmga/17.jpg',
    'rasmga/18.jpg',
    'rasmga/19.jpg',
    'rasmga/20.jpg',
    'rasmga/21.jpg',
    'rasmga/22.jpg',
    'rasmga/23.jpg',
    'rasmga/24.jpg',
    'rasmga/25.jpg',
    'rasmga/26.jpg',
    'rasmga/27.jpg',
    'rasmga/28.jpg',
    'rasmga/29.jpg',
    'rasmga/30.jpg',
    'rasmga/31.jpg',
  ];



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: listnom.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                
                Image.asset("${listnom[index]}")
              ],
            );
          }),
    );
  }
}
