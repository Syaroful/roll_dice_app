import 'package:flutter/cupertino.dart';
// styled text with custom text and fontsize

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
  });

  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        color: color,
      ),
    );
  }
}
