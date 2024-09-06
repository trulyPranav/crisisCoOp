import 'package:flutter/material.dart';
import 'package:yuva_hack/components/feed_app_bar.dart';
import 'package:yuva_hack/components/feed_container.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: ProfileComponent(),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Feedcontainer(),
              Feedcontainer(),
              Feedcontainer(),
              Feedcontainer(),
              Feedcontainer(),
            ],
          ),
        ),
      ),
    );
  }
}