class Thumbnail {
  String? url;
  String? outputItemId;
  int? width;
  int? height;

  Thumbnail({this.url, this.outputItemId, this.width, this.height});

  @override
  String toString() {
    return 'Thumbnail(url: $url, outputItemId: $outputItemId, width: $width, height: $height)';
  }

  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      url: json['url'] as String?,
      outputItemId: json['outputItemId'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'outputItemId': outputItemId,
        'width': width,
        'height': height,
      };

  Thumbnail copyWith({
    String? url,
    String? outputItemId,
    int? width,
    int? height,
  }) {
    return Thumbnail(
      url: url ?? this.url,
      outputItemId: outputItemId ?? this.outputItemId,
      width: width ?? this.width,
      height: height ?? this.height,
    );
  }
}
