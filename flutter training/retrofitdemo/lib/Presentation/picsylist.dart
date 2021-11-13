import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrofitdemo/Cubit/picsy_cubit.dart';

class PicsyList extends StatelessWidget {
  const PicsyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PicsyCubit, PicsyState>(
        builder: (context, state) {
          if (!(state is PicsyLoding))
            return Center(child: CircularProgressIndicator());
          List posts = context.read<PicsyCubit>().getoutput() as List;
          return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.black12,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.only(
                        top: 15, left: 10, right: 10, bottom: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              //width: 150,
                              alignment: Alignment.topCenter,
                              child: Image.network(
                                //'images/bookimg.png',
                                posts[index].imgHttpThumb!.toString(),
                                height: 100,
                                width: 100,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      posts[index].yearbookName!.toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      posts[index]
                                          .yearbookDescription!
                                          .desc!
                                          .toString(),
                                      //overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Pages: ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("Min 20 -Max 80")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Est.Delivery: ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("5-7 working days")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              posts[index].yearbookDescription!.price!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
                );
              });
        },
      ),
    );
  }
}
