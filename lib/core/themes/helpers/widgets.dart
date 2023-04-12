import 'package:flutter/material.dart';

class ConditionalWrapper extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final bool condition;

  const ConditionalWrapper({
    required this.condition,
    required this.child1,
    required this.child2,
    Key? key,
  }) : super(key: key);

  factory ConditionalWrapper.children({
    required bool condition,
    required List<Widget> children1,
    required List<Widget> children2,
    Key? key,
  }) {
    return ConditionalWrapper(
      condition: condition,
      child1: Column(mainAxisSize: MainAxisSize.min, children: children1),
      child2: Column(mainAxisSize: MainAxisSize.min, children: children2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return condition ? child1 : child2;
  }
}

class FocusWidget extends StatefulWidget {
  final Widget Function(FocusNode, bool) builder;
  const FocusWidget({required this.builder, Key? key}) : super(key: key);

  @override
  State<FocusWidget> createState() => _FocusWidgetState();
}

class _FocusWidgetState extends State<FocusWidget> {
  late FocusNode _myFocusNode;
  final ValueNotifier<bool> _myFocusNotifier = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    _myFocusNode = FocusNode();
    _myFocusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _myFocusNode.removeListener(_onFocusChange);
    _myFocusNode.dispose();
    _myFocusNotifier.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    _myFocusNotifier.value = _myFocusNode.hasFocus;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _myFocusNotifier,
      builder: (_, isFocus, child) => widget.builder(
        _myFocusNode,
        isFocus,
      ),
    );
  }
}

enum _BounceAnimation { scale, translate }

class BounceWidget extends StatefulWidget {
  final Widget child;
  final _BounceAnimation _animation;
  final void Function()? onPressed;

  const BounceWidget.scale({
    required this.child,
    this.onPressed,
    super.key,
  }) : _animation = _BounceAnimation.scale;

  const BounceWidget.translate({
    required this.child,
    this.onPressed,
    super.key,
  }) : _animation = _BounceAnimation.translate;

  @override
  State<BounceWidget> createState() => BounceWidgetState();
}

class BounceWidgetState extends State<BounceWidget> {
  bool pressed = false;
  void setPressed(bool value) {
    if (pressed != value) setState(() => pressed = value);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      onPanCancel: () => setPressed(false),
      onTapCancel: () => setPressed(false),
      onTapUp: (details) => setPressed(false),
      onTapDown: (details) => setPressed(true),
      onPanDown: (details) => setPressed(true),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        curve: Curves.bounceInOut,
        transformAlignment: Alignment.center,
        transform: widget._animation == _BounceAnimation.scale
            ? Transform.scale(scale: pressed ? 0.92 : 1.0).transform
            : Transform.translate(offset: Offset(0, pressed ? 4.0 : 0)).transform,
        child: widget.child,
      ),
    );
  }
}
