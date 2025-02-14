import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvSeatPickerView extends StatefulWidget {
  const TvSeatPickerView({super.key});

  Widget build(context, TvSeatPickerController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Seat"),
        centerTitle: true,
        actions: const [],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [],
        ),
      ),
    );
  }

  @override
  State<TvSeatPickerView> createState() => TvSeatPickerController();
}
