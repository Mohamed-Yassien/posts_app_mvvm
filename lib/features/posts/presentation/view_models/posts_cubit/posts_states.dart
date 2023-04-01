import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvm/features/posts/data/models/all_posts_model.dart';

@immutable
abstract class PostsStates {}

class PostsInitialState extends PostsStates {}

class GetAllPostsLoadingState extends PostsStates {}

class GetAllPostsSuccessState extends PostsStates {
  final AllPostsModel allPostsModel;

  GetAllPostsSuccessState({
    required this.allPostsModel,
  });
}

class GetAllPostsErrorState extends PostsStates {}
