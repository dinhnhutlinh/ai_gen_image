import 'access.dart';
import 'input.dart';
import 'ai_image.dart';
import 'rating.dart';
import 'status.dart';
import 'thumbnail.dart';

class OrderInfo {
  String? id;
  String? type;
  String? name;
  String? slug;
  int? dateCreated;
  String? sortBy;
  Status? status;
  Input? input;
  List<AiImage>? output;
  Rating? rating;
  bool? isPack;
  List<Thumbnail>? thumbnails;
  int? availabilityStatus;
  int? availableUntil;
  Access? access;

  OrderInfo({
    this.id,
    this.type,
    this.name,
    this.slug,
    this.dateCreated,
    this.sortBy,
    this.status,
    this.input,
    this.output,
    this.rating,
    this.isPack,
    this.thumbnails,
    this.availabilityStatus,
    this.availableUntil,
    this.access,
  });

  @override
  String toString() {
    return 'OrderInfo(id: $id, type: $type, name: $name, slug: $slug, dateCreated: $dateCreated, sortBy: $sortBy, status: $status, input: $input, output: $output, rating: $rating, isPack: $isPack, thumbnails: $thumbnails, availabilityStatus: $availabilityStatus, availableUntil: $availableUntil, access: $access)';
  }

  factory OrderInfo.fromJson(Map<String, dynamic> json) {
    return OrderInfo(
      id: json['id'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      dateCreated: json['dateCreated'] as int?,
      sortBy: json['sortBy'] as String?,
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      input: json['input'] == null
          ? null
          : Input.fromJson(json['input'] as Map<String, dynamic>),
      output: (json['output'] as List<dynamic>?)
          ?.map((e) => AiImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      rating: json['rating'] == null
          ? null
          : Rating.fromJson(json['rating'] as Map<String, dynamic>),
      isPack: json['isPack'] as bool?,
      thumbnails: (json['thumbnails'] as List<dynamic>?)
          ?.map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      availabilityStatus: json['availabilityStatus'] as int?,
      availableUntil: json['availableUntil'] as int?,
      access: json['access'] == null
          ? null
          : Access.fromJson(json['access'] as Map<String, dynamic>),
    );
  }

  OrderInfo copyWith({
    String? id,
    String? type,
    String? name,
    String? slug,
    int? dateCreated,
    String? sortBy,
    Status? status,
    Input? input,
    List<AiImage>? output,
    Rating? rating,
    bool? isPack,
    List<Thumbnail>? thumbnails,
    int? availabilityStatus,
    int? availableUntil,
    Access? access,
  }) {
    return OrderInfo(
      id: id ?? this.id,
      type: type ?? this.type,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      dateCreated: dateCreated ?? this.dateCreated,
      sortBy: sortBy ?? this.sortBy,
      status: status ?? this.status,
      input: input ?? this.input,
      output: output ?? this.output,
      rating: rating ?? this.rating,
      isPack: isPack ?? this.isPack,
      thumbnails: thumbnails ?? this.thumbnails,
      availabilityStatus: availabilityStatus ?? this.availabilityStatus,
      availableUntil: availableUntil ?? this.availableUntil,
      access: access ?? this.access,
    );
  }
}
