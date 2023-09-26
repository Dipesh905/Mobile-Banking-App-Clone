import 'package:flutter/material.dart';

/// Common Input Field Widget Through out the Project
class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    required this.controller,
    this.labelText,
    this.decoration,
    this.validator,
    this.obsecureText = false,
    this.readOnly = false,
    this.autofocus = false,
    this.onTap,
    super.key,
    this.keyboardType,
    this.hintText,
    this.helperText,
    this.maxLines = 1,
    this.onChanged,
    this.surfixIcon,
    this.maxLength,
    this.initialValue,
    this.contentPadding,
  });

  /// Validator
  final String? Function(String?)? validator;

  /// label Text
  final String? labelText;

  /// ObsecureText
  final bool obsecureText;

  /// Helper Text
  final String? helperText;

  /// read only
  final bool readOnly;

  /// ontap
  final void Function()? onTap;

  /// Onchanged
  final void Function(String)? onChanged;

  /// prefix icon
  final Widget? surfixIcon;

  /// keyboard type
  final TextInputType? keyboardType;

  /// controller
  final TextEditingController? controller;

  /// max length
  final int? maxLength;

  /// initial Value
  final String? initialValue;

  /// hint text
  final String? hintText;

  /// content Padding
  final EdgeInsetsGeometry? contentPadding;

  /// max lines
  final int? maxLines;

  /// input decoration
  final InputDecoration? decoration;

  /// autofocus
  final bool autofocus;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(8),
        child: TextFormField(
          autofocus: autofocus,
          onTap: onTap,
          readOnly: readOnly,
          keyboardType: keyboardType,
          obscureText: obsecureText,
          maxLines: maxLines,
          initialValue: initialValue,
          controller: controller,
          validator: validator,
          maxLength: maxLength,
          decoration: decoration,
          onChanged: onChanged,
        ),
      );
}
