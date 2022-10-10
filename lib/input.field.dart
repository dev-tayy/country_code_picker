import 'package:country_code_picker/constants.dart';
import 'package:country_code_picker/dimension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.hint,
    required this.controller,
    this.capitalization,
    this.onChanged,
    this.obscureText = false,
    this.validator,
    this.inputAction = TextInputAction.done,
    required this.label,
    this.inputType,
    this.prefix,
    this.suffix,
    this.formatters,
    this.autofocus = true,
    this.focusNode,
    this.textfieldDecoration,
    this.cursorColor = PRYCOLOUR,
    this.style,
  }) : super(key: key);

  final TextEditingController controller;
  final TextCapitalization? capitalization;
  final List<TextInputFormatter>? formatters;
  final TextInputAction? inputAction;
  final TextInputType? inputType;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool obscureText, autofocus;
  final String hint;
  final String? label;
  final Widget? prefix, suffix;
  final FocusNode? focusNode;
  final InputDecoration? textfieldDecoration;
  final Color cursorColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        autofocus: autofocus,
        controller: controller,
        focusNode: focusNode,
        textInputAction: inputAction,
        inputFormatters: formatters ?? [],
        textCapitalization: capitalization ?? TextCapitalization.none,
        keyboardType: inputType ?? TextInputType.text,
        onChanged: onChanged,
        obscureText: obscureText,
        validator: validator,
        style: style ??
            GoogleFonts.inter(
              fontSize: getScreenHeight(16),
              fontWeight: FontWeight.w400,
              color: PRYCOLOUR,
            ),
        cursorColor: cursorColor,
        cursorHeight: getScreenHeight(16),
        cursorWidth: 1.5,
        decoration: textfieldDecoration ??
            InputDecoration(
              contentPadding: EdgeInsets.only(
                right: getScreenWidth(12),
                left: getScreenWidth(30),
                top: getScreenHeight(20),
                bottom: getScreenHeight(20),
              ),
              isDense: true,
              hintText: hint,
              fillColor: const Color(0xFFF8FAFD),
              filled: true,
              errorStyle: TextStyle(
                fontSize: getScreenHeight(14),
                fontWeight: FontWeight.w400,
                color: Colors.red,
              ),
              prefixIcon: prefix,
              suffixIcon: suffix,
              prefixIconConstraints: const BoxConstraints(),
              hintStyle: GoogleFonts.inter(
                fontSize: getScreenHeight(16),
                fontWeight: FontWeight.w400,
                color: const Color(0xFF8E8E93),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFE7ECF3)),
                borderRadius: BorderRadius.circular(getScreenWidth(8)),
                gapPadding: 0,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: PRYCOLOUR),
                borderRadius: BorderRadius.circular(getScreenWidth(8)),
                gapPadding: 0,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFFF3B30)),
                borderRadius: BorderRadius.circular(getScreenWidth(8)),
                gapPadding: 0,
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xFFFF3B30)),
                borderRadius: BorderRadius.circular(getScreenWidth(8)),
                gapPadding: 0,
              ),
            ),
      ),
    );
  }
}
