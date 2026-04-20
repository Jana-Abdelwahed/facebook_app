import 'package:facebook_app/story_data.dart';
import 'package:facebook_app/view_story_widget.dart';
import 'package:flutter/material.dart';

import 'create_story_widget.dart';

class HomeWithTabs extends StatefulWidget {
  HomeWithTabs({super.key});

  @override
  State<HomeWithTabs> createState() => _HomeWithTabsState();
}

class _HomeWithTabsState extends State<HomeWithTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;


  final List<Tab> myTabs = [
    Tab(icon: Image.asset('assets/images/Vector.png')),
    Tab(icon: Image.asset('assets/images/Group.png')),
    Tab(icon: Image.asset('assets/images/Store.png')),
    Tab(icon: Image.asset('assets/images/Profile.png')),
    Tab(icon: Image.asset('assets/images/Notification.png')),
    Tab(icon: Image.asset('assets/images/Ellipse.png')),

  ];
  final List<Map<String, String>> posts = [
    {
      "userImage": "assets/images/route.jpg",
      "userName": "Route",
      "postImage": "assets/images/routes.jpg",
      "postText": ""
    },
    {
      "userImage": "assets/images/route.jpg",
      "userName": "Route",
      "postImage": "assets/images/routes.jpg",
      "postText": ""
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<StoryData> stories = [
      StoryData(
        userImage: 'assets/images/goat.png',
        storyImage: 'assets/images/messi.png',
      ),
      StoryData(
        userImage: 'assets/images/Ellipsem.png',
        storyImage: 'assets/images/lamin.png',
      ),
      StoryData(
        userImage: 'assets/images/soccer.jpg',
        storyImage: 'assets/images/soccers.jpg',
      ),

    ];
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/Facebook.png',width: 200,height: 70),
          actions: [
          SizedBox(height: 40,width: 30,child: Image.asset('assets/images/Plus.png')),
          SizedBox(height: 40,width: 30,child: Image.asset('assets/images/Search.png')),
          SizedBox(height: 40,width: 30,child: Image.asset('assets/images/Messenger.png')),

        ],
        backgroundColor: Color(0xFFFFFFFF),
        bottom: TabBar(
          controller: _tabController,
          tabs: myTabs,
          indicatorColor: Color(0xFF1877F2),
          labelColor: Color(0xFF1877F2),
          unselectedLabelColor: Color(0xFF1877F2),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                 SizedBox(height: 10),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    children: [
                       CircleAvatar(
                        radius: 24,
                        backgroundImage:AssetImage('assets/images/Ellipse.png')
                      ),

                       SizedBox(width: 10),

                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "What's on your mind?",
                            border: InputBorder.none,
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {

                        },
                        icon: Icon(Icons.image, color: Colors.green),
                      ),
                    ],
                  ),
                ),

                Divider(height: 1, thickness: 0.5),

                 SizedBox(height: 10),

                 Divider(height: 1, thickness: 0.5),

                SizedBox(
                  height: 220,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding:  EdgeInsets.all(8),
                    children: [
                       CreateStoryWidget(
                        userImage: 'https://i.pravatar.cc/150?img=3',
                      ),
                       SizedBox(width: 8),

                      for (var story in stories) ...[
                        ViewStoryWidget(
                          userImage: story.userImage,
                          storyImage: story.storyImage,
                        ),
                         SizedBox(width: 8),
                      ],
                    ],
                  ),
                ),
                Divider(height: 1, thickness: 0.5),
            Column(
              children: posts.map((post) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  child: Card(
                    elevation: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Post header
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage(post["userImage"]!),
                                  ),
                                   SizedBox(width: 8),
                                  Text(
                                    post["userName"]!,
                                    style:  TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                               Icon(Icons.more_horiz, color: Colors.black),
                            ],
                          ),
                        ),

                        if (post["postText"] != null)
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 8),
                            child: Text(post["postText"]!),
                          ),

                         SizedBox(height: 8),

                        if (post["postImage"] != null)
                          Image.asset(post["postImage"]!, fit: BoxFit.cover),

                         SizedBox(height: 8),

                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/like.png', width: 20, height: 20),
                                       SizedBox(width: 4),
                                    ],
                                  ),
                                   SizedBox(width: 12),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/comments.png', width: 20, height: 20),
                                       SizedBox(width: 4),
                                    ],
                                  ),
                                   SizedBox(width: 12),
                                  Row(
                                    children: [
                                      Image.asset('assets/images/share.png', width: 20, height: 20),
                                       SizedBox(width: 4),
                                    ],
                                  ),
                                ],
                              ),
                              Image.asset('assets/images/Bookmark.png', width: 20, height: 20),
                            ],
                          ),
                        ),

                         SizedBox(height: 8),
                      ],
                    ),
                  ),
                );
              }).toList(),


            ) ],

            ),

          ),

          Center(
            child: Text(
              'Video Content',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Center(
            child: Text(
              'Store Content',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Center(
            child: Text(
              'Profile Content',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Center(
            child: Text(
              'Notifications',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),Center(
            child: Text(
              'Settings',

              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),Center(
            child: Text(
              'Sittings',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}






