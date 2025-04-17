import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demosss',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key}); // Added super.key for best practice

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Container Practice'),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding:EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.blue,
            border:Border.all(color: Colors.black12,width: 10),
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
    BoxShadow(
      color: Colors.black.withOpacity(0.3),
      spreadRadius: 3,
      blurRadius: 5,
      offset: Offset(0, 3),
    ),
  ],
          ),
          child: Center(
            child: Text("Center",style: TextStyle(color: Colors.amber,fontSize: 35),),
          ),
        ),
      ),
    );
  }
}