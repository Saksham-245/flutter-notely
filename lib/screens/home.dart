import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../components/drawer_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerList(),
      backgroundColor: const Color.fromRGBO(248, 238, 226, 1),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/search.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
              tooltip: 'Menu',
              icon: SvgPicture.asset(
                'assets/images/drawer.svg',
                width: 20.w,
                height: 20.h,
              ),
              color: Colors.black,
              onPressed: () => Scaffold.of(context).openDrawer()),
        ),
        title: Center(
          child: Text(
            'All Notes',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontFamily: Theme.of(context).textTheme.headline2?.fontFamily,
              fontWeight: Theme.of(context).textTheme.headline2?.fontWeight,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 127.h,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/images/home.svg',
              height: 221.h,
              width: 268.w,
            ),
          ),
          SizedBox(
            height: 39.h,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 31.w,
              right: 30.w,
            ),
            child: Column(
              children: [
                Text(
                  'Create Your First Note',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight:
                        Theme.of(context).textTheme.headline2?.fontWeight,
                    fontFamily:
                        Theme.of(context).textTheme.headline2?.fontFamily,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  'Add a note about anything (your thoughts \n on climate change, or your history essay)\n and share it with the world.',
                  style: TextStyle(
                    color: const Color.fromRGBO(89, 85, 80, 1),
                    fontSize: 15.sp,
                    fontWeight:
                        Theme.of(context).textTheme.headline3?.fontWeight,
                    fontFamily:
                        Theme.of(context).textTheme.headline3?.fontFamily,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 77.h,
          ),
          Container(
            padding: EdgeInsets.only(left: 28.w, right: 28.w),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(
                  217,
                  97,
                  76,
                  1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 75.w,
                  vertical: 20.h,
                ),
              ),
              onPressed: () {},
              child: Text(
                'Create a Note',
                style: TextStyle(
                  height: 26.h / 16,
                  fontSize: 20,
                  letterSpacing: 1.92,
                  fontFamily: Theme.of(context).textTheme.headline2?.fontFamily,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
