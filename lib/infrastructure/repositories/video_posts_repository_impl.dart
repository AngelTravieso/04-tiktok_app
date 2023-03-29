import 'package:tiktok_app/domain/datasources/video_posts_datasource.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';
import 'package:tiktok_app/domain/repositories/video_posts_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostRepositoryImpl({
    required this.videosDataSource,
  });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}
