import 'package:flutter/material.dart';
import 'package:intern/proxy_provider/credit_card.dart';
import 'package:provider/provider.dart';

class proxyproviderexample extends StatelessWidget {
  const proxyproviderexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Column(children: [Consumer<Creditcard>(builder: (context, creditcard, child){return Text('amount: ${creditcard.amount}');} ,)],),),);
  }
}