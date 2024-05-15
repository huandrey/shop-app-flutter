import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;

  const DefaultButton({
    super.key,
    this.onTap,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.all(24),
        child: child,
      ),
    );
  }
}
