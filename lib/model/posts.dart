class Posts {
  int id;
  String source;
  String author;
  String title;
  String text;
  String icon;
  int myScore;
  int score;
  bool favorite;
  String publishDate;
  String extUrl;
  List<String> tags;
  int sortPos;

  Posts(
      {this.id,
        this.source,
        this.author,
        this.title,
        this.text,
        this.icon,
        this.myScore,
        this.score,
        this.favorite,
        this.publishDate,
        this.extUrl,
        this.tags,
        this.sortPos});

  Posts.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    source = json['source'];
    author = json['author'];
    title = json['title'];
    text = json['text'];
    icon = json['icon'];
    myScore = json['myScore'];
    score = json['score'];
    favorite = json['favorite'];
    publishDate = json['publishDate'];
    extUrl = json['extUrl'];
    tags = json['tags'].cast<String>();
    sortPos = json['sortPos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['source'] = this.source;
    data['author'] = this.author;
    data['title'] = this.title;
    data['text'] = this.text;
    data['icon'] = this.icon;
    data['myScore'] = this.myScore;
    data['score'] = this.score;
    data['favorite'] = this.favorite;
    data['publishDate'] = this.publishDate;
    data['extUrl'] = this.extUrl;
    data['tags'] = this.tags;
    data['sortPos'] = this.sortPos;
    return data;
  }
}
