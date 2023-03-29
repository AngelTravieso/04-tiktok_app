import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_app/config/theme/app_theme.dart';
import 'package:tiktok_app/infrastructure/datasources/local_video_datasource_impl.dart';
import 'package:tiktok_app/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:tiktok_app/presentation/providers/discover_provider.dart';
import 'package:tiktok_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostRepositoryImpl(
      videosDataSource: LocalVideoDataSourceImpl(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          // propiedad en false si quiero que se cree la instancia inmediatamente
          lazy: false,
          create: (_) => DiscoverProvider(videosRepository: videoPostRepository)
            ..loadNextPage(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'TokTik',
        home: const DiscoverScreen(),
      ),
    );
  }
}
