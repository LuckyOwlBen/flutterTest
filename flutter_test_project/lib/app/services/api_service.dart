import 'package:chopper/chopper.dart';

@ChopperApi(
    baseUrl: 'https://dl.dropboxusercontent.com/s/2iodh4g0eortkl/facts.json')
abstract class ApiService extends ChopperService {
  @Get(path: '')
  Future<Response<FeedResponse>> getData();
}

class FeedResponse {
  String title = '';
  List<ImageData> images = [];
}

class ImageData {
  String title = '';
  String description = '';
  String imageHref = '';
}
