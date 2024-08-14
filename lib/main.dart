import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LiveText(),
    );
  }
}

class LiveText extends StatelessWidget {
  const LiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Styling App"),
      ),
      body: SizedBox(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Flutter Text Styling",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Experiment with text styles",
              style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("You clicked the button!")));
            }, child:const Text("Click me")),
            const SizedBox(
              height: 10,
            ),
            const Text.rich(TextSpan(children: [
              TextSpan(text: "Welcome to ",style: TextStyle(fontSize: 18)),
              TextSpan(text: "Flutter!",style: TextStyle(color: Colors.blue,fontSize: 18)),
            ]))
          ],
        ),
      ),
    );
  }
}


