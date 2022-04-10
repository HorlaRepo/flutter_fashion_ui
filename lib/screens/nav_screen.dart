import 'package:fashion_store_ui/screens/home_screen.dart';
import 'package:fashion_store_ui/screens/top_sales_screen.dart';
import 'package:fashion_store_ui/widgets/custom_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const TopSalesScreen(),
    const Scaffold(),
    const Scaffold(),
  ];

  final List<IconData> _icons = const [
    CupertinoIcons.house_alt_fill,
    CupertinoIcons.square_grid_2x2_fill,
    CupertinoIcons.bag_fill,
    CupertinoIcons.search,
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        backgroundColor: const Color(0xff202020),
        body: IndexedStack(
          index: _selectedIndex,
          children: _screens,
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 15.0, top: 12.0),
          child: CustomTabBar(
            icons: _icons,
            selectedIndex: _selectedIndex,
            onTap: (index) => setState(
              () => _selectedIndex = index,
            ),
          ),
        ),
      ),
    );
  }
}
