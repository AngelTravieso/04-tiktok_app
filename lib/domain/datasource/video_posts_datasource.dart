import 'package:tiktok_app/domain/entities/video_post.dart';

abstract class VideoPostDataSource {
  Future<List<VideoPost>> getFavoriteVideosByUser(int page);
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
}
