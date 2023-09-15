import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue[500],
            title: const Text("Hello World")),
        body: const Center(
          // child: const Text("Hello world!", textAlign: TextAlign.center),
          child: MySecondWidget(loading: false),
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

class MySecondWidget extends StatefulWidget {
  final bool loading;

  const MySecondWidget({super.key, required this.loading});

  @override
  State<StatefulWidget> createState() {
    return MySecondWidgetState();
  }
}

class MySecondWidgetState extends State<MySecondWidget> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Count: $count"),
        ElevatedButton(
          onPressed: onClickButton,
          child: const Text("Click me"),
        )
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
    );
  }

  void onClickButton() {
    setState(() {
      count++;
    });
  }
}
