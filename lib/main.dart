// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:personal_expenses_app/transation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 final List<Transaction> transacations = [
   Transaction(transactionId: '0cbee',transactionName: 'Shoes', amount:  20.10, transactionDate: DateTime.now()),
   Transaction(transactionId: 'd48f9',transactionName: 'Food', amount: 200.50, transactionDate: DateTime.now())
 ];


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children:  <Widget>[
        Container(
          //width: double.infinity,
          child: Card(
            child: Text("Chart"),
            ),
        ),
        Column(
          children: transacations.map((tx){
            return Card(
              child: Text(tx.transactionName),
            );
          }).toList(),
        ),
        ]
      )
    );
  }
}
