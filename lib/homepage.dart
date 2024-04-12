import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterApp>(
      builder : (context, data , child) {
        return
          Scaffold(

            appBar: AppBar(
              title: Text('Counter App'),
              centerTitle: true,
            ),
            body: Center(
              child: Text('${data.counter}', style: TextStyle(fontSize: 30),),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: () {
                  data.Increment();
                }, child: Icon(Icons.add),),
                FloatingActionButton(
                  onPressed: () {
                    data.Decrement();

                  }, child: Icon(Icons.minimize),)
              ],
            ),
          );

      }
    );
  }
}
