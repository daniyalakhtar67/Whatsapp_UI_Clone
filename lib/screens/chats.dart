import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrContent=[
      {
        'image':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZ8dOFnXiyeT3SL4e2CrNvIUDxDu5rqEthaO2LXH-_Xg&s=10",
        "name":"Daniyal",
        "lastmsg":"Asalam-o-Alikum",
        "time":"5:45 am",
        "msg":"5",
      },
      {
        'image':"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-Z2eh-B1HpRGM1MM9zEcgWnjPPQFuH0FMJQkenCXN3g&s=10",
        "name":"Ahmed",
        "lastmsg":"Bhai Sun yr",
        "time":"3:23 pm",
        "msg":"2",
      },
      {
        'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4mes9gW8qBGrug6s2BYubBcp51DH8mrZFlZ-84UMMxA&s=10',
        'name':'tanveer',
        'lastmsg':'ok, got it.',
        'time':'7:21 am',
        'msg':'1',
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(arrContent[index]['image'].toString()),
              ),
              title: Text(arrContent[index]['name'].toString(),style: TextStyle(fontSize: 14)),
              subtitle: Text(arrContent[index]['lastmsg'].toString(), style: TextStyle(fontSize: 14,color: Color(0XFF889095))),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(arrContent[index]['time'].toString(), style: TextStyle(fontSize: 12,color: Color(0xFF026500))),
                  SizedBox(height: 4),
                  CircleAvatar(
                    radius: 6,
                    backgroundColor: Color(0XFF036A01),
                    child: Text(arrContent[index]['msg'].toString(),style: TextStyle(fontSize: 12,color: Colors.white),),
                  )
                ],
              ),
            );
                    },
                    itemCount: arrContent.length,
                    ),
          ),
        ]
      ),
      floatingActionButton: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0xFF008665),
        child: Image.asset('assets/images/chats.png'),
      )
    );
  }
}
