import 'dart:convert';

import 'package:flutterhackathon/model/post.dart';
import 'package:flutterhackathon/model/token.dart';
import 'package:http/http.dart' as http;

class HttpUtils {
  Future<Token> authorize() async {
    http.Response r = await http.post(
      'https://api.twitter.com/oauth2/token?grant_type=client_credentials',
      headers: {'authorization': basicAuthenticationHeader()},
    );

    if (r.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return Token.fromJson(json.decode(r.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to authorize');
    }
  }

  Future<Post> getPosts() async {
    var token = await this.authorize();
    http.Response r = await http.get(
        'https://api.twitter.com/1.1/search/tweets.json?q=%23flutter',
        headers: {'authorization': 'Bearer ${token.accessToken}'});

    if (r.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      var body = r.body;
      return Post.fromJson(json.decode(r.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  String basicAuthenticationHeader() {
    return 'Basic ' +
        base64Encode(utf8.encode(
            'OfJ5vsGYA39N4hAlAxv0DX9eX:cKvmnhznGH9YOJ7KoFGfOdlfV0EvkvCVSh54Gm5wRTvEwnhb3A'));
  }
}
