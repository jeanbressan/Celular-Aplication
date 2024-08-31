import 'package:flutter/material.dart';

class CampoTextCustom extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isobscure;
  const CampoTextCustom({super.key, required this.icon, required this.label, this.isobscure = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        obscureText: isobscure,
        decoration: InputDecoration(
          prefixIcon: Icon(icon),
          labelText: label,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
