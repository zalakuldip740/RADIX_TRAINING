import 'package:expandable_bottom_sheet/features/expandable_bottom_sheet/presentation/widgets/bottomsheet_editor_pics_view.dart';
import 'package:expandable_bottom_sheet/features/expandable_bottom_sheet/presentation/widgets/bottomsheet_favorite_view.dart';
import 'package:expandable_bottom_sheet/features/expandable_bottom_sheet/presentation/widgets/bottomsheet_header_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  final ScrollController scrollController;
  const BottomSheetView({required this.scrollController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          controller: scrollController,
          children: const [
            Icon(CupertinoIcons.chevron_compact_up),
            SizedBox(
              height: 10,
            ),
            BottomSheetHeaderWidget(),
            SizedBox(
              height: 10,
            ),
            BottomSheetFavoriteView(),
            SizedBox(
              height: 10,
            ),
            EditorsPicsView()
          ],
        ),
      ),
    );
  }
}
