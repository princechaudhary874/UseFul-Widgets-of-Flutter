import 'package:flutter/material.dart';
import 'package:mvvm_architecture/res/colors.dart';

class RoundedButton extends StatelessWidget {
  final String? title;
  final VoidCallback onPress;
  final bool loading;

  const RoundedButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        decoration: const BoxDecoration(
            color: AppColors.blackColor,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        width: 120,
        child: Center(
          child: Text(
            title!,
            style: const TextStyle(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
