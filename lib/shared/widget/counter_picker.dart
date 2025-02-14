//#TEMPLATE reuseable_text_field
import 'package:flutter/material.dart';

class QCounterPicker extends StatefulWidget {
  const QCounterPicker({
    required this.label,
    required this.onChanged,
    super.key,
    this.id,
    this.value,
    this.validator,
    this.hint,
    this.helper,
    this.maxLength,
    this.onSubmitted,
    this.obscure = false,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
  });
  final String? id;
  final String label;
  final int? value;
  final String? hint;
  final String? helper;
  final String? Function(String?)? validator;
  final bool obscure;
  final bool enabled;
  final int? maxLength;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Function(int) onChanged;
  final Function(String)? onSubmitted;

  @override
  State<QCounterPicker> createState() => _QCounterPickerState();
}

class _QCounterPickerState extends State<QCounterPicker> {
  TextEditingController textEditingController = TextEditingController();
  int value = 0;

  @override
  void initState() {
    textEditingController.text = widget.value?.toString() ?? '';
    value = widget.value ?? 0;
    super.initState();
  }

  String getValue() {
    return textEditingController.text;
  }

  setValue(value) {
    textEditingController.text = value;
  }

  resetValue() {
    textEditingController.text = '';
  }

  focus() {
    focusNode.requestFocus();
  }

  FocusNode focusNode = FocusNode();

  increaseQty() {
    value++;
    setState(() {});

    widget.onChanged(value);
  }

  decreaseQty() {
    if (value == 0) return;
    value--;
    setState(() {});

    widget.onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
              fontSize: 10.0,
              color: Theme.of(context).textTheme.bodySmall?.color,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              InkWell(
                onTap: () => decreaseQty(),
                child: Card(
                  color: Color(0xfffffdc648),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Icon(
                    Icons.remove,
                    size: 24.0,
                  ),
                ),
              ),
              const SizedBox(
                width: 6.0,
              ),
              Text(
                "$value",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 6.0,
              ),
              InkWell(
                onTap: () => increaseQty(),
                child: Card(
                  color: Color(0xfffffdc648),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//#END
