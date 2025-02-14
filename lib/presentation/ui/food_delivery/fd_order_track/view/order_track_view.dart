import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OrderTrackView extends StatefulWidget {
  const OrderTrackView({super.key});

  Widget build(context, OrderTrackController controller) {
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Order Track"),
        actions: const [],
      ),
      body: Column(
        children: [
          Expanded(
            child: Builder(
              builder: (context) {
                List<Marker> allMarkers = [
                  const Marker(
                    point: LatLng(
                      -6.1754234,
                      106.827224,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Color(0xffff4e01),
                      child: Icon(
                        Icons.restaurant,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ];
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: FlutterMap(
                    options: const MapOptions(
                      initialCenter: LatLng(
                        -6.1754234,
                        106.827224,
                      ),
                      initialZoom: 16,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName:
                            'dev.fleaflet.flutter_map.example',
                      ),
                      MarkerLayer(
                        markers: allMarkers,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://res.cloudinary.com/dotz74j1p/raw/upload/v1716044979/nr7gt66alfhmu9vaxu2u.png",
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hasbi Rahman",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "DK 4601 AC",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffff4e01),
                      child: Icon(
                        MdiIcons.chat,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffff4e01),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 255, 233, 223),
                      child: Icon(
                        MdiIcons.circleMedium,
                        color: Color(0xffff4e01),
                      ),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "On the way",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                "20 min",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffff4e01),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "Jl. Jenderal No. 14, Bogor",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
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
                SizedBox(
                  height: 42,
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffff4e01),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    onPressed: () {},
                    child: const Text("Order Received"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<OrderTrackView> createState() => OrderTrackController();
}
