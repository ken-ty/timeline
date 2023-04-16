import 'package:flutter/material.dart';

class PinchDetector extends StatefulWidget {
  final Widget child;

  const PinchDetector({super.key, required this.child});

  @override
  State<PinchDetector> createState() => _PinchDetectorState();
}

class _PinchDetectorState extends State<PinchDetector> {
  double? _initialScale;
  double _currentScale = 1.0;
  Offset? _initialFocalPoint;
  Offset? _previousFocalPoint;

  void _handleScaleStart(ScaleStartDetails details) {
    _initialScale = _currentScale;
    _initialFocalPoint = details.focalPoint;
  }

  void _handleScaleUpdate(ScaleUpdateDetails details) {
    if (details.scale != 1.0) {
      final newScale = _initialScale! * details.scale;
      setState(() {
        _currentScale = newScale;
      });
    }
    if (_previousFocalPoint != null) {
      final delta = details.focalPoint - _previousFocalPoint!;
      setState(() {
        _initialFocalPoint = _initialFocalPoint! + delta;
      });
    }
    _previousFocalPoint = details.focalPoint;
  }

  void _handleScaleEnd(ScaleEndDetails details) {
    _initialFocalPoint = null;
    _previousFocalPoint = null;
    _initialScale = null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onScaleStart: _handleScaleStart,
      onScaleUpdate: _handleScaleUpdate,
      onScaleEnd: _handleScaleEnd,
      child: Transform.scale(
        scale: _currentScale,
        origin: _initialFocalPoint ?? Offset.zero,
        child: widget.child,
      ),
    );
  }
}
