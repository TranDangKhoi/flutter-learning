import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red[900], title: const Text("Hello World")),
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
  late bool loadingState;

  @override
  void initState() {
    super.initState();
    loadingState = widget.loading;
  }

  @override
  Widget build(BuildContext context) {
    return loadingState
        ? const CircularProgressIndicator()
        : FloatingActionButton(
            onPressed: onClickButton, child: const Icon(Icons.add));
  }

  void onClickButton() {
    setState(() {
      loadingState = !loadingState;
    });
  }
}
