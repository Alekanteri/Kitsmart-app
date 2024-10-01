import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/constants/colors.dart';

class MMSettingsMenuTile extends StatelessWidget {
  const MMSettingsMenuTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.subTitle,
      this.trailing,
      this.onTap});

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: MMColors.primaryColor2),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subTitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTap,
    );
  }
}