import 'package:flutter/material.dart';
import 'package:flutter_shop_cc/config/index.dart';
import 'home_page.dart';
import 'category_page.dart';
import 'cart_page.dart';
import 'member_page.dart';
import 'package:provider/provider.dart';
import '../provide/current_index_provide.dart';

class IndexPage extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomTabs = [
    const BottomNavigationBarItem(
      label: QString.homeTitle,
      icon: Icon(Icons.home),
    ),
    const BottomNavigationBarItem(
      label: QString.categoryTitle,
      icon: Icon(Icons.category),
    ),
    const BottomNavigationBarItem(
      label: QString.cartTitle,
      icon: Icon(Icons.shopping_cart),
    ),
    const BottomNavigationBarItem(
      label: QString.memberTitle,
      icon: Icon(Icons.person),
    ),
  ];

  final List<Widget> tabBodies = [
    const HomePage(),
    const CategoryPage(),
    const CartPage(),
    const MemberPage()
  ];

  IndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CurrentIndexProvide>(
        builder: (context, indexProvider, child) {
      int currentIndex = indexProvider.currentIndex;
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: bottomTabs,
          currentIndex: currentIndex,
          onTap: (index) {
            indexProvider.changeIndex(index);
          },
        ),
        body: IndexedStack(
          index: currentIndex,
          children: tabBodies,
        ),
      );
    });
  }
}
