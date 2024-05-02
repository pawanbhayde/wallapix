

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),     
        title: const Text('Wallapix',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      // floatingActionButton with text
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Upload'),
        icon: const Icon(Icons.add),
        elevation: 0,
      ),
    );
  }
}
