import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_files_clone/Constant.dart';

class FilesAppbar extends StatelessWidget with PreferredSizeWidget {
  const FilesAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: toolbarcolor,
      centerTitle: true,
      title: SvgPicture.asset(
        'assets/filesgo.svg',
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
