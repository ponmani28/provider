


import 'package:flutter/material.dart';
import 'package:intern/counter_notifier/change_notifierexam.dart';
import 'package:intern/counter_notifier/counter_notifier.dart';
import 'package:intern/future_provider/data.dart';
import 'package:intern/future_provider/data_future.dart';
import 'package:intern/future_provider/futureprovider.dart';
import 'package:intern/steamprovider/data.dart';
import 'package:intern/steamprovider/data_stream.dart';
import 'package:intern/steamprovider/stream_provider.dart';
import 'package:provider/provider.dart';





void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return 
    //     ChangeNotifierProvider(create: (_) => counternotifier(),builder: (context, child) => 
     
    // const MaterialApp(
    
    //   home: ChangeNotifierexample(),
    //   // Provider<counter>(create:(context) =>  counter(),
      
    //   // child: providerexample(),
    //   // )    
    //   // ChangeNotifierProvider(create: (_) => counternotifier(),
    //   // child: ChangeNotifierexample(),)

      
    // ));
    // return FutureProvider<Data>(create: (context) => loadData(),
    //  initialData: Data("initial data"),child: const MaterialApp(
    //   home: futureproviderexample(),
    // ),);

    // return StreamProvider(create: (_) => loadstream(), 
    // initialData: modelstream(number:0),
    // child: MaterialApp(home: stream_provider_example(),),);


    return MultiProvider(providers: [
      ChangeNotifierProvider<counternotifier>(create: (context) => counternotifier(),),
      FutureProvider<Data>(create: (context) => loadData(), initialData: Data("initial data")),
      StreamProvider<modelstream>(create: (context) => loadstream(), initialData: modelstream(number: 0)),    
    ],child:
     MaterialApp(home: ChangeNotifierexample()),
     
     
     );
  }
}