import 'package:flutter/material.dart';
import 'package:food_delivery/state_util.dart';
import '../view/em_product_detail_view.dart';

class EmProductDetailController extends State<EmProductDetailView>
    implements MvcController {
  static late EmProductDetailController instance;
  late EmProductDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
