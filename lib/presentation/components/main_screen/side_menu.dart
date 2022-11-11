import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_e_book/core/routes/app_routes.dart';
import 'package:my_e_book/core/utils/app_strings.dart';
import 'package:my_e_book/core/utils/styles_manager.dart';
import 'package:my_e_book/core/utils/values_manager.dart';
import 'package:my_e_book/presentation/controller/Theme/theme_cubit.dart';

class SideMenu extends StatelessWidget {
  final String headerImage;
  final double width;
  final double radius;

  const SideMenu({
    Key? key,
    required this.headerImage,
    this.width = AppSize.s250,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: width.w,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius.r)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppPadding.p5.r),
          child: Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  headerImage,
                  fit: BoxFit.cover,
                ),
              ),
              DrawerListTile(
                title: AppStrings.search,
                icon: Icons.search,
                press: () {
                  Navigator.of(context).pushNamed(Routes.searchRoute);
                },
              ),
              DrawerListTile(
                title: AppStrings.favourites,
                icon: Icons.star,
                press: () {
                  Navigator.of(context).pushNamed(Routes.favouritesRoute);
                },
              ),
              DrawerListTile(
                title: AppStrings.contactUs,
                icon: Icons.headset_mic_outlined,
                press: () {},
              ),
              DrawerListTile(
                title: AppStrings.changeTheme,
                icon: Icons.light_mode_outlined,
                press: () {
                  context.read<ThemeCubit>().changeTheme();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      style: ListTileStyle.drawer,
      leading: Icon(icon),
      title: Text(
        title,
        //TITLE SMALL
        style:
            getRegularAppBarTitleStyle(color: Theme.of(context).primaryColor),
        // style: Theme.of(context).textTheme.titleLarge,
      ),
      horizontalTitleGap: AppSize.s0,
      onTap: press,
    );
  }
}
