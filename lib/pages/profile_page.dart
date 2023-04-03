import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../tabs/feed_view.dart';
import '../tabs/reels_view.dart';
import '../tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Widget> tabs = const [
    // feed
    Tab(icon: Icon(
      Icons.image,
      color: Colors.cyan,
    ),),
    // reels
    Tab(icon: Icon(
      Icons.video_collection,
      color: Colors.cyan,
    ),),
    // tagged
    Tab(icon: Icon(
      Icons.bookmark,
      color: Colors.cyan,
    ),),
  ];

  final List<Widget> tabBarViews = [
    // feed view
    const FeedView(),
    // reels view
    const ReelsView(),
    // tagged view
    const TaggedView(),
  ];


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: [
              // profile
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // following
                  Column(
                    children: [
                      Text("364"),
                      Text("Following"),
                    ],
                  ),
                  // profile picture
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0.w, 
                      vertical: 12.0.h,
                    ),
                    child: Container(
                      height: 120.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        color: Colors.cyan[400],
                      ),
                    ),
                  ),
                  // followers
                  Column(
                    children: [
                      Text("30.4k"),
                      Text("Followers"),
                    ],
                  ),
                ],
              ),
              TabBar(
                tabs: tabs,
              ),
        
              Expanded(
                child: TabBarView(
                  children: tabBarViews,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}