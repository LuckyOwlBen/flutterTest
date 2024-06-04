import 'package:chopper/chopper.dart';

@ChopperApi(baseUrl: '/posts')
abstract class ApiService extends ChopperService {
  @Get(path: '/{id}')
  Future<Response<FeedResponse>> getPostById(@Path() int id);
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
