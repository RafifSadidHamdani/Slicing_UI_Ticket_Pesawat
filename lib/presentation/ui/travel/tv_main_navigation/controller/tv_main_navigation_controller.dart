import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvMainNavigationController extends State<TvMainNavigationView> {
  static late TvMainNavigationController instance;
  late TvMainNavigationView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
