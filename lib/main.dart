import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red[900], title: const Text("Hello World")),
        body: const Center(
          // child: const Text("Hello world!", textAlign: TextAlign.center),
          child: MyOwnWidget(loading: false),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyOwnWidget extends StatelessWidget {
  final bool loading;

  const MyOwnWidget({super.key, required this.loading});
  @override
  Widget build(BuildContext context) {
    return loading ? const CircularProgressIndicator() : const Text("State");
  }
}
