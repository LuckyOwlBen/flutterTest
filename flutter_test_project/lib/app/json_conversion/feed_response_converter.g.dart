// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_response_converter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedResponse _$FeedResponseFromJson(Map<String, dynamic> json) => FeedResponse(
      title: json['title'] as String,
      rows: (json['rows'] as List<dynamic>)
          .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeedResponseToJson(FeedResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'rows': instance.rows,
    };

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      title: json['title'] as String,
      description: json['description'] as String,
      imageHref: json['imageHref'] as String,
    );

Map<String, dynamic> _$ImageDataToJson(ImageData instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imageHref': instance.imageHref,
    };
