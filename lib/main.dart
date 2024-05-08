import 'package:adv_flutter_ch2/ch_2/task_1/provider/picker_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ch_2/task_2/provider/platform.dart';
import 'ch_2/task_3/view/cupertinolistsection/cupertino_list_section.dart';


void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => PickerProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => PlatForm(),
    ),
  ], child: const MyApp()));
}
//TASK 2.1
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//           timePickerTheme: TimePickerThemeData(
//             cancelButtonStyle: ButtonStyle(
//                 foregroundColor:
//                     MaterialStateColor.resolveWith((states) => Colors.green)),
//             confirmButtonStyle: ButtonStyle(
//                 foregroundColor:
//                     MaterialStateColor.resolveWith((states) => Colors.green)),
//             inputDecorationTheme: InputDecorationTheme(
//                 fillColor:
//                     MaterialStateColor.resolveWith((states) => Colors.green)),
//           ),
//           datePickerTheme: DatePickerThemeData(
//               shadowColor:
//                   MaterialStateColor.resolveWith((states) => Colors.grey),
//               cancelButtonStyle: ButtonStyle(
//                   foregroundColor:
//                       MaterialStateColor.resolveWith((states) => Colors.green)),
//               confirmButtonStyle: ButtonStyle(
//                   foregroundColor:
//                       MaterialStateColor.resolveWith((states) => Colors.green)),
//               dayOverlayColor:
//                   MaterialStateColor.resolveWith((states) => Color(0xffE5EADD)),
//               inputDecorationTheme: InputDecorationTheme(
//                   fillColor:
//                       MaterialStateColor.resolveWith((states) => Colors.green)),
//               rangePickerHeaderBackgroundColor: MaterialStateColor.resolveWith(
//                   (states) => Colors.green.shade100)),
//           appBarTheme: AppBarTheme(
//               color: Colors.green.shade300,
//               titleTextStyle: TextStyle(color: Colors.white, fontSize: 25))),
//       debugShowCheckedModeBanner: false,
//       home: TimePickerScreen(),
//     );
//   }
// }


//TASK 2.2
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const AdaptiveWidegt();
//   }
// }

//task 2.3
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoListSectionScreen(),
    );
  }
}


