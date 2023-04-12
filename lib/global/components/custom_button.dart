import 'package:flutter/material.dart';

import '../../core/themes/themes.dart';

const Curve _kCurve = Curves.linearToEaseOut;
const Duration _kDuration = Duration(milliseconds: 180);

class CustomButton extends StatefulWidget {
  final Widget child;
  final Widget? prefix;
  final Widget? suffix;

  final Color color;
  final Color hoverColor;
  final Color textColor;
  final Color hoverTextColor;
  final Color? borderColor;

  final bool isCircle;
  final bool isBlock;

  final void Function()? onPressed;

  CustomButton(
    this.child, {
    this.color = kPrimaryColor,
    Color? hoverColor,
    Color? textColor,
    Color? hoverTextColor,
    this.borderColor,
    this.prefix,
    this.suffix,
    this.isCircle = false,
    this.isBlock = false,
    this.onPressed,
    super.key,
  })  : hoverColor = hoverColor ?? color.darken(),
        textColor = textColor ?? color.onColor,
        hoverTextColor = hoverTextColor ?? textColor ?? color.onColor;

  CustomButton.elevated(
    this.child, {
    this.color = kPrimaryColor,
    this.prefix,
    this.suffix,
    this.isCircle = false,
    this.isBlock = false,
    this.onPressed,
    super.key,
  })  : hoverColor = color.darken(),
        textColor = color.onColor,
        hoverTextColor = color.onColor,
        borderColor = null;

  CustomButton.outlined(
    this.child, {
    Color color = kPrimaryColor,
    this.prefix,
    this.suffix,
    this.isCircle = false,
    this.isBlock = false,
    this.onPressed,
    super.key,
  })  : color = color.withAlpha(0),
        hoverColor = color,
        textColor = color,
        hoverTextColor = color.onColor,
        borderColor = color;

  CustomButton.ghost(
    this.child, {
    Color color = kPrimaryColor,
    this.prefix,
    this.suffix,
    this.isCircle = false,
    this.isBlock = false,
    this.onPressed,
    super.key,
  })  : color = color.withAlpha(0),
        hoverColor = color.withAlpha(48),
        textColor = color,
        hoverTextColor = color,
        borderColor = null;

  @override
  State<CustomButton> createState() => CustomButtonState();
}

class CustomButtonState extends State<CustomButton> {
  bool _isPressed = false;
  bool _isHovered = false;

  void setPressed(bool value) {
    if (_isPressed != value && widget.onPressed != null) setState(() => _isPressed = value);
  }

  void setHovered(bool value) {
    if (_isHovered != value && widget.onPressed != null) setState(() => _isHovered = value);
  }

  @override
  Widget build(BuildContext context) {
    assert(!(widget.isCircle && widget.isBlock));

    final isDisabled = widget.onPressed == null;
    final color = _isHovered ? widget.hoverColor : widget.color;
    final textColor = _isHovered ? widget.hoverTextColor : widget.textColor;

    final prefix = widget.prefix is Icon ? Transform.translate(offset: const Offset(0.0, -3.0), child: widget.prefix) : widget.prefix;
    final suffix = widget.suffix is Icon ? Transform.translate(offset: const Offset(0.0, -3.0), child: widget.suffix) : widget.suffix;

    return GestureDetector(
      onTap: widget.onPressed,
      onPanCancel: () => setPressed(false),
      onTapCancel: () => setPressed(false),
      onTapUp: (details) => setPressed(false),
      onTapDown: (details) => setPressed(true),
      onPanDown: (details) => setPressed(true),
      child: MouseRegion(
        onEnter: (event) => setHovered(true),
        onExit: (event) => setHovered(false),
        cursor: isDisabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
        child: Opacity(
          opacity: isDisabled ? 0.4 : 1.0,
          child: AnimatedContainer(
            curve: _kCurve,
            duration: _kDuration,
            transformAlignment: FractionalOffset.center,
            padding: EdgeInsets.symmetric(horizontal: widget.isCircle ? kSpacing : kSpacing4, vertical: kSpacing),
            transform: Transform.scale(scale: _isPressed ? 0.93 : 1.0).transform,
            decoration: BoxDecoration(
              color: color,
              borderRadius: widget.isCircle ? null : kRoundedBorder,
              border: widget.borderColor != null ? Border.all(color: widget.borderColor!) : null,
              shape: widget.isCircle ? BoxShape.circle : BoxShape.rectangle,
            ),
            child: AnimatedDefaultTextStyle(
              curve: _kCurve,
              duration: _kDuration,
              style: kLabelStyle.copyWith(color: textColor, height: 1.5),
              child: AnimatedTheme(
                curve: _kCurve,
                duration: _kDuration,
                data: ThemeData(
                  iconTheme: IconThemeData(color: textColor),
                  progressIndicatorTheme: ProgressIndicatorThemeData(color: textColor),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (prefix != null) prefix.paddingRight,
                    widget.isBlock ? Expanded(child: widget.child.center()) : widget.child,
                    if (suffix != null) suffix.paddingLeft,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
