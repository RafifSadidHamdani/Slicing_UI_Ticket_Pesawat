import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvMainNavigationView extends StatefulWidget {
  const TvMainNavigationView({super.key});

  Widget build(context, TvMainNavigationController controller) {
    controller.view = this;
    /*
        Implement this @ controller!
        int selectedIndex = 0;
        updateIndex(int newIndex) {
          selectedIndex = newIndex;
          setState(() {});
        }
        */
    return DefaultTabController(
      length: 4,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            TvDashboardView(),
            Container(
              color: Colors.green,
            ),
            Container(
              color: Colors.blue,
            ),
            Container(
              color: Colors.purple,
            ),
          ],
        ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            backgroundColor: Color(0xff393e48),
            currentIndex: controller.selectedIndex,
            onTap: (newIndex) => controller.updateIndex(newIndex),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xfffdc620),
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 32.0,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.cases_sharp,
                  size: 32.0,
                ),
                label: "Cash",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.airplane_ticket,
                  size: 32.0,
                ),
                label: "Ticket",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 32.0,
                ),
                label: "Setting",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TvMainNavigationView> createState() => TvMainNavigationController();
}
