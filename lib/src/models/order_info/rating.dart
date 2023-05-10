class Rating {
  int? total;

  Rating({this.total});

  @override
  String toString() => 'Rating(total: $total)';

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      total: json['total'] as int?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'total': total,
      };

  Rating copyWith({
    int? total,
  }) {
    return Rating(
      total: total ?? this.total,
    );
  }
}
