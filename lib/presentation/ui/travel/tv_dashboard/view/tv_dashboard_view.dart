import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

class TvDashboardView extends StatefulWidget {
  const TvDashboardView({super.key});

  Widget build(context, TvDashboardController controller) {
    controller.view = this;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: Text(
                      "Hello, Choirul",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Badge(
                    backgroundColor: Color(0xfffdc620),
                    child: Icon(Icons.notifications_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 6.0,
              ),
              const Text(
                "Book Your Ticket \nToday",
                style: TextStyle(
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Theme(
                data: ThemeData.light(),
                child: Card(
                  color: Colors.white,
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        QCategoryPicker(
                          items: const [
                            {
                              "label": "One Way",
                              "value": "One Way",
                            },
                            {
                              "label": "Round Trip",
                              "value": "Round Trip",
                            },
                            {
                              "label": "Multiple City",
                              "value": "Multiple City",
                            },
                          ],
                          onChanged: (index, label, value, item) {},
                          itemBuilder: (item, selected, action) {
                            return InkWell(
                              onTap: () => action(),
                              child: Card(
                                color: selected
                                    ? Color(0xfffdc620)
                                    : Colors.grey[300],
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                    vertical: 4.0,
                                  ),
                                  child: Text(item["label"],
                                      style: TextStyle(
                                        color: selected
                                            ? Color(0xff393e48)
                                            : Colors.grey[500],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      )),
                                ),
                              ),
                            );
                          },
                        ),
                        QDropdownField(
                          label: "From",
                          items: const [
                            {
                              "label": "Yogyakarta",
                              "value": "Yogyakarta",
                            },
                            {
                              "label": "Jakarta",
                              "value": "Jakarta",
                            },
                            {
                              "label": "Bogor",
                              "value": "Bogor",
                            }
                          ],
                          onChanged: (value, label) {},
                        ),
                        QDropdownField(
                          label: "To",
                          items: const [
                            {
                              "label": "Yogyakarta",
                              "value": "Yogyakarta",
                            },
                            {
                              "label": "Jakarta",
                              "value": "Jakarta",
                            },
                            {
                              "label": "Bogor",
                              "value": "Bogor",
                            }
                          ],
                          onChanged: (value, label) {},
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: QDatePicker(
                                label: "Depart",
                                value: null,
                                onChanged: (value) {
                                  print("value: value");
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            const Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 22.0, color: Color(0xff393e48)),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: QDatePicker(
                                label: "Return",
                                value: null,
                                onChanged: (value) {
                                  print("value: value");
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: QCounterPicker(
                                label: "Passengers (adult)",
                                // validator: Validator.required,
                                value: 0,
                                onChanged: (value) {
                                  print("value: $value");
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            Expanded(
                              child: QCounterPicker(
                                label: "Passengers (child)",
                                // validator: Validator.required,
                                value: 0,
                                onChanged: (value) {
                                  print("value: $value");
                                },
                              ),
                            ),
                          ],
                        ),
                        QDropdownField(
                          label: "Train Classes",
                          // validator: Validator.required,
                          items: const [
                            {
                              "label": "Executive",
                              "value": "Executive",
                            },
                            {
                              "label": "Business",
                              "value": "Business",
                            },
                            {
                              "label": "Economy",
                              "value": "Economy",
                            },
                          ],

                          onChanged: (value, label) {},
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
                              Get.to(TvSeatPickerView());
                            },
                            child: const Text(
                              "Continue",
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TvDashboardView> createState() => TvDashboardController();
}
