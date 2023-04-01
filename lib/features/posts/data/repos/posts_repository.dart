import 'package:dio/dio.dart';

import '../models/all_posts_model.dart';

abstract class PostsRepository {
  Future<AllPostsModel> getAllPosts();
}

class PostsRepositoryImpl implements PostsRepository {
  @override
  Future<AllPostsModel> getAllPosts() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    return AllPostsModel.fromJson(response.data);
  }
}
