import 'package:flutter/material.dart';
import 'package:responsive_ui_task_day1/Screens/my_list_description.dart';
import 'package:responsive_ui_task_day1/Widgets/ListPageAppbar.dart';
import 'package:responsive_ui_task_day1/constatnts.dart';
import 'package:responsive_ui_task_day1/responsive_ui.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({Key? key}) : super(key: key);

  @override
  _MyListPageState createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  String defaultvalue = "default text";
  // ignore: non_constant_identifier_names
  int? TappedIndex;
  // ignore: non_constant_identifier_names
  Changedesc(String descvalue, int index) {
    setState(() {
      defaultvalue = descvalue;
      TappedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List itemname = [
      "item1",
      "item2",
      "item3",
      "item4",
      "item5",
    ];
    final List itemdesc = [
      "item1 description",
      "item2 description",
      "item3 description",
      "item4 description",
      "item5 description",
    ];
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  ListpageAppbar(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: itemname.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              if (Responsive.isMobile(context)) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListDecsription(
                                            itemdesc: itemdesc[index],
                                          )),
                                );
                              } else if (!Responsive.isMobile(context)) {
                                Changedesc(itemdesc[index], index);
                              }
                            },
                            child: ListTile(
                              title: Text(
                                itemname[index],
                                style: TextStyle(
                                    color: TappedIndex == index
                                        ? primarycolor
                                        : defaultcolor),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            if (!Responsive.isMobile(context))
              VerticalDivider(
                width: 0,
                color: Colors.grey,
              ),
            if (!Responsive.isMobile(context))
              Expanded(flex: 3, child: ListDecsription(itemdesc: defaultvalue))
          ],
        ),
      ),
    );
  }
}
