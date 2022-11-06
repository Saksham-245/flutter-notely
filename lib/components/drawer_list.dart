import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(248, 238, 226, 1),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: Text(
              'Notely',
              style: TextStyle(
                fontSize: 20.sp,
                color: Colors.black,
                fontFamily: Theme.of(context).textTheme.headline1?.fontFamily,
                fontWeight: Theme.of(context).textTheme.headline1?.fontWeight,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 44.h,
          ),
          DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(248, 238, 226, 1),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color.fromRGBO(229, 213, 197, 1),
                  child: Image(
                    width: 160.w,
                    height: 160.h,
                    image: const AssetImage('assets/images/profile.png'),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Shambhavi Mishra',
                  style: TextStyle(
                    fontSize: 19.sp,
                    color: Colors.black,
                    fontFamily:
                        Theme.of(context).textTheme.headline2?.fontFamily,
                    fontWeight:
                        Theme.of(context).textTheme.headline2?.fontWeight,
                  ),
                ),
                Text(
                  'Lucknow,India',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: const Color.fromRGBO(89, 85, 80, 1),
                    fontFamily:
                        Theme.of(context).textTheme.headline3?.fontFamily,
                    fontWeight:
                        Theme.of(context).textTheme.headline3?.fontWeight,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
