import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButton extends StatelessWidget {
  final String label;
  final String assetPath;
  final Color backcolor;
  final Color textcolor;

  const CustomIconButton({
    super.key,
    required this.label,
    required this.assetPath,
    required this.backcolor,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: backcolor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(assetPath, width: 16, height: 16),
            const SizedBox(width: 4),
            Text(label, style: TextStyle(color: textcolor, fontSize: 10)),
          ],
        ),
      ),
    );
  }
}
