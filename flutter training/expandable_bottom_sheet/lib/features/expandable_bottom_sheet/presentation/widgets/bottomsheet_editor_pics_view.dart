import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/bottom_sheet_cubit.dart';

class EditorsPicsView extends StatefulWidget {
  const EditorsPicsView({Key? key}) : super(key: key);

  @override
  _EditorsPicsViewState createState() => _EditorsPicsViewState();
}

class _EditorsPicsViewState extends State<EditorsPicsView> {
  @override
  void initState() {
    BlocProvider.of<BottomSheetCubit>(context).getDatas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomSheetCubit, BottomSheetState>(
      builder: (context, state) {
        if (state is BottomSheetLoaded) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Editor's Pics",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.datas.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Stack(
                            alignment: AlignmentDirectional.center,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                child: Image.network(
                                  state.datas[index].imageUrl,
                                  width: 150,
                                  height: 230,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                  bottom: 60,
                                  child: Text(
                                    state.datas[index].title,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  )),
                              Positioned(
                                  bottom: 10,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    // color: Colors.black.withOpacity(0.1),
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 1,
                                          blurRadius: 7,
                                          offset: const Offset(0, 3),
                                        ),
                                      ],
                                    ),
                                    width: 150,
                                    height: 50,
                                    child: Text(
                                      state.datas[index].desc,
                                      style:
                                          const TextStyle(color: Colors.white),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                    ),
                                  ))
                            ],
                          ),
                        )),
              ),
            ],
          );
        } else if (state is BottomSheetLoading) {
          return const CircularProgressIndicator();
        } else if (state is BottomSheetError) {
          return const Text("Error msg");
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
