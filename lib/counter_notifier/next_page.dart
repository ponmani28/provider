import 'package:flutter/material.dart';
import 'package:intern/counter.dart';
import 'package:intern/counter_notifier/counter_notifier.dart';
import 'package:provider/provider.dart';

class nextpage extends StatefulWidget {
  const nextpage({super.key});

  @override
  State<nextpage> createState() => _nextpageState();
}

class _nextpageState extends State<nextpage> {
  @override
  Widget build(BuildContext context) {

   final counternotifiernochange1 = Provider.of<counternotifier>(context,listen: false);
    return  Scaffold(

      body: Center(child: Container(child: Column(children: [Consumer<counternotifier>(builder: (context, counternotifier, child) {
       return Text("${counternotifier.number}");
      },),Consumer<counternotifier>(builder: (context, counternotifier, child) {
        return ElevatedButton(onPressed:counternotifier.increase, child: Text("increase ${counternotifier.number}"));
      
      },),
      
      Consumer<counternotifier>(builder:(context, counternotifiernochange1, child) {
        return ElevatedButton(onPressed:counternotifiernochange1.decrease  , child: Text("decrease${counternotifiernochange1.number}"));
      
      },
      
    )],),)),
    );
  }
}