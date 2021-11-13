import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatRoomAppbar extends StatelessWidget {
  Map<String, dynamic> data;

  ChatRoomAppbar(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
          ),
          CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(data['Profileurl'] ??
                  "https://i.pinimg.com/originals/51/f6/fb/51f6fb256629fc755b8870c801092942.png")),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            //width: MediaQuery.of(context).size.width * 0.35,
            child: Text(
              data['Name'] ?? data['Mobile'] ?? "",
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
