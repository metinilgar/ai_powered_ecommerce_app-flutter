import 'package:flutter/material.dart';

class SeeAllHeader extends StatelessWidget {
  const SeeAllHeader({
    super.key,
    required this.title,
    this.buttonTitle = "Tümünü Gör",
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
    this.onPressed,
  });

  final String title;
  final String buttonTitle;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            child: Text(buttonTitle),
          ),
        ],
      ),
    );
  }
}
