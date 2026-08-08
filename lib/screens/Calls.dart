import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var calldata = [
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSus2m-TPom908p53rz4wbfVmcLzn8Ryht9f8XOKcU9Hw&s=10',
        'name':'Zafar',
        'time':'8:31 am',
      },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfTEyOfYyPkwpGKVjYPP9eHHhSe2pYc5gy8MxH7yNoLg&s=10',
        'name':'Ali',
        'time':'11:23 am',
      },{
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCAsov6-hg3v6Fiz4xW9z7etxYosqgngO8R_qSLWev2A&s=10',
        'name':'Junaid',
        'time':'1:30 pm',
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Uihelper.CustomText(text: 'Recent Calls', height: 15),
                Icon(Icons.arrow_drop_down_rounded, color: Color(0xFF008665)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(calldata[index]['image'].toString()),
                ),
                title: Text(calldata[index]['name'].toString(),style: TextStyle(fontSize: 15)),
                subtitle: Text(calldata[index]['time'].toString(),style: TextStyle(fontSize: 15)),

              );
            },
            itemCount: calldata.length,
            ),
          )
        ],
      )
    );
  }
}
