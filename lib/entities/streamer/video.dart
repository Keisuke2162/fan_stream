class YouTubeSearchResponse {
  final String kind;
  final String etag;
  final String nextPageToken;
  final String regionCode;
  final PageInfo pageInfo;
  final List<YouTubeSearchItem> items;

  YouTubeSearchResponse({
    required this.kind,
    required this.etag,
    required this.nextPageToken,
    required this.regionCode,
    required this.pageInfo,
    required this.items,
  });

  factory YouTubeSearchResponse.fromJson(Map<String, dynamic> json) {
    return YouTubeSearchResponse(
      kind: json['kind'] ?? '',
      etag: json['etag'] ?? '',
      nextPageToken: json['nextPageToken'] ?? '',
      regionCode: json['regionCode'] ?? '',
      pageInfo: PageInfo.fromJson(json['pageInfo'] ?? {}),
      items: (json['items'] as List<dynamic>?)
              ?.map((item) => YouTubeSearchItem.fromJson(item))
              .toList() ??
          [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'etag': etag,
      'nextPageToken': nextPageToken,
      'regionCode': regionCode,
      'pageInfo': pageInfo.toJson(),
      'items': items.map((item) => item.toJson()).toList(),
    };
  }
}

class PageInfo {
  final int totalResults;
  final int resultsPerPage;

  PageInfo({
    required this.totalResults,
    required this.resultsPerPage,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) {
    return PageInfo(
      totalResults: json['totalResults'] ?? 0,
      resultsPerPage: json['resultsPerPage'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalResults': totalResults,
      'resultsPerPage': resultsPerPage,
    };
  }
}

class YouTubeSearchItem {
  final String kind;
  final String etag;
  final VideoId id;
  final Snippet snippet;

  YouTubeSearchItem({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
  });

  factory YouTubeSearchItem.fromJson(Map<String, dynamic> json) {
    return YouTubeSearchItem(
      kind: json['kind'] ?? '',
      etag: json['etag'] ?? '',
      id: VideoId.fromJson(json['id'] ?? {}),
      snippet: Snippet.fromJson(json['snippet'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'etag': etag,
      'id': id.toJson(),
      'snippet': snippet.toJson(),
    };
  }
}

class VideoId {
  final String kind;
  final String videoId;

  VideoId({
    required this.kind,
    required this.videoId,
  });

  factory VideoId.fromJson(Map<String, dynamic> json) {
    return VideoId(
      kind: json['kind'] ?? '',
      videoId: json['videoId'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'kind': kind,
      'videoId': videoId,
    };
  }
}

class Snippet {
  final String publishedAt;
  final String channelId;
  final String title;
  final String description;
  final Thumbnails thumbnails;
  final String channelTitle;
  final String liveBroadcastContent;
  final String publishTime;

  Snippet({
    required this.publishedAt,
    required this.channelId,
    required this.title,
    required this.description,
    required this.thumbnails,
    required this.channelTitle,
    required this.liveBroadcastContent,
    required this.publishTime,
  });

  factory Snippet.fromJson(Map<String, dynamic> json) {
    return Snippet(
      publishedAt: json['publishedAt'] ?? '',
      channelId: json['channelId'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      thumbnails: Thumbnails.fromJson(json['thumbnails'] ?? {}),
      channelTitle: json['channelTitle'] ?? '',
      liveBroadcastContent: json['liveBroadcastContent'] ?? '',
      publishTime: json['publishTime'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'publishedAt': publishedAt,
      'channelId': channelId,
      'title': title,
      'description': description,
      'thumbnails': thumbnails.toJson(),
      'channelTitle': channelTitle,
      'liveBroadcastContent': liveBroadcastContent,
      'publishTime': publishTime,
    };
  }
}

class Thumbnails {
  final Thumbnail? defaultThumbnail;
  final Thumbnail? medium;
  final Thumbnail? high;

  Thumbnails({
    this.defaultThumbnail,
    this.medium,
    this.high,
  });

  factory Thumbnails.fromJson(Map<String, dynamic> json) {
    return Thumbnails(
      defaultThumbnail:
          json['default'] != null ? Thumbnail.fromJson(json['default']) : null,
      medium:
          json['medium'] != null ? Thumbnail.fromJson(json['medium']) : null,
      high: json['high'] != null ? Thumbnail.fromJson(json['high']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'default': defaultThumbnail?.toJson(),
      'medium': medium?.toJson(),
      'high': high?.toJson(),
    };
  }
}

class Thumbnail {
  final String url;
  final int width;
  final int height;

  Thumbnail({
    required this.url,
    required this.width,
    required this.height,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      url: json['url'] ?? '',
      width: json['width'] ?? 0,
      height: json['height'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'width': width,
      'height': height,
    };
  }
}
