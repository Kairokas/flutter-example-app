import 'package:flutter/material.dart';

int itemCount = 50;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Blank button'),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: itemCount,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('List item $index'),
                  subtitle: const Text('Subtitle'),
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Action Button pressed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
