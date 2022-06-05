import 'package:flutter/material.dart';

import '../../../controller/TelaLoginController.dart';

class CampoEmail extends StatefulWidget {
  const CampoEmail({Key? key, required this.controller}) : super(key: key);
  final TelaLoginController controller;

  @override
  State<CampoEmail> createState() => _CampoEmailState();
}

class _CampoEmailState extends State<CampoEmail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 16),
      child: TextField(
        controller: widget.controller.email,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          counterText: widget.controller.counterTextEmail,
          labelText: "Email",
          labelStyle: const TextStyle(
              backgroundColor: Colors.white, color: Colors.black),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.black12, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.green, width: 2)),
          prefixIcon: const Icon(
            Icons.email,
            color: Colors.black,
          ),
          suffixIcon: widget.controller.email.text.isEmpty
              ? Container(width: 0)
              : IconButton(
            icon: const Icon(Icons.close, color: Colors.red),
            onPressed: () => widget.controller.email.clear(),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        maxLength: 100,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
