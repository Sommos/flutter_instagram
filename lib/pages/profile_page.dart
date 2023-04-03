import 'package:flutter/material.dart';

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
        body: SafeArea(
          child: Column(
            children: [

              const SizedBox(
                height: 10.0
              ),

              // profile
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // following
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "364",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(
                        height: 5.0
                      ),

                      Text(
                        "Following",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  // profile picture
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, 
                    ),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, 
                        color: Colors.cyan[400],
                      ),
                    ),
                  ),

                  // followers
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "30.4k",
                        style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          fontSize: 16,
                        ),
                      ),

                      SizedBox(
                        height: 5.0
                      ),

                      Text(
                        "Followers",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(
                height: 20.0
              ),

              // name 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const[
                  Text(
                    "Sommos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " | ",
                  ),
                  Text(
                    "Developer",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
              ),

              const SizedBox(
                height: 20.0
              ),

              // bio
              Text(
                "UI Designer • Programmer • Cheffing",
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),

              const SizedBox(
                height: 5.0
              ),
              
              // link
              Text(
                "github.com/Sommos",
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 20.0
              ),

              // buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
              
                    // edit profile
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(
                            "Edit Profile"
                          ),
                        ),
                      ),
                    ),
              
                    const SizedBox(
                      width: 10.0
                    ),
              
                    // contact
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text(
                            "Contact",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),


              // tab bar
              TabBar(
                tabs: tabs,
              ),
              
              // tab bar view
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