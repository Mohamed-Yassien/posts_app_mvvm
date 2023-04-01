import 'package:flutter/material.dart';
import 'package:flutter_mvvm/core/services/service_locator.dart';
import 'package:flutter_mvvm/features/posts/presentation/views/posts_view.dart';

main() {
  AppServiceLocator().setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const PostsView(),
    );
  }
}
