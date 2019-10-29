import 'package:flutter/material.dart';
import 'package:flutter_mvc_demo/controllers/PostController.dart';
import 'package:flutter_mvc_demo/models/Post.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({this.title});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Post> post;

  @override
  void initState() {
    super.initState();
    post = PostController().getAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<Post> (
        future: post,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(child: Text(snapshot.data.body));
          }
          else if (snapshot.hasError) {
            return Center(child: Text('failed'));
          }

          // load circular spinner
          return Center(child: CircularProgressIndicator());

        },
      ),
    );
  }
}
