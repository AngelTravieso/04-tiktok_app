import 'package:flutter/material.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';
import 'package:tiktok_app/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  // TODO: Repository, DataSource
  final VideoPostsRepository videosRepository;

  bool initialLoading = true;

  List<VideoPost> videos = [];

  DiscoverProvider({
    required this.videosRepository,
  });

  Future<void> loadNextPage() async {
    // await Future.delayed(const Duration(seconds: 2));

    // final List<VideoPost> newVideos = videoPosts
    //     .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
    //     .toList();

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
