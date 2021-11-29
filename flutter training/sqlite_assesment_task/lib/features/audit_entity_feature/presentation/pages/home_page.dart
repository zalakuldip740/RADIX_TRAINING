import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/presentation/cubit/audit_entity_cubit.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/presentation/widgets/audit_entity_list_body.dart';

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
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<AuditEntityCubit, AuditEntityState>(
          builder: (context, state) {
            if (state is AuditEntityInitial) {
              //BlocProvider.of<AuditEntityCubit>(context).getAuditEntity();
              return const Center(child: CircularProgressIndicator());
            } else if (state is AuditEntityLoaded) {
              print(state.data.length);
              return auditListBody(
                  state.data, auditEntityNameController, _formKey);
            }
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.red,
            ));
          },
        ),
      ),
    );
  }
}
