import 'package:adv_flutter_ch2/ch_2/task_1/provider/picker_provider.dart';
import 'package:adv_flutter_ch2/ch_2/task_4/provider/sliding_segment_provider.dart';
import 'package:adv_flutter_ch2/ch_2/task_5/view/task_2/provider/bottom_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ch_2/task_2/provider/platform.dart';
import 'ch_2/task_4/provider/sliding_provider.dart';
import 'ch_2/task_7/provider/platfrom_provider.dart';
import 'ch_2/task_8/view/sliverscreen/sliver_screen.dart';

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
    ),
    ChangeNotifierProvider(create: (context) => PlatfromProvider(),)
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
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       debugShowCheckedModeBanner: false,
//       home: CupertinoActionSheetScreen(),
//     );
//   }
// }
//

//task2.7
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const PlatfromAdaptive();
//   }
// }

//task2.8
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverScreen(),
    );
  }
}