import 'package:adv_flutter_ch2/ch_2/task_1/provider/picker_provider.dart';
import 'package:adv_flutter_ch2/ch_2/task_4/provider/sliding_segment_provider.dart';
import 'package:adv_flutter_ch2/ch_2/task_5/view/task_1/home_screen.dart';
import 'package:adv_flutter_ch2/ch_2/task_5/view/task_2/provider/bottom_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ch_2/task_2/provider/platform.dart';
import 'ch_2/task_4/provider/sliding_provider.dart';
import 'ch_2/task_5/view/task_2/view/bottom_navigation_bar_screen.dart';
import 'ch_2/task_6/view/cupertinoactionsheet/Cupertino_Action_Sheet.dart';
import 'ch_2/task_6/view/cupertinocontextmenu/cupertino_context_menu_screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => PickerProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => BottomProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => PlatForm(),
    ),
    ChangeNotifierProvider(
      create: (context) => SlidingSegmentProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SlidingProvider(),
    )
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
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: ListSectionScreen(),
//     );
//   }
// }

//task 2.4
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       theme: CupertinoThemeData(
//         brightness: Provider.of<SlidingProvider>(context).themebrigtness,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: const CupertinoBottomTab(),
//     );
//   }
// }

//task 2.5.1
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }
//task 2.5.2
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BottomNavigationBarScreen(),
//     );
//   }
// }

//task 2.6
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoActionSheetScreen(),
    );
  }
}