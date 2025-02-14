import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FdMainNavigationView extends StatefulWidget {
  const FdMainNavigationView({super.key});

  Widget build(context, FdMainNavigationController controller) {
    controller.view = this;
    /*
        Implement this @ controller!
        int selectedIndex = 0;
        updateIndex(int newIndex) {
          selectedIndex = newIndex;
          setState(() {});
        }
        */

    Widget getNavigationItem(IconData icon, int index) {
      return Expanded(
        child: GestureDetector(
          onTap: () => controller.updateIndex(index),
          child: Container(
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Icon(
              icon,
              color: controller.selectedIndex == index
                  ? Colors.orange
                  : Colors.grey,
            ),
          ),
        ),
      );
    }

    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const FdDashboardView(),
            Container(),
            Container(),
            Container(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          elevation: 2,
          tooltip: "Center Button",
          onPressed: () {},
          backgroundColor: Color(0xffff4e01),
          foregroundColor: Colors.white,
          child: const Icon(Icons.shopping_cart_outlined),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10.0,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                getNavigationItem(Icons.home_outlined, 0),
                getNavigationItem(Icons.confirmation_num_outlined, 1),
                const SizedBox(width: 50),
                getNavigationItem(Icons.favorite_border, 2),
                getNavigationItem(Icons.person_2_outlined, 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<FdMainNavigationView> createState() => FdMainNavigationController();
}
