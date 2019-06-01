import 'package:flutterhackathon/bloc/http_utils.dart';
import 'package:flutterhackathon/model/post.dart';

class PostBloc {
  final HttpUtils httpUtils = HttpUtils();
  Post _post;
  List<Statuses> _statuses;

  Future<Post> getPosts(bool refresh) async {
    if(_post != null && !refresh) {
      return Future.value(_post);
    }
    _post = await httpUtils.getPosts();
    _statuses = _post.statuses;
    return _post;
  }

  getNames() {
    List<String> list = [];
    _statuses.forEach((status) {
      list.add(status.user.name);
    });
    return Future.value(list);
  }

  getStatuses() {
    return Future.value(_statuses);
  }

  Post refreshPost() {
    httpUtils.getPosts().then((post) {
      _post = post;
      _statuses = post.statuses;
      return _post;
    });
  }


}

final postBloc = PostBloc();