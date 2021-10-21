import 'package:dice_app/dice_page.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        backgroundColor: Colors.red,

        appBar:AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text('Dicee',
          style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),

           ),
        ),
        body: DicePage(),
      ),
    ),
  );
}