import 'package:permission_handler/permission_handler.dart';

Future<PermissionStatus> getcontactpermission() async {
  final permissionStatus = Permission.contacts.status;
  if (permissionStatus != PermissionStatus.granted &&
      permissionStatus != PermissionStatus.permanentlyDenied) {
    final newpermission = await Permission.contacts.request();
    return newpermission;
  } else {
    return permissionStatus;
  }
}
