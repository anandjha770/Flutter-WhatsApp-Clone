import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

class CallPage extends StatefulWidget {
  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(dummyData[index].avtartUrl),
            ),
            title: Text(dummyData[index].name),
            subtitle: Row(
              children: [
                Icon(Icons.north_east,size: 15,),
                Text("Yesterday,"),
                SizedBox(width: 5,),
                Text("09:30 pm")
              ],
            ),
            trailing: Icon(Icons.video_call),
          )
        ],
      ),
    );
  }
}
