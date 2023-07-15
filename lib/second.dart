import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/list_provider.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
              SizedBox(
                height: 200.0,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
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
            ],
          ),
        ),
      ),
    );
  }
}
