import 'package:flutter/material.dart';
import 'package:responsive_ui_task2/style.dart';

class UpgradCard extends StatelessWidget {
  const UpgradCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(18)),
        color: Colors.deepOrangeAccent.withOpacity(0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.deepOrangeAccent.withOpacity(0.6),
            child: Icon(
              Icons.stream,
              color: Colors.white,
            ),
            // backgroundImage: NetworkImage(
            //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_xcxCzYD8fQW6FB-cW8Iqs0JnY6EvVOqdTg&usqp=CAU"),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upgrade to Pro",
                style: TextThemes.cardtitlestyle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Learn More",
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
