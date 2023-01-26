import 'package:coretemplate/core/extension/string_extension.dart';
import 'package:flutter/material.dart';

class LocaleText extends StatelessWidget {
  final String textContent;
  const LocaleText({super.key, required this.textContent});

  @override
  Widget build(BuildContext context) {
    return Text(textContent.locale);
  }
}
