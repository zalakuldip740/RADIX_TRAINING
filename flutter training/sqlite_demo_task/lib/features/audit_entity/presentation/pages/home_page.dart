import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_demo_task/features/audit_entity/presentation/cubit/audit_entity_cubit.dart';
import 'package:sqlite_demo_task/features/audit_entity/presentation/widgets/audit_entity_list_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  final auditEntityNameController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    auditEntityNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("AuditEntity List"),
      ),
      body: SafeArea(
        child: BlocBuilder<AuditEntityCubit, AuditEntityState>(
          builder: (context, state) {
            if (state is AuditEntityInitial) {
              BlocProvider.of<AuditEntityCubit>(context).getAuditEntity();
              return const Center(child: CircularProgressIndicator());
            } else if (state is AuditEntityLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is AuditEntityError) {
              return const Center(child: Text("error while fetching data"));
            } else if (state is AuditEntityLoaded) {
              //print(state.auditEntitydata.length);
              return auditListBody(
                  state.auditEntitydata, auditEntityNameController, _formKey);
            }
            return const Center(child: Text("something went wrong!!"));
          },
        ),
      ),
    );
  }
}
