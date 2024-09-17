import 'package:flutter/material.dart';

class CampoTextCustom extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;

  const CampoTextCustom({super.key, required this.icon, required this.label, this.isSecret = false});

  @override
  State<CampoTextCustom> createState() => _CampoTextCustomState();
}

class _CampoTextCustomState extends State<CampoTextCustom> {
  bool isobscure = false;
  @override
  void initState() {
    super.initState();
    isobscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        obscureText: isobscure,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isSecret ? IconButton(onPressed: (){
            setState(() {
              isobscure = !isobscure;
            });
          }, icon: Icon(isobscure ? Icons.visibility : Icons.visibility_off),) : null,
          labelText: widget.label,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
