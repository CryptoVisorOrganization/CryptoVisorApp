import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cryptovisor/screens/helper/export_helper_screen.dart';

class CryptoVisorPrimaryButton extends StatelessWidget {
  final Function() onTap;
  final String text;
  final EdgeInsets? padding;
  final Alignment? alignment;

  const CryptoVisorPrimaryButton({
    super.key,
    required this.onTap,
    required this.text,
    this.padding,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: alignment ?? Alignment.center,
        padding: padding ?? EdgeInsets.zero,
        child: MaterialButton(
            height: 24,
            minWidth: 0,
            padding: EdgeInsets.zero,
            elevation: 0,
            enableFeedback: true,
            onPressed: onTap,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: CryptoVisorColors.scaffoldColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
              child: Text(text).bodySmallMedium(style: const TextStyle(color: CryptoVisorColors.white)),
            )));
  }
}
