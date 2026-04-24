import 'package:flutter/material.dart';

class NeonBorder extends StatelessWidget {
  final Widget child;
  final bool isActive;
  final bool isHovering;

  const NeonBorder({
    super.key,
    required this.child,
    this.isActive = false,
    this.isHovering = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: isActive
            ? [
                BoxShadow(
                  color: const Color(0xFF22D3EE).withOpacity(0.5),
                  blurRadius: 15,
                  spreadRadius: 2,
                ),
              ]
            : [],
        border: Border.all(
          color: isActive
              ? const Color(0xFF22D3EE)
              : Colors.white.withOpacity(0.1),
          width: isActive ? 2 : 1,
        ),
      ),
      child: child,
    );
  }
}
