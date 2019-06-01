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
    user = new User.fromJson(json);
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
  Null url;
  bool protected;
  int followersCount;
  int friendsCount;
  int listedCount;
  String createdAt;
  int favouritesCount;
  Null utcOffset;
  Null timeZone;
  bool geoEnabled;
  bool verified;
  int statusesCount;
  String lang;
  bool contributorsEnabled;
  bool isTranslator;
  bool isTranslationEnabled;
  String profileBackgroundColor;
  String profileBackgroundImageUrl;
  String profileBackgroundImageUrlHttps;
  bool profileBackgroundTile;
  String profileImageUrl;
  String profileImageUrlHttps;
  String profileBannerUrl;
  String profileLinkColor;
  String profileSidebarBorderColor;
  String profileSidebarFillColor;
  String profileTextColor;
  bool profileUseBackgroundImage;
  bool hasExtendedProfile;
  bool defaultProfile;
  bool defaultProfileImage;
  Null following;
  Null followRequestSent;
  Null notifications;
  String translatorType;

  User(
      {this.id,
        this.idStr,
        this.name,
        this.screenName,
        this.location,
        this.description,
        this.url,
        this.protected,
        this.followersCount,
        this.friendsCount,
        this.listedCount,
        this.createdAt,
        this.favouritesCount,
        this.utcOffset,
        this.timeZone,
        this.geoEnabled,
        this.verified,
        this.statusesCount,
        this.lang,
        this.contributorsEnabled,
        this.isTranslator,
        this.isTranslationEnabled,
        this.profileBackgroundColor,
        this.profileBackgroundImageUrl,
        this.profileBackgroundImageUrlHttps,
        this.profileBackgroundTile,
        this.profileImageUrl,
        this.profileImageUrlHttps,
        this.profileBannerUrl,
        this.profileLinkColor,
        this.profileSidebarBorderColor,
        this.profileSidebarFillColor,
        this.profileTextColor,
        this.profileUseBackgroundImage,
        this.hasExtendedProfile,
        this.defaultProfile,
        this.defaultProfileImage,
        this.following,
        this.followRequestSent,
        this.notifications,
        this.translatorType});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idStr = json['id_str'];
    name = json['name'];
    screenName = json['screen_name'];
    location = json['location'];
    description = json['description'];
    url = json['url'];
    protected = json['protected'];
    followersCount = json['followers_count'];
    friendsCount = json['friends_count'];
    listedCount = json['listed_count'];
    createdAt = json['created_at'];
    favouritesCount = json['favourites_count'];
    utcOffset = json['utc_offset'];
    timeZone = json['time_zone'];
    geoEnabled = json['geo_enabled'];
    verified = json['verified'];
    statusesCount = json['statuses_count'];
    lang = json['lang'];
    contributorsEnabled = json['contributors_enabled'];
    isTranslator = json['is_translator'];
    isTranslationEnabled = json['is_translation_enabled'];
    profileBackgroundColor = json['profile_background_color'];
    profileBackgroundImageUrl = json['profile_background_image_url'];
    profileBackgroundImageUrlHttps = json['profile_background_image_url_https'];
    profileBackgroundTile = json['profile_background_tile'];
    profileImageUrl = json['profile_image_url'];
    profileImageUrlHttps = json['profile_image_url_https'];
    profileBannerUrl = json['profile_banner_url'];
    profileLinkColor = json['profile_link_color'];
    profileSidebarBorderColor = json['profile_sidebar_border_color'];
    profileSidebarFillColor = json['profile_sidebar_fill_color'];
    profileTextColor = json['profile_text_color'];
    profileUseBackgroundImage = json['profile_use_background_image'];
    hasExtendedProfile = json['has_extended_profile'];
    defaultProfile = json['default_profile'];
    defaultProfileImage = json['default_profile_image'];
    following = json['following'];
    followRequestSent = json['follow_request_sent'];
    notifications = json['notifications'];
    translatorType = json['translator_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_str'] = this.idStr;
    data['name'] = this.name;
    data['screen_name'] = this.screenName;
    data['location'] = this.location;
    data['description'] = this.description;
    data['url'] = this.url;
    data['protected'] = this.protected;
    data['followers_count'] = this.followersCount;
    data['friends_count'] = this.friendsCount;
    data['listed_count'] = this.listedCount;
    data['created_at'] = this.createdAt;
    data['favourites_count'] = this.favouritesCount;
    data['utc_offset'] = this.utcOffset;
    data['time_zone'] = this.timeZone;
    data['geo_enabled'] = this.geoEnabled;
    data['verified'] = this.verified;
    data['statuses_count'] = this.statusesCount;
    data['lang'] = this.lang;
    data['contributors_enabled'] = this.contributorsEnabled;
    data['is_translator'] = this.isTranslator;
    data['is_translation_enabled'] = this.isTranslationEnabled;
    data['profile_background_color'] = this.profileBackgroundColor;
    data['profile_background_image_url'] = this.profileBackgroundImageUrl;
    data['profile_background_image_url_https'] =
        this.profileBackgroundImageUrlHttps;
    data['profile_background_tile'] = this.profileBackgroundTile;
    data['profile_image_url'] = this.profileImageUrl;
    data['profile_image_url_https'] = this.profileImageUrlHttps;
    data['profile_banner_url'] = this.profileBannerUrl;
    data['profile_link_color'] = this.profileLinkColor;
    data['profile_sidebar_border_color'] = this.profileSidebarBorderColor;
    data['profile_sidebar_fill_color'] = this.profileSidebarFillColor;
    data['profile_text_color'] = this.profileTextColor;
    data['profile_use_background_image'] = this.profileUseBackgroundImage;
    data['has_extended_profile'] = this.hasExtendedProfile;
    data['default_profile'] = this.defaultProfile;
    data['default_profile_image'] = this.defaultProfileImage;
    data['following'] = this.following;
    data['follow_request_sent'] = this.followRequestSent;
    data['notifications'] = this.notifications;
    data['translator_type'] = this.translatorType;
    return data;
  }

  @override
  String toString() {
    return 'User{id: $id, idStr: $idStr, name: $name, screenName: $screenName, location: $location, description: $description, url: $url, protected: $protected, followersCount: $followersCount, friendsCount: $friendsCount, listedCount: $listedCount, createdAt: $createdAt, favouritesCount: $favouritesCount, utcOffset: $utcOffset, timeZone: $timeZone, geoEnabled: $geoEnabled, verified: $verified, statusesCount: $statusesCount, lang: $lang, contributorsEnabled: $contributorsEnabled, isTranslator: $isTranslator, isTranslationEnabled: $isTranslationEnabled, profileBackgroundColor: $profileBackgroundColor, profileBackgroundImageUrl: $profileBackgroundImageUrl, profileBackgroundImageUrlHttps: $profileBackgroundImageUrlHttps, profileBackgroundTile: $profileBackgroundTile, profileImageUrl: $profileImageUrl, profileImageUrlHttps: $profileImageUrlHttps, profileBannerUrl: $profileBannerUrl, profileLinkColor: $profileLinkColor, profileSidebarBorderColor: $profileSidebarBorderColor, profileSidebarFillColor: $profileSidebarFillColor, profileTextColor: $profileTextColor, profileUseBackgroundImage: $profileUseBackgroundImage, hasExtendedProfile: $hasExtendedProfile, defaultProfile: $defaultProfile, defaultProfileImage: $defaultProfileImage, following: $following, followRequestSent: $followRequestSent, notifications: $notifications, translatorType: $translatorType}';
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
