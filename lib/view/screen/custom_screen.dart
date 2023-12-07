import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/utils/app_constant.dart';
import 'package:hisab/view/screen/profile.dart';

import 'chart.dart';
import 'homepage.dart';
import 'note.dart';
class MyCustomScreen extends StatefulWidget {
  const MyCustomScreen({super.key});

  @override
  State<MyCustomScreen> createState() => _MyCustomScreenState();
}

class _MyCustomScreenState extends State<MyCustomScreen> {
  int _pageIndex=0;
  final pages=const [
    Homepage(),
    Note(),
    Chart(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: pages[_pageIndex],
      bottomNavigationBar: Container(
        height: 86.h,
        color: const Color(0xFF212427),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow:const [
            BoxShadow(
              color: Color(0xBF000000),
              blurRadius: 86,
              offset: Offset(0, 0),
              spreadRadius: 1,
            )
          ]
        ),
        child: Padding(
          padding:EdgeInsets.only(bottom:14.h,left: 15.w,right: 15.w ),
          child: Row(
            children: [
              // Column(
              //   children: [
              //     Image.asset('assets/icon/home.png',height: 24.h,width: 24.w,),
              //     Text('Home',style: AppConst.navBarTextStyle,)
              //   ],
              // ),
              // Column(
              //   children: [
              //     Image.asset('assets/icon/note.png',height: 24.h,width: 24.w,),
              //     Text('Note',style: AppConst.navBarTextStyle,)
              //   ],
              // ),
              // Column(
              //   children: [
              //     Image.asset('assets/icon/Chart.png',height: 24.h,width: 24.w,),
              //     Text('Chart',style: AppConst.navBarTextStyle,)
              //   ],
              // ),
              // Column(
              //   children: [
              //     Image.asset('assets/icon/user.png',height: 24.h,width: 24.w,),
              //     Text('Profile',style: AppConst.navBarTextStyle,)
              //   ],
              // ),

            ],
          ),
        ),
      ),
    );
  }
}

// Widget buildNavBarItem(IconData icon, String text, int index) {
//   return GestureDetector(
//     onTap: () {
//       setState(() {
//         _selectedIndex = index;
//       });
//     },
//     child: Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Icon(icon, color: _selectedIndex == index ? Colors.white : Colors.grey),
//         SizedBox(height: 5.0),
//         Text(
//           text,
//           style: TextStyle(
//             color: _selectedIndex == index ? Colors.white : Colors.grey,
//           ),
//         ),
//       ],
//     ),
//   );
// }
// }
