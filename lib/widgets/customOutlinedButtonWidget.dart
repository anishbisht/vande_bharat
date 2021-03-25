import 'package:flutter/material.dart';
import 'package:moblie_ui/image_path.dart';

class CustomOutlinedButttonWidget extends StatelessWidget {
  final String title;
  final Color textColor;
  final VoidCallback onPressed;
  final double textSize;
  final String imageName;
  final double imageHeight;
  final double imageWidth;

  CustomOutlinedButttonWidget(
      {@required this.title,
      @required this.onPressed,
      this.textColor,
      this.textSize,
      this.imageHeight,
      this.imageName,
      this.imageWidth});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Image.asset(
                imageName ?? null,
                height: imageHeight ?? null,
                width: imageWidth ?? null,
                fit: BoxFit.fill,
              ) ??
              null,
          SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: textSize,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
