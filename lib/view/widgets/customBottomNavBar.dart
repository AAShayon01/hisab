import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hisab/provider/auth_provider.dart';
import 'package:hisab/provider/noteProvider.dart';
import 'package:hisab/view/screen/chart.dart';
import 'package:hisab/view/screen/homepage.dart';
import 'package:hisab/view/screen/profile.dart';
import 'package:provider/provider.dart';
import '../../utils/app_constant.dart';
import '../screen/note.dart';

class CurvedNavigationBarPage extends StatefulWidget {
  const CurvedNavigationBarPage({super.key});

  @override
  State<CurvedNavigationBarPage> createState() =>
      _CurvedNavigationBarPageState();
}

class _CurvedNavigationBarPageState extends State<CurvedNavigationBarPage> {
  int _index = 0;

  final List<Widget> _pages = [
    const Homepage(),
    const Note(),
    const Chart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final notesProvider = Provider.of<NotesProvider>(context);

    return Scaffold(
      backgroundColor: AppConst.appBackgroundColor,
      body: _pages[_index],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10.h),
        child: Container(
          height: 86.h,
          // child: BottomNavigationBar(
          //   backgroundColor: Colors.transparent,
          //   items: [
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.home),
          //       label: 'Home',
          //       backgroundColor: AppConst.appBackgroundColor,
          //       type: BottomNavigationBarType.fixed,
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.note),
          //       label: 'Note',
          //       backgroundColor: Colors.white,
          //       type: BottomNavigationBarType.fixed,
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.pie_chart_outline),
          //       label: 'Chart',
          //       backgroundColor: AppConst.appBackgroundColor,
          //       type: BottomNavigationBarType.fixed,
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(Icons.person),
          //       label: 'Profile',
          //       backgroundColor: AppConst.appBackgroundColor,
          //       type: BottomNavigationBarType.fixed,
          //     ),
          //     // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: AppConst.appBackgroundColor),
          //     // BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Note', backgroundColor: Colors.white, textOverflow: TextOverflow.visible),
          //     // BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline), label: 'Chart', backgroundColor: AppConst.appBackgroundColor, textOverflow: TextOverflow.visible),
          //     // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile', backgroundColor: AppConst.appBackgroundColor, textOverflow: TextOverflow.visible),
          //         // Icon(Icons.ice_skating, size: 24.sp, color: Colors.green),
          //         // Icon(Icons.note, size: 24.sp, color: Colors.green),
          //         // Icon(Icons.pie_chart_outline, size: 24.sp, color: Colors.green),
          //         // Icon(Icons.person, size: 24.sp, color: Colors.green),
          //   ],
          //     onTap: (index) {
          //   setState(() {
          //     _index = index;
          //   });
          // },
          //     ),
          child:BottomNavigationBar(
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home', backgroundColor: AppConst.appBackgroundColor),
            BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Note', backgroundColor:AppConst.appBackgroundColor),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart_outline), label: 'Chart', backgroundColor: AppConst.appBackgroundColor),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile', backgroundColor: AppConst.appBackgroundColor),
          ],
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
        ),
        ),
      ),
      
      // CurvedNavigationBar(
      //   index: _index,
      //   backgroundColor: Colors.transparent,
      //   items: <Widget>[
      //     Icon(Icons.home, size: 24.sp, color: Colors.green),
      //     Icon(Icons.note, size: 24.sp, color: Colors.green),
      //     Icon(Icons.pie_chart_outline, size: 24.sp, color: Colors.green),
      //     Icon(Icons.person, size: 24.sp, color: Colors.green),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _index = index;
      //     });
      //   },
      // ),
    );
  }
}