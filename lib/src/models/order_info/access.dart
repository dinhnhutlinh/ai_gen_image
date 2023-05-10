class Access {
  bool? canRemove;
  bool? canFeedback;

  Access({this.canRemove, this.canFeedback});

  @override
  String toString() {
    return 'Access(canRemove: $canRemove, canFeedback: $canFeedback)';
  }

  factory Access.fromJson(Map<String, dynamic> json) {
    return Access(
      canRemove: json['canRemove'] as bool?,
      canFeedback: json['canFeedback'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'canRemove': canRemove,
        'canFeedback': canFeedback,
      };

  Access copyWith({
    bool? canRemove,
    bool? canFeedback,
  }) {
    return Access(
      canRemove: canRemove ?? this.canRemove,
      canFeedback: canFeedback ?? this.canFeedback,
    );
  }
}
