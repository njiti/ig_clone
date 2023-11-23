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
  // tabs
  final List<Widget> tabs = const [
    // feed tab
    Tab(
      icon: Icon(
        Icons.image,
        color: Colors.grey,
      ),
    ),

    // reels tab
    Tab(
      icon: Icon(
          Icons.video_collection,
          color: Colors.grey,
      ),
    ),

    // tagged tab
    Tab(
      icon: Icon(
          Icons.bookmark,
          color: Colors.grey,
      ),
    ),
  ];

  // tab bar views
  final List<Widget> tabBarViews = [
    // feed view
    FeedView(),

    // reels view
    ReelsView(),

    // tagged view
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 50),
              // profile details
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // following
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '364',
                        style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                          'Following',
                          style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),

                  // profile pic
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                      ),
                  ),

                  // followers
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '21.2k',
                        style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),
              // name
              const Text('Mitch Koko'),

              // bio

              // link

              // buttons

              // tab bar

              // tab bar

              TabBar(
                tabs: tabs,
              ),

            //tab bar view
            Expanded(child: TabBarView(children: tabBarViews)),
          ],
        ),
        ),
    );
  }
}