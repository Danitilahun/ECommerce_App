import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile(
      {super.key,
      required this.title,
      required this.subtitle,
      this.trailing,
      required this.icon,
      this.onTab});

  final String title;
  final String subtitle;
  final Widget? trailing;
  final IconData icon;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 28, color: TColors.primary),
      title: Text(title, style: Theme.of(context).textTheme.titleMedium),
      subtitle: Text(subtitle, style: Theme.of(context).textTheme.labelMedium),
      trailing: trailing,
      onTap: onTab,
    );
  }
}
