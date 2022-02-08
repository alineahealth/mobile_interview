import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? prefix;

  final Widget? sufix;
  final TextInputType keyboardType;
  final bool isEnabled;
  final String? hintText;
  final bool? obscureText;

  final String? labelText;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final Iterable<String>? autofillHints;

  /// FormInput
  ///
  /// [controller] form controller
  ///
  /// [prefix] is a prefix of input will be rendered on left side of input
  ///
  /// [type] type of text input
  ///
  /// [isEnable] is a bool that will be check if formInput is active
  ///
  /// [validator] function that validate input
  ///
  /// [onChanged] onChanged of formInput
  const InputWidget({
    this.controller,
    this.isEnabled = true,
    this.prefix,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.onChanged,
    this.hintText,
    this.sufix,
    this.autofillHints,
    this.labelText,
    this.obscureText,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onChanged: onChanged,
      enabled: isEnabled,
      autofillHints: autofillHints,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: prefix,
        hintText: hintText,
        suffixIcon: sufix,
      ),
    );
  }
}
