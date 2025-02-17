import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  bool isObscure;

  CustomTextField({
    super.key,
    required this.icon,
    required this.label,
    this.isSecret = false,
    this.isObscure = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: widget.isObscure,
        // variable ? Widget : null  [Condicional Ternária]
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          suffixIcon: widget.isObscure
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      //widget.isObscure = !widget.isObscure;
                    });
                  },
                  icon: const Icon(Icons.visibility_off),
                )
              : null,
          /* IconButton(
                  onPressed: () {
                    setState(() {
                      widget.isObscure = !widget.isObscure;
                    });
                  },
                  icon: const Icon(Icons.visibility)), */
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
