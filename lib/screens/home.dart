// Import directives
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latinize/latinize.dart';

// Models
import 'package:unikamoos/models/mandarin.dart';

class Home extends ConsumerWidget{
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UniKamoos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/translate");
              },
              child: const Text('Mandarin'),
            ),
          ],
        ),
      ),
          
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            tooltip: "FAB 1",
            heroTag: "one",
            backgroundColor: Colors.lightBlue,
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
  
          const SizedBox(height: 16),
  
          FloatingActionButton(
            tooltip: "FAB 2",
            heroTag: "two",
            backgroundColor: Colors.lightBlue,
            child: const Icon(Icons.find_in_page),
            onPressed: () async {},
          ),
          
        ],
      ),
    );
  }
}