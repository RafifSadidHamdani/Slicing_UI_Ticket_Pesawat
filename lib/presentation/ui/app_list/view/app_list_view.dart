import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import 'package:food_delivery/shared/util/theme/theme_food_delivery.dart';

class AppListView extends StatefulWidget {
  const AppListView({super.key});

  Widget build(context, AppListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: Text("App List"),
        actions: [],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1.0,
                crossAxisCount: 2,
                mainAxisSpacing: 6,
                crossAxisSpacing: 6,
              ),
              itemCount: controller.apps.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                var item = controller.apps[index];
                return InkWell(
                  onTap: () {
                    Get.mainTheme.value = item["theme"];
                    Get.offAll(item["page"]);
                  },
                  child: Container(
                    color: Colors.purple,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item["icon"],
                          size: 40.0,
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          item["label"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<AppListView> createState() => AppListController();
}
