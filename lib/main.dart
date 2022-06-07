import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Image Widget Demo"),
        ),
        body:
        Image.network("https://images.unsplash.com/photo-1581092583537-20d51b4b4f1b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
        loadingBuilder: (context, child, loadingProgress) {
          return loadingProgress == null ? child : LinearProgressIndicator();
        },
        )

        // Image.asset("assets/images/myimage1.jpg",
        //   // color: Colors.white, 
        //   // colorBlendMode: BlendMode.hue, 
        //   ),
         
         ),
    );
  }
}
