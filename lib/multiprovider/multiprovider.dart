import 'package:flutter/material.dart';
import 'package:intern/counter_notifier/counter_notifier.dart';
import 'package:intern/future_provider/data.dart';
import 'package:intern/steamprovider/data.dart';
import 'package:provider/provider.dart';

class multiproviderexample extends StatelessWidget {
  const multiproviderexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(children: [Consumer3< counternotifier, Data, modelstream>(
        builder: (context, counter, data, model, child){return  Column(
          children: [
            Text('${counter.number}'),
            Text('${data.data}'),
            Text('${model.number}')
          ],
        );})],),),
    );
  }
}