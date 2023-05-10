class AiImage {
  String? id;
  int? type;
  bool? isNsfw;
  String? caption;
  String? full;
  String? preview;
  String? style;

  AiImage({
    this.id,
    this.type,
    this.isNsfw,
    this.caption,
    this.full,
    this.preview,
    this.style,
  });

  @override
  String toString() {
    return 'Output(id: $id, type: $type, isNsfw: $isNsfw, caption: $caption, full: $full, preview: $preview, style: $style)';
  }

  factory AiImage.fromJson(Map<String, dynamic> json) {
    return AiImage(
      id: json['id'] as String?,
      type: json['type'] as int?,
      isNsfw: json['isNsfw'] as bool?,
      caption: json['caption'] as String?,
      full: json['full'] as String?,
      preview: json['preview'] as String?,
      style: json['style'] as String?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'type': type,
        'isNsfw': isNsfw,
        'caption': caption,
        'full': full,
        'preview': preview,
        'style': style,
      };

  AiImage copyWith({
    String? id,
    int? type,
    bool? isNsfw,
    String? caption,
    String? full,
    String? preview,
    String? style,
  }) {
    return AiImage(
      id: id ?? this.id,
      type: type ?? this.type,
      isNsfw: isNsfw ?? this.isNsfw,
      caption: caption ?? this.caption,
      full: full ?? this.full,
      preview: preview ?? this.preview,
      style: style ?? this.style,
    );
  }
}
