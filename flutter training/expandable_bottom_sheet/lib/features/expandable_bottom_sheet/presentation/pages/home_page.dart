import 'package:expandable_bottom_sheet/features/expandable_bottom_sheet/presentation/widgets/bottomsheet_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Stack(
          children: <Widget>[
            const Center(child: Text("Bottom Sheet Example")),
            DraggableScrollableSheet(
              snap: true,
              snapSizes: const [0.20, 0.30, 1.0],
              maxChildSize: 1,
              initialChildSize: 0.20,
              minChildSize: 0.20,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return BottomSheetView(scrollController: scrollController);
              },
            ),
          ],
        ),
      ),
    );
  }
}
