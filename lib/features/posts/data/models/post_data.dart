import 'package:equatable/equatable.dart';

class PostData extends Equatable {
  final int id;
  final String title, body;

  const PostData({
    required this.id,
    required this.body,
    required this.title,
  });

  factory PostData.fromJson(Map<String, dynamic> json) {
    return PostData(
      id: json['id'],
      body: json['body'],
      title: json['title'],
    );
  }

  @override
  List<Object> get props => [id, title, body];
}
