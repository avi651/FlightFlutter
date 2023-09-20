import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BorderedTextField extends StatefulWidget {
  const BorderedTextField({Key? key}) : super(key: key);

  @override
  State<BorderedTextField> createState() => _BorderedTextFieldState();
}

class _BorderedTextFieldState extends State<BorderedTextField> {
  FocusNode focusNode = FocusNode();
  Color borderColor = Colors.grey;

  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {
        borderColor = focusNode.hasFocus ? Colors.orange : Colors.grey;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textEditingController =
        TextEditingController();
    return Container(
      height: 50,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        controller: _textEditingController,
        focusNode: focusNode,
        style: const TextStyle(color: Colors.grey),
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.zero,
          border: InputBorder.none,
          labelText: "Mobile Number",
          prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 8),
            child: Text("", style: TextStyle(fontSize: 16, color: Colors.grey)),
          ),
        ),
      ),
    );
  }
}
