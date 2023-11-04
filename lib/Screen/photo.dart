class Photos {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photos(
      this.albumId,
      this.id,
      this.title,
      this.url,
      this.thumbnailUrl,
      );

  factory Photos.fromJson(Map<String, dynamic> imageJson) {
    return Photos(
      imageJson['albumId'],
      imageJson['id'],
      imageJson['title'] ?? '',
      imageJson['url'] ?? '',
      imageJson['thumbnailUrl'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'albumId': albumId,
      'id': id,
      'title': title,
      'url': url,
      'thumbnailUrl': thumbnailUrl,
    };
  }
}
