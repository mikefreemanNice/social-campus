import 'package:flutter/material.dart';

class AddPostPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddPostState();
  }
}

class AddPostState extends State<AddPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        // title: Text("add", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
