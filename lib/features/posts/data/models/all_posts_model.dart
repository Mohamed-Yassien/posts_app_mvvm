import 'package:equatable/equatable.dart';
import 'package:flutter_mvvm/features/posts/data/models/post_data.dart';

class AllPostsModel extends Equatable {
  final List<PostData> allPosts;

  const AllPostsModel({
    required this.allPosts,
  });

  factory AllPostsModel.fromJson(List<dynamic> json) {
    return AllPostsModel(
      allPosts: json.map<PostData>((e) => PostData.fromJson(e)).toList(),
    );
  }

  @override
  List<Object> get props => [allPosts];
}
