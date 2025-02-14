import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvBookingDetailView extends StatefulWidget {
  const TvBookingDetailView({super.key});

  Widget build(context, TvBookingDetailController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ticket"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Icon(
                Icons.upload_outlined,
                size: 24.0,
              ),
            ),
          ),
        ],
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
  State<TvBookingDetailView> createState() => TvBookingDetailController();
}
