import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvSeatPickerController extends State<TvSeatPickerView> {
  static late TvSeatPickerController instance;
  late TvSeatPickerView view;

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

  List<int> usedSeats = [];
  List<int> selectedSeats = [3, 4, 5, 6, 15, 16];
  updateSeat(int index) {
    if (selectedSeats.contains(index)) return;
    if (!usedSeats.contains(index)) {
      usedSeats.add(index);
    } else {
      usedSeats.remove(index);
    }

    setState(() {});
  }

  int selectedClassIndex = 0;
  List classList = ["Executive", "Business", "Economy"];
  updateClass(int newClass) {
    selectedClassIndex = newClass;
    setState(() {});
  }
}
