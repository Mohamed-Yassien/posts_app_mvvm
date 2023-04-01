import 'package:bloc/bloc.dart';
import 'package:flutter_mvvm/features/posts/presentation/view_models/posts_cubit/posts_states.dart';

import '../../../data/repos/posts_repository.dart';

class PostsCubit extends Cubit<PostsStates> {
  PostsRepository postsRepository;

  PostsCubit({
    required this.postsRepository,
  }) : super(PostsInitialState());

  getAllPosts() async {
    emit(GetAllPostsLoadingState());
    try {
      final posts = await postsRepository.getAllPosts();
      emit(GetAllPostsSuccessState(allPostsModel: posts));
    } catch (e) {
      print(e.toString());
      emit(GetAllPostsErrorState());
    }
  }
}
