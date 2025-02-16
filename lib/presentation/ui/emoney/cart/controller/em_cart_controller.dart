import 'package:flutter/material.dart';
import 'package:food_delivery/presentation/ui/emoney/main_navigation/controller/em_main_navigation_controller.dart';
import 'package:food_delivery/state_util.dart';

import '../view/em_cart_view.dart';

class EmCartController extends State<EmCartView>
    with TickerProviderStateMixin
    implements MvcController {
  static late EmCartController instance;
  late EmCartView view;

  late AnimationController animationController;
  late AnimationController animationController2;
  late Animation<double> slideAnimation;
  late Animation<double> slideAnimation2;

  bool isBlueContainerVisible = true;
  bool isBlueContainerVisible2 = true;

  @override
  void initState() {
    instance = this;
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    animationController2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    slideAnimation = Tween<double>(begin: 0.0, end: -60.0).animate(
      CurvedAnimation(
        parent: animationController,
        curve: Curves.easeInOut,
      ),
    );

    slideAnimation2 = Tween<double>(begin: 0.0, end: -60.0).animate(
      CurvedAnimation(
        parent: animationController2,
        curve: Curves.easeInOut,
      ),
    );
  }

  void toggleBlueContainer(int containerIndex) {
    if (containerIndex == 0) {
      if (animationController.status == AnimationStatus.completed) {
        animationController.reverse();
      } else {
        animationController.forward();
      }
      setState(() {
        isBlueContainerVisible = !isBlueContainerVisible;
      });
    } else {
      if (animationController2.status == AnimationStatus.completed) {
        animationController2.reverse();
      } else {
        animationController2.forward();
      }
      setState(() {
        isBlueContainerVisible2 = !isBlueContainerVisible;
      });
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  void goBackToHome() {
    EmMainNavigationController controller = EmMainNavigationController.instance;
    controller.updateIndex(0);
  }
}
