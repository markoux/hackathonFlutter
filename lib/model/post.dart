class Post {
  List<Statuses> statuses;
  Metadata metadata;

  Post({this.statuses, this.metadata});

  Post.fromJson(Map<String, dynamic> json) {
    if (json['statuses'] != null) {
      statuses = new List<Statuses>();
      json['statuses'].forEach((v) {
        statuses.add(new Statuses.fromJson(v));
      });
    }

    if (json['search_metadata'] != null) {
      metadata = new Metadata.fromJson(json['search_metadata']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.statuses != null) {
      data['statuses'] = this.statuses.map((v) => v.toJson()).toList();
    }

    if (this.metadata != null) {
      data['search_metadata'] = this.metadata;
    }

    return data;
  }

  @override
  String toString() {
    return 'Post{statuses: $statuses, metadata: $metadata}';
  }
}

class Statuses {
  String createdAt;
  int id;
  String idStr;
  String text;
  bool truncated;
  String source;
  User user;

  Statuses(
      {this.createdAt,
      this.id,
      this.idStr,
      this.text,
      this.truncated,
      this.source,
      this.user});

  Statuses.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    id = json['id'];
    idStr = json['id_str'];
    text = json['text'];
    truncated = json['truncated'];
    source = json['source'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['id_str'] = this.idStr;
    data['text'] = this.text;
    data['truncated'] = this.truncated;
    data['source'] = this.source;
    data['user'] = this.user;
    return data;
  }

  @override
  String toString() {
    return 'Statuses{createdAt: $createdAt, id: $id, idStr: $idStr, text: $text, truncated: $truncated, source: $source, user: $user}';
  }
}

class User {
  int id;
  String idStr;
  String name;
  String screenName;
  String location;
  String description;

  User(
      {this.id,
        this.idStr,
        this.name,
        this.screenName,
        this.location,
        this.description});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idStr = json['id_str'];
    name = json['name'];
    screenName = json['screen_name'];
    location = json['location'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_str'] = this.idStr;
    data['name'] = this.name;
    data['screen_name'] = this.screenName;
    data['location'] = this.location;
    data['description'] = this.description;
    return data;
  }


}

class Metadata {
  double completedIn;
  int maxId;
  String maxIdStr;
  String nextResults;
  String query;
  String refreshUrl;
  int count;
  int sinceId;
  String sinceIdStr;

  Metadata(
      {this.completedIn,
      this.maxId,
      this.maxIdStr,
      this.nextResults,
      this.query,
      this.refreshUrl,
      this.count,
      this.sinceId,
      this.sinceIdStr});

  Metadata.fromJson(Map<String, dynamic> json) {
    completedIn = json['completed_in'];
    maxId = json['max_id'];
    maxIdStr = json['max_id_str'];
    nextResults = json['next_results'];
    query = json['query'];
    refreshUrl = json['refresh_url'];
    count = json['count'];
    sinceId = json['since_id'];
    sinceIdStr = json['since_id_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['completed_in'] = this.completedIn;
    data['max_id'] = this.maxId;
    data['max_id_str'] = this.maxIdStr;
    data['next_results'] = this.nextResults;
    data['query'] = this.query;
    data['refresh_url'] = this.refreshUrl;
    data['count'] = this.count;
    data['since_id'] = this.sinceId;
    data['since_id_str'] = this.sinceIdStr;
    return data;
  }

  @override
  String toString() {
    return 'Metadata{completedIn: $completedIn, maxId: $maxId, maxIdStr: $maxIdStr, nextResults: $nextResults, query: $query, refreshUrl: $refreshUrl, count: $count, sinceId: $sinceId, sinceIdStr: $sinceIdStr}';
  }
}
