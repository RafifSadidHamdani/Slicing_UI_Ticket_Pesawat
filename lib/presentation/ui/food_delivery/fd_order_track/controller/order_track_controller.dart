import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class OrderTrackController extends State<OrderTrackView> {
  static late OrderTrackController instance;
  late OrderTrackView view;

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
