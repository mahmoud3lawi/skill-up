import 'package:flutter/material.dart';

/// Logo 
Widget logoSection() {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        'images/logo.png',
        width: 80,
        height: 100,
      ),
      const Text(
        'S',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

/// Text field widget
Widget buildTextField({
  required String labelText,
  required TextInputType keyboardType,
}) {
  final BorderRadius borderRadius = BorderRadius.circular(20.0);
  return TextFormField(
    keyboardType: keyboardType,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.black),
      alignLabelWithHint: true,
      border: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: Color.fromRGBO(27, 60, 89, 1)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: Color.fromRGBO(27, 60, 89, 1)),
      ),
    ),
    textDirection: TextDirection.rtl,
  );
}

/// Dropdown field widget 
Widget buildDropdownField({
  required String labelText,
  required List<String> items,
  required void Function(String?) onChanged,
  String? value,
}) {
  final BorderRadius borderRadius = BorderRadius.circular(20.0);
  return DropdownButtonFormField<String>(
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.black),
      alignLabelWithHint: true,
      border: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: Color.fromRGBO(27, 60, 89, 1)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: borderRadius,
        borderSide: const BorderSide(color: Color.fromRGBO(27, 60, 89, 1)),
      ),
    ),
    items: items.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value, textDirection: TextDirection.rtl),
      );
    }).toList(),
    onChanged: onChanged,
    value: value,
  );
}

/// Media card 
Widget buildMediaCard({
  required IconData icon,
  required Color iconColor,
}) {
  return SizedBox(
    width: 300, 
    height: 200, 
    child: Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: Color.fromRGBO(27, 60, 89, 1)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Icon(
                icon,
                size: 70,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
