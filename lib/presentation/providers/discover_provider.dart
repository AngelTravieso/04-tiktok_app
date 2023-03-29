import 'package:flutter/material.dart';
import 'package:tiktok_app/domain/entities/video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  bool initialLoading = true;

  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    // TODO: cargar video

    notifyListeners();
  }
}
