import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm/core/app_strings.dart';
import 'package:flutter_mvvm/features/posts/presentation/view_models/posts_cubit/posts_cubit.dart';
import 'package:flutter_mvvm/features/posts/presentation/views/widgets/posts_view_body.dart';

import '../../../../core/services/service_locator.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PostsCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings.postsViewAppBarTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        body: const PostsViewBody(),
      ),
    );
  }
}
