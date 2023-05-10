class Status {
  int? code;
  String? text;
  String? level;
  bool? isReady;

  Status({this.code, this.text, this.level, this.isReady});

  @override
  String toString() {
    return 'Status(code: $code, text: $text, level: $level, isReady: $isReady)';
  }

  factory Status.fromJson(Map<String, dynamic> json) {
    return Status(
      code: json['code'] as int?,
      text: json['text'] as String?,
      level: json['level'] as String?,
      isReady: json['isReady'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        'text': text,
        'level': level,
        'isReady': isReady,
      };

  Status copyWith({
    int? code,
    String? text,
    String? level,
    bool? isReady,
  }) {
    return Status(
      code: code ?? this.code,
      text: text ?? this.text,
      level: level ?? this.level,
      isReady: isReady ?? this.isReady,
    );
  }
}
