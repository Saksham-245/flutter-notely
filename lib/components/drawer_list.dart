import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerList extends StatefulWidget {
  const DrawerList({super.key});

  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromRGBO(248, 238, 226, 1),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.h),
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
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/premium.svg',
              width: 36.w,
              height: 36.h,
            ),
            title: Text(
              'Buy Premium',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromRGBO(89, 85, 85, 1),
                fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
                fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: SvgPicture.asset(
              'assets/images/arrow.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/edit-profile.svg',
              width: 36.w,
              height: 36.h,
            ),
            title: Text(
              'Edit Profile',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromRGBO(89, 85, 85, 1),
                fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
                fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: SvgPicture.asset(
              'assets/images/arrow.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/app-theme.svg',
              width: 36.w,
              height: 36.h,
            ),
            title: Text(
              'App Theme',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromRGBO(89, 85, 85, 1),
                fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
                fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: SvgPicture.asset(
              'assets/images/arrow.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/notification.svg',
              width: 36.w,
              height: 36.h,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromRGBO(89, 85, 85, 1),
                fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
                fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: SvgPicture.asset(
              'assets/images/arrow.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/security.svg',
              width: 36.w,
              height: 36.h,
            ),
            title: Text(
              'Security',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromRGBO(89, 85, 85, 1),
                fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
                fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: SvgPicture.asset(
              'assets/images/arrow.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          ListTile(
            leading: SvgPicture.asset(
              'assets/images/logout.svg',
              width: 36.w,
              height: 36.h,
            ),
            title: Text(
              'Log Out',
              style: TextStyle(
                fontSize: 16.sp,
                color: const Color.fromRGBO(89, 85, 85, 1),
                fontFamily: Theme.of(context).textTheme.headline3?.fontFamily,
                fontWeight: Theme.of(context).textTheme.headline3?.fontWeight,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
            trailing: SvgPicture.asset(
              'assets/images/arrow.svg',
              width: 20.w,
              height: 20.h,
            ),
          ),
        ],
      ),
    );
  }
}
