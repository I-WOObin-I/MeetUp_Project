import 'package:flutter/material.dart';

class TeamDetailsView extends StatelessWidget {
  const TeamDetailsView({super.key});

  static const routeName = '/team_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Team Name'), // Replace with your team's name
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    'assets/team_banner.jpg', // Replace with your team's banner image path
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Team Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 48.0,
              margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 8.0), // Margin on the left
                    ElevatedButton(
                      onPressed: () {
                        // Handle Matches Button
                      },
                      child: Text('Matches'),
                    ),
                    SizedBox(width: 8.0), // Margin between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Handle Members Button
                      },
                      child: Text('Members'),
                    ),
                    SizedBox(width: 8.0), // Margin between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Handle Points Button
                      },
                      child: Text('Points'),
                    ),
                    SizedBox(width: 8.0), // Margin between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Handle Calendar Button
                      },
                      child: Text('Calendar'),
                    ),
                    SizedBox(width: 8.0), // Margin between buttons
                    ElevatedButton(
                      onPressed: () {
                        // Handle Sponsors Button
                      },
                      child: Text('Sponsors'),
                    ),
                    SizedBox(width: 8.0), // Margin on the right
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Latest Post $index'),
                  subtitle: Text('Posted on: ${DateTime.now().toString()}'),
                  onTap: () {
                    // Handle tapping on a post
                  },
                );
              },
              childCount: 10, // Replace with the number of posts
            ),
          ),
        ],
      ),
    );
  }
}
