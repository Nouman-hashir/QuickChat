import 'package:flutter/material.dart';

class CustomPhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String labelText;

  const CustomPhoneTextField({
    super.key,
    required this.controller,
    this.hint = "+43 123-456-7890",
    this.labelText = "Phone Number",
  });

  @override
  State<CustomPhoneTextField> createState() => _CustomPhoneTextFieldState();
}

class _CustomPhoneTextFieldState extends State<CustomPhoneTextField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 64,
        alignment: Alignment.center,
        child: TextField(
          focusNode: _focusNode,
          controller: widget.controller,
          keyboardType: TextInputType.phone,
          maxLines: 1,
          textAlignVertical: TextAlignVertical.center,
          style: const TextStyle(fontSize: 16),
          decoration: InputDecoration(
            isCollapsed: false,
            isDense: false,
            labelText: widget.labelText,
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            prefixIcon: Icon(Icons.phone_outlined, color: Colors.grey.shade600),
            // prefixIconConstraints: const BoxConstraints(
            //   minWidth: 48,
            //   minHeight: 48,
            // ),
            contentPadding: const EdgeInsets.fromLTRB(16, 30, 16, 22),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(color: Color(0xff5A0FC8), width: 1.5),
            ),
          ),
        ),
      ),
    );
  }
}
