import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';

import '../src/views/homepage/lib_hmpage.dart';
import '../src/views/profile/lib_profile.dart';
import '../src/views/orders/lib_orders.dart';

class BottomNavigation extends ConsumerStatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BottomNavigationState();
}

class _BottomNavigationState extends ConsumerState<BottomNavigation> {
  int index = 0;

  List<Widget> screens = const [
    HomeScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: BottomNavyBar(
        backgroundColor: Colors.white,
        selectedIndex: index,
        curve: Curves.easeIn,
        items: [
          BottomNavyBarItem(
            icon: const Icon(LineIcons.home),
            activeColor: Theme.of(context).primaryColor,
            title: const Text('Trang chủ'),
            inactiveColor: Theme.of(context).colorScheme.secondary,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(LineIcons.shoppingBag),
            activeColor: Theme.of(context).primaryColor,
            title: const Text('Đơn hàng'),
            textAlign: TextAlign.center,
            inactiveColor: Theme.of(context).colorScheme.secondary,
          ),
          BottomNavyBarItem(
            icon: const Icon(LineIcons.user),
            activeColor: Theme.of(context).primaryColor,
            title: const Text('Cá nhân'),
            inactiveColor: Theme.of(context).colorScheme.secondary,
            textAlign: TextAlign.center,
          ),
        ],
        onItemSelected: (val) {
          setState(() => index = val);
        },
      ),
    );
  }
}
