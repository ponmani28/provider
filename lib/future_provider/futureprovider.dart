import 'package:flutter/material.dart';
import 'package:intern/future_provider/data.dart';
import 'package:provider/provider.dart';

class futureproviderexample extends StatelessWidget {
  const futureproviderexample({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( 


      body: Center(child: Column(children: [

        Consumer<Data>(builder: (context, data, child) {
          return Text(data.data);
        }),
      
        Consumer<Data>(builder: (context, data, child) {
          return ElevatedButton(onPressed: data.loaddatabyclick, child:const Text("load data") );
        },)
      
      
      ]),
      ),
    );
  }
}

