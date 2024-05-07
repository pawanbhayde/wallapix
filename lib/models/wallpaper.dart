class _WallPaper {
  String url;

  _WallPaper({
    required this.url,
  });

  factory _WallPaper.fromJson(Map<dynamic, dynamic> json) {
    return _WallPaper(
      url: json['url'],
    );
  }
}

class Wallpaper {
  String id;
  String title;
  String creator;
  _WallPaper wallpaper;

  Wallpaper({
    required this.id,
    required this.title,
    required this.creator,
    required this.wallpaper,
  });

  factory Wallpaper.fromJson(Map<dynamic, dynamic> json) {
    return Wallpaper(
      id: json['id'],
      title: json['title'],
      creator: json['creator'],
      wallpaper: _WallPaper.fromJson(json['wallpaper']),
    );
  }
}
