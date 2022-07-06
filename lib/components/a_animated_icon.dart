import 'package:flutter/material.dart';

class AAnimatedIcon extends StatefulWidget {
  final AnimatedIconData animatedIcon;
  final double size;
  final Color? color;
  final Duration duration;
  final Duration reverseDuration;
  final void Function(bool value)? onClick;

  const AAnimatedIcon({
    super.key,
    required this.animatedIcon,
    this.size = 24.0,
    this.color,
    this.duration = const Duration(milliseconds: 500),
    this.reverseDuration = const Duration(milliseconds: 500),
    this.onClick,
  });

  @override
  State<AAnimatedIcon> createState() => _AAnimatedIconState();
}

class _AAnimatedIconState extends State<AAnimatedIcon>
    with SingleTickerProviderStateMixin {
  /// Animation controller to control the behaviour of the animated icon
  late AnimationController _animationController;

  /// Boolean variable to store the state of the animation
  bool _played = false;

  @override
  void initState() {
    super.initState();

    // Initializing the animation controller
    _animationController = AnimationController(
      vsync: this,
      duration: widget.duration,
      reverseDuration: widget.reverseDuration,
    );
  }

  /// Method to toggle the animation
  void _toggle() {
    if (_played) {
      _animationController.reverse();
    } else {
      _animationController.forward();
    }
    _played = !_played;
    if (widget.onClick != null) widget.onClick!(_played);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggle,
      child: AnimatedIcon(
        icon: widget.animatedIcon,
        progress: _animationController,
        size: widget.size,
        color: widget.color,
      ),
    );
  }
}
