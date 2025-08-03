import 'package:flutter/material.dart';
import 'package:my_provider/list_provider.dart';
import 'package:my_provider/second.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Second Page"),
              ),
            ],
          ),
        );
      },
    );
  }
}
