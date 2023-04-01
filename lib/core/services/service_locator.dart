import 'package:flutter_mvvm/features/posts/data/repos/posts_repository.dart';
import 'package:flutter_mvvm/features/posts/presentation/view_models/posts_cubit/posts_cubit.dart';
import 'package:get_it/get_it.dart';


final GetIt sl = GetIt.instance;
class AppServiceLocator {


  void setUpLocator() {
    sl.registerLazySingleton<PostsRepository>(() => PostsRepositoryImpl());
    sl.registerLazySingleton(() => PostsCubit(postsRepository: sl()));
  }
}
