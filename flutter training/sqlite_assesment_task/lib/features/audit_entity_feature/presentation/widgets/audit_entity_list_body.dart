import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/presentation/cubit/audit_entity_cubit.dart';
import 'package:sqlite_assesment_task/features/audit_entity_feature/presentation/widgets/update_dialog.dart';

Widget auditListBody(List data, TextEditingController auditEntityNameController,
    GlobalKey<FormState> formKey) {
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Slidable(
          key: const ValueKey(0),
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return updateDialog(formKey, context,
                            auditEntityNameController, data, index);
                      });
                },
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.white,
                icon: Icons.edit,
                label: 'Update',
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Delete AuditEntity"),
                          content: Text("Are you sure want to delete?"),
                          elevation: 0.0,
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cancel')),
                            ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<AuditEntityCubit>(context)
                                      .delete(data[index]);
                                  Navigator.pop(context);
                                },
                                child: Text('OK')),
                          ],
                        );
                      });
                },
                backgroundColor: Colors.redAccent,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Delete',
              ),
            ],
          ),
          child: ListTile(
            title: Text(data[index].auditEntityName.toString()),
            subtitle: Text(data[index].entityEndDate.toString()),
          ),
        );
      });
}
