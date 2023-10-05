import 'package:flutter/material.dart';
import 'package:intern/counter.dart';
import 'package:provider/provider.dart';

class providerexample extends StatefulWidget {
  const providerexample({super.key});

  @override
  State<providerexample> createState() => _providerexampleState();
}

class _providerexampleState extends State<providerexample> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Center(child: Container(child: Column(children: [Consumer<counter>(builder: (context, counter, child) {
       return Text("${counter.number}");
      },),Consumer<counter>(builder: (context, counter, child) {
        return ElevatedButton(onPressed:counter.increase, child: Text("increase"));
      
      },),
      
      Consumer<counter>(builder: (context, counter, child) {
        return ElevatedButton(onPressed:counter.decrease  , child: Text("decrease"));
      },)
      
      ],),)),
    );
  }
}