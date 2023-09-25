// import 'package:apphud/apphud.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'app_links.dart';

// class Premium {
//   static Future<bool> getSubscription() async {
//     final prefs = await SharedPreferences.getInstance();
//     return prefs.getBool('ISBUY') ?? false;
//   }

//   static Future<void> setSubscription(bool value) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setBool('ISBUY', value);
//   }

//   static Future<void> checkRestore(context) async {
//     final hasPremiumAccess = await Apphud.hasPremiumAccess();
//     final hasActiveSubscription = await Apphud.hasActiveSubscription();
//     if (hasPremiumAccess || hasActiveSubscription) {
//       final prefs = await SharedPreferences.getInstance();
//       prefs.setBool("ISBUY", true);
//       showDialog(
//         context: context,
//         builder: (BuildContext context) => CupertinoAlertDialog(
//           title: const Text('Success!'),
//           content: const Text('Your purchase has been restored!'),
//           actions: [
//             CupertinoDialogAction(
//               isDefaultAction: true,
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 Navigator.popUntil(context, (route) => route.isFirst);
//               },
//               child: const Text('Ok'),
//             ),
//           ],
//         ),
//       );
//     } else {
//       showDialog(
//         context: context,
//         builder: (BuildContext context) => CupertinoAlertDialog(
//           title: const Text('Restore purchase'),
//           content: const Text(
//               'Your purchase is not found.\nSupport: ${AppLinks.supportForm}'),
//           actions: [
//             CupertinoDialogAction(
//               isDefaultAction: true,
//               onPressed: () => {Navigator.of(context).pop()},
//               child: const Text('Ok'),
//             ),
//           ],
//         ),
//       );
//     }
//   }
// }
