import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/second.dart';
import 'package:provider_example/providers/list_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: const Text('Provider Example'),
        ),
        body: SizedBox(
          child: Column(
            children: [
              Text(
                numbersProviderModel.numbers.last.toString(),
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbersProviderModel.numbers[index].toString(),
                        style: const TextStyle(
                          fontSize: 30.0,
                        ),
                      );
                    }),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Second(),
                    ),
                  );
                },
                child: const Text('Second'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
