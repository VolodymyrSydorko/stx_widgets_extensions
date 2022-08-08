import 'package:flutter/material.dart';
import 'package:stx_widgets_extensions/stx_widgets_extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stx_widgets_extensions',
      home: Example(),
    );
  }
}

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: const Text('Vertical').py(40),
            ),
            const Divider(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
              child: const Text('Horizontal').px(20),
            ),
            const Divider(
              color: Colors.red,
            ),
            Container(
              color: Colors.blue,
              child: const Text('Top').pt(30),
            ),
            const Divider(
              color: Colors.red,
            ),
            Container(
              height: context.screenHeight * 0.2,
              width: double.infinity,
              color: Colors.amber,
              alignment: Alignment.center,
              child: const Text('MediaQuery from context'),
            ),
            const Divider(
              color: Colors.red,
            ),
            Container(
              width: 40.0,
              height: 40.0,
              color: Colors.red,
            ).clip(100),
          ],
        ),
      ),
    );
  }
}
