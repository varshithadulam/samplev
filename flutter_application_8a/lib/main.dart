import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedOpacity Example', // App title
      theme: ThemeData(
        primarySwatch: Colors.green, // App's primary theme color
      ),
      debugShowCheckedModeBanner: false,
      home: const AnimatedOpacityExample(), // Main home page
    );
  }
}

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  AnimatedOpacityExampleState createState() => AnimatedOpacityExampleState();
}

class AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  bool isVisible = true; // A variable to control the visibility of the box

  void _toggleVisibility() {
    setState(() {
      isVisible = !isVisible; // Toggle the visibility when the button is pressed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedOpacity Example'), // AppBar title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              duration: const Duration(seconds: 1), // Animation duration
              opacity: isVisible ? 1.0 : 0.0, // Opacity value based on visibility
              child: Container(
                width: 200,
                height: 200,
                color: Colors.blue, // Color of the box
                child: const Center(
                  child: Text(
                    'Fading Box', // Text displayed inside the box
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 20.0, // Text font size
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // SizedBox for spacing
            ElevatedButton(
              onPressed: _toggleVisibility, // Call _toggleVisibility when the button is pressed
              child: Text(isVisible ? 'Hide' : 'Show'), // Button text
            ),
          ],
        ),
      ),
    );
  }
} 