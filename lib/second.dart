import 'package:flutter/material.dart';
import 'package:my_provider/list_provider.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ListProvider>(
      builder: (context, value, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              value.add();
            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(),
          body: Column(
            children: [
              Text(
                value.numbers.last.toString(),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 40),
              Expanded(
                child: ListView.builder(
                  itemCount: value.numbers.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                        value.numbers[index].toString(),
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
