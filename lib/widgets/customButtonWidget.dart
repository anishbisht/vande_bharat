import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButtonWidget extends StatelessWidget {
  final double textSize;
  final String title;
  final TextStyle textStyle;
  final Color buttonColor, textColor;
  final VoidCallback onPressed;
  CustomTextButtonWidget({
    Key key,
    @required this.title,
    @required this.onPressed,
    this.buttonColor,
    this.textColor,
    this.textStyle,
    this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: textStyle ??
            TextStyle(
              color: textColor ?? Colors.white,
              fontSize: textSize ?? 16,
            ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: buttonColor,
        //onSurface: Colors.grey,
      ),
    );
  }
}

// class CustomTextButtonWidget extends StatelessWidget {
//   final String title;
//   final VoidCallback onPressed;
//   final Color buttonColor, textColor;
//   final TextStyle textStyle;
//   final double textSize;

//   const CustomTextButtonWidget({
//     Key key,
//     @required this.title,
//     @required this.onPressed,
//     this.buttonColor,
//     this.textColor,
//     this.textStyle,
//     this.textSize,
//   })  : assert(
//           textColor == null || textStyle == null,
//           'Cannot provide both a textColor and a textStyle\n'
//           'To provide both, use "decoration: TextStyle(color: color)".',
//         ),
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return FlatButton(
//       onPressed: onPressed,
//       child: Text(
//         title,
//         textAlign: TextAlign.center,
//         style: textStyle ??
//             TextStyle(
//               color: textColor ?? Colors.white,
//               fontSize: textSize ?? 14,
//             ),
//       ),
//       disabledColor: Colors.grey,
//       color: buttonColor ?? const Color(PRIMARY_COLOR),
//       splashColor: Colors.white.withOpacity(0.4),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(
//           DIMEN_6,
//         ),
//       ),
//       padding: const EdgeInsets.symmetric(vertical:DIMEN_14),
//     );
//   }
// }