import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class FdProductDetailController extends State<FdProductDetailView> {
  static late FdProductDetailController instance;
  late FdProductDetailView view;

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
}
