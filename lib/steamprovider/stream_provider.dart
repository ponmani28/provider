import 'package:flutter/material.dart';
import 'package:intern/steamprovider/data.dart';
import 'package:provider/provider.dart';

class stream_provider_example extends StatelessWidget {
  const stream_provider_example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Column(children: [

        Consumer<modelstream>(builder:(context, model, child) {
          return Text("${model.number}");
        }, ),
         Consumer<modelstream>(builder:(context, model, child) {
          return ElevatedButton(onPressed: model.increase, child: Text("increase"));
        }, )

      ],),),


    );
  }
}