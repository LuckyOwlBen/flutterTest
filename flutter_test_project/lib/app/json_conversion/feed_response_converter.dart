import "package:json_annotation/json_annotation.dart";

part 'feed_response_converter.g.dart';

@JsonSerializable()
class FeedResponse {
  String title;
  List<ImageData> rows;

  FeedResponse({required this.title, required this.rows});

  factory FeedResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedResponseFromJson(json);
  Map<String, dynamic> toJson() => _$FeedResponseToJson(this);
}

@JsonSerializable()
class ImageData {
  String title;
  String description;
  String imageHref;

  ImageData(
      {required this.title,
      required this.description,
      required this.imageHref});

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);
  Map<String, dynamic> toJson() => _$ImageDataToJson(this);
}
