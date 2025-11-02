import 'package:flutter/material.dart';

import '../core/app_export.dart';

/**
 * CustomButton - A reusable button component with green background and customizable properties
 * 
 * @param text - The text to display on the button
 * @param onTap - Callback function when button is tapped
 * @param borderRadius - Corner radius for the button (optional, defaults to 10)
 * @param width - Width of the button (optional, defaults to double.infinity)
 * @param height - Height of the button (optional, defaults to 46)
 * @param backgroundColor - Background color of the button (optional, defaults to green)
 * @param textColor - Text color of the button (optional, defaults to white)
 * @param isEnabled - Whether the button is enabled (optional, defaults to true)
 */
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onTap,
    this.borderRadius,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.isEnabled,
  }) : super(key: key);

  /// The text to display on the button
  final String text;

  /// Callback function when button is tapped
  final VoidCallback? onTap;

  /// Corner radius for the button
  final double? borderRadius;

  /// Width of the button
  final double? width;

  /// Height of the button
  final double? height;

  /// Background color of the button
  final Color? backgroundColor;

  /// Text color of the button
  final Color? textColor;

  /// Whether the button is enabled
  final bool? isEnabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 46.h,
      child: ElevatedButton(
        onPressed: (isEnabled ?? true) ? onTap : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Color(0xFF00BE76),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular((borderRadius ?? 10.0).h),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 8.h,
            horizontal: 30.h,
          ),
          shadowColor: appTheme.transparentCustom,
        ).copyWith(
          overlayColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.pressed)) {
                return appTheme.whiteCustom.withAlpha(26);
              }
              return null;
            },
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular((borderRadius ?? 10.0).h),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF888888).withAlpha(64),
                offset: Offset(0, 4.h),
                blurRadius: 8.h,
              ),
            ],
          ),
          child: Text(
            text,
            style: TextStyleHelper.instance.title20MediumPoppins.copyWith(
                color: textColor ?? appTheme.whiteCustom, height: 1.5),
          ),
        ),
      ),
    );
  }
}
