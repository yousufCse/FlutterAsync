import 'package:flutter/material.dart';
import 'package:flutterasync/src/notifier/Counter.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              "You have pushed the button this many times:", style: TextStyle(
              fontSize: 18,),),
            Consumer<Counter>(
              builder: (context, counter, child) {
                return Text(
                    "${counter.value}",
                    style: Theme
                        .of(context)
                        .textTheme
                        .title
                );
              },
            ),

            Container(
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text("Decrement"),
                    onPressed: () {
                      Provider.of<Counter>(context, listen: false).decrement();
                    },
                  ),
                  RaisedButton(
                    child: Text("Reset"),
                    onPressed: () {
                      Provider.of<Counter>(context, listen: false).reset();
                    },
                  ),
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      Provider.of<Counter>(context, listen: false).increment();
                    },
                  ),

                  RaisedButton(
                    child: Text("Set value async"),
                    onPressed: () {
                      Provider.of<Counter>(context, listen: false).fetchImage();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
