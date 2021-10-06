import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_graph_app/screens/profile_screen.dart';
import 'package:social_graph_app/widgets/posts_title.dart';

import './services/post_service.dart';
import './widgets/new_post.dart';
import './widgets/post.dart';
import './models/post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<PostService>(
            create: (ctx) => PostService(), child: const ProfileScreen()),
      ),
    );
  }
}