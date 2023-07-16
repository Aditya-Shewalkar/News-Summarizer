import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_summary/modules/home/repo/home_screen_repo.dart';

final homeScreenProvider =
    ChangeNotifierProvider<HomeScreenRepo>((ref) => HomeScreenRepo());
