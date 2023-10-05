import 'package:flutter/material.dart';
import 'package:intern/counter.dart';
import 'package:intern/counter_notifier/counter_notifier.dart';
import 'package:intern/counter_notifier/next_page.dart';
import 'package:provider/provider.dart';

class ChangeNotifierexample extends StatefulWidget {
  const ChangeNotifierexample({super.key});

  @override
  State<ChangeNotifierexample> createState() => _ChangeNotifierexampleState();
}

class _ChangeNotifierexampleState extends State<ChangeNotifierexample> {
  @override
  Widget build(BuildContext context) {

   final counternotifiernochange1 = Provider.of<counternotifier>(context,listen: false);
    return  Scaffold(

      body: Center(child: Container(child: Column(children: [Consumer<counternotifier>(builder: (context, counternotifier, child) {
       return Text("${counternotifier.number}");
      },),Consumer<counternotifier>(builder: (context, counternotifier, child) {
        return ElevatedButton(onPressed:counternotifier.increase, child: Text("increase ${counternotifier.number}"));
      
      },),
      
      ElevatedButton(onPressed:counternotifiernochange1.decrease  , child: Text("decrease${counternotifiernochange1.number}")),
      ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>nextpage()));}, child: Text("next page"))
      
      ],),)),
    );
  }
}