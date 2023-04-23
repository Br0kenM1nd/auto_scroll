import 'package:flutter/material.dart';

class AddTextPage extends StatelessWidget {
  const AddTextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.save),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: TextField(
          maxLines: null,
          decoration: InputDecoration(
            hintText: 'Enter text...',
          ),
        ),
      ),
    );
  }
}
