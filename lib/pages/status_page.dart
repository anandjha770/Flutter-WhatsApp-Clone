import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/story_view_page.dart';

class StatusPage extends StatefulWidget {
  @override
  _StatusPageState createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://s3.amazonaws.com/wll-community-production/images/no-avatar.png"),
                    ),
                    Positioned(
                        bottom: 0.0,
                        right: 1.0,
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 15,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green, shape: BoxShape.circle),
                        ))
                  ],
                ),
                title: Text("My Status",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("Tap to add status update"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Viewed Status",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          ),
          Expanded(child: Container(
            padding: EdgeInsets.all(8.0),
            color: Colors.white,
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://images.unsplash.com/photo-1587502537745-84b86da1204f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"),
                  ),
                    title: Text(
                      "Anand Jha",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  subtitle: Text("Today, 20:16 PM"),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StoryPageView())),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
