// import 'package:contacts_service/contacts_service.dart';
//
// Future<List<String>> getContactlist() async {
//   List<String> phones = [];
//   Iterable<Contact> _contacts =
//       await ContactsService.getContacts(withThumbnails: false);
//   _contacts.forEach((contact) {
//     contact.phones!.toSet().forEach((phone) {
//       phones.add(phone.value!);
//     });
//   });
//   return phones as Future<List<String>>;
// }
