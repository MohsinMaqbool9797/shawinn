// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

taxes() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0,),
    
    child: Text(
      'Prices shown are in INR\nPlease speak to your server for any dietary requirements\n 18% GST Extra',
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Mansory',
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
