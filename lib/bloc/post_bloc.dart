import 'package:flutterhackathon/bloc/post_repository.dart';
import 'package:flutterhackathon/model/posts.dart';

class PostBloc {
  final postRepository = PostRepository();

  Future<List<Posts>> getPosts() {
    return postRepository.getPosts();
  }
}

final postBloc = PostBloc();