import 'package:flutter/material.dart';

import '../../../../core/config/app_constatnt.dart';

class BottomSheetFavoriteView extends StatelessWidget {
  const BottomSheetFavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Favorites",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildFavoriteItem("Home", Icons.home),
            const SizedBox(
              width: 10,
            ),
            _buildFavoriteItem("Work", Icons.work),
            const SizedBox(
              width: 10,
            ),
            _buildFavoriteItem("Add", Icons.add),
          ],
        ),
      ],
    );
  }
}

Widget _buildFavoriteItem(String title, IconData icon) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: kPrimaryLightColor),
        child: Icon(
          icon,
          color: Colors.blueAccent,
        ),
      ),
      Text(title)
    ],
  );
}
