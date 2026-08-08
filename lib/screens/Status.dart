import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/uihelper.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var StatusContent=[
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAPf_062JKWOBQr9rKxfyjLtlwzCn6Wwx_fJ6vQDIAgQ&s=10',
        'name':'Faisal',
        'time':'15 min ago',
      },

      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSICmPX7HVrXVG2gS_IWLY_caJf42RHkS3GgaBlU_cUAQ&s=10',
        'name':'Ali',
        'time':'6 hours ago',
      },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDpZmR3BvJYT4JDYFTYxxjdedObZYJzKqZf_uVTgXqmQ&s=10',
        'name':'Shahzaib',
        'time':'18 hours ago',
      }
    ];

    return Scaffold(
      body: Column(
        children: [
            Row(
              children: [
                SizedBox(width: 20),
                Uihelper.CustomText(text: 'Status', height: 20),
              ],
            ),
          SizedBox(height: 10),
          ListTile(
            leading: Padding(padding: EdgeInsets.only(left: 5),
            child: Stack(
              children: [ CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREPpWOOuKWq_gmqd2Je6FH6XynPuZY9SnNlYdO_CEdLA&s=10'),
              ),
                Positioned(
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFF00A884),
                    radius: 10,
                    child: Center(child: Icon(Icons.add,color: Colors.white,size: 15)),
                  ),
                )
              ]
            ),
            ),
            title: Uihelper.CustomText(text: 'My Status', height: 20),
            subtitle:  Uihelper.CustomText(text: 'Tap to add status update', height: 15),
          ),
          SizedBox(height: 20),
          Padding(

            padding:  EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.CustomText(text: 'Recent Updated', height: 15),
                Icon(Icons.arrow_drop_down_outlined,color: Color(0xFF008665)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(StatusContent[index]['image'].toString()),
                ),
                title: Text(StatusContent[index]['name'].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                subtitle: Text(StatusContent[index]['time'].toString(),style: TextStyle(fontSize: 14),),
              );
            },
            itemCount: StatusContent.length,
            ),
          )
        ],
      )
    );
  }
}
