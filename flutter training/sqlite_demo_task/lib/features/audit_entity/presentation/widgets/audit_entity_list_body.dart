import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sqlite_demo_task/features/audit_entity/presentation/cubit/audit_entity_cubit.dart';
import 'package:sqlite_demo_task/features/audit_entity/presentation/widgets/update_dialog.dart';

Widget auditListBody(List data, TextEditingController auditEntityNameController,
    GlobalKey<FormState> formKey) {
  return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            child: Slidable(
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
                              content:
                                  const Text("Are you sure want to delete?"),
                              elevation: 0.0,
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Cancel')),
                                ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<AuditEntityCubit>(context)
                                          .deleteAuditEntityData(
                                              data[index].auditEntityId);
                                      Navigator.pop(context);
                                    },
                                    child: const Text('OK')),
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
                title: Text(
                  data[index].auditEntityName.toString(),
                  style: const TextStyle(fontWeight: FontWeight.w900),
                ),
                subtitle: Row(
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.clock,
                      size: 15,
                      color: Colors.black38,
                    ),
                    if (data[index].entityEndDate == null)
                      const Text(' Not Available'),
                    if (data[index].entityEndDate != null)
                      Text(" " +
                          DateFormat('dd-MM-yyyy').format(DateTime.parse(
                              data[index].entityEndDate.toString()))),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
