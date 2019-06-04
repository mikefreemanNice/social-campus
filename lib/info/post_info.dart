import 'dart:async';

import 'package:social_campus/model/post.dart';
import 'package:social_campus/model/post_view_model.dart';

class PostInfo {
  final PostViewModel postViewModel = PostViewModel();
  final postController = StreamController<List<Post>>();
  final fabController = StreamController<bool>();
  final fabVisibleController = StreamController<bool>();
  Sink<bool> get fabSink => fabController.sink;
  Stream<List<Post>> get postItems => postController.stream;
  Stream<bool> get fabVisible => fabVisibleController.stream;

  PostInfo() {
    postController.add(postViewModel.getPosts());
    fabController.stream.listen(onScroll);
  }
  onScroll(bool visible) {
    fabVisibleController.add(visible);
  }

  void dispose() {
    postController?.close();
    fabController?.close();
    fabVisibleController?.close();
  }
}
