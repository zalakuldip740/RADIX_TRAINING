import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_demo_task/features/audit_entity/presentation/cubit/audit_entity_cubit.dart';

updateDialog(GlobalKey<FormState> formKey, BuildContext context,
    TextEditingController auditEntityNameController, List data, int index) {
  return AlertDialog(
    title: const Text('Update AuditEntityName'),
    content: Form(
      key: formKey,
      child: TextFormField(
        onChanged: (value) {},
        controller: auditEntityNameController
          ..text = data[index].auditEntityName ?? "",
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please Enter AuditEntityName';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.name,
        decoration: const InputDecoration(
          labelText: 'Enter AuditEntityName ',
          border: OutlineInputBorder(),
        ),
      ),
    ),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel')),
      ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              BlocProvider.of<AuditEntityCubit>(context).updateAuditEntitydata(
                  auditEntityNameController.text, data[index].auditEntityId);
              Navigator.pop(context);
            }
          },
          child: const Text('Update')),
    ],
  );
}
