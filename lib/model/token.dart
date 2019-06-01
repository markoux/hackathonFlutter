class Token {
  String tokenType;
  String accessToken;

  Token({this.tokenType, this.accessToken});

  Token.fromJson(Map<String, dynamic> json) {
    tokenType = json['token_type'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token_type'] = this.tokenType;
    data['access_token'] = this.accessToken;
    return data;
  }
}