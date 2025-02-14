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
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: -18,
                      top: 80,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff383e48),
                        radius: 18.0,
                      ),
                    ),
                    Positioned(
                      right: -18,
                      top: 80,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff383e48),
                        radius: 18.0,
                      ),
                    ),
                    Positioned(
                      left: -18,
                      bottom: 130,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff383e48),
                        radius: 18.0,
                      ),
                    ),
                    Positioned(
                      right: -18,
                      bottom: 130,
                      child: CircleAvatar(
                        backgroundColor: Color(0xff383e48),
                        radius: 18.0,
                      ),
                    ),
                    Positioned(
                      top: 89,
                      left: 0,
                      right: 0,
                      child: Divider(
                        color: Color(0xff383e48),
                        thickness: 4,
                      ),
                    ),
                    Positioned(
                      bottom: 139,
                      left: 0,
                      right: 0,
                      child: Divider(
                        color: Color(0xff383e48),
                        thickness: 4,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 24.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Executive",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color(0xff383e48),
                                  ),
                                ),
                              ),
                              Text(
                                "14 Apr 2023",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff383e48),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 80.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "From",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "Yogyakarta (YK)",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "To",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "Jakarta (JAKK)",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Departure",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "07:00 AM",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Arrival",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "03:00 PM",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Class",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "Executive",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Seat",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "Executive 1, Seat 12",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Passenger",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "1 Adult",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Baggage",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    Text(
                                      "15 KG",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff383e48),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        height: 140,
                        width: 100,
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              "https://antfu.me/images/ai-qrcode-final.jpg",
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            SizedBox(
              height: 42,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xfffdc620),
                    // foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    )),
                onPressed: () {
                  Get.to(TvBookingDetailView());
                },
                child: const Text(
                  "Download Ticket",
                  style: TextStyle(
                    color: Color(0xff393e48),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<TvBookingDetailView> createState() => TvBookingDetailController();
}
