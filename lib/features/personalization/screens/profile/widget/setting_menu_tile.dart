import 'package:flutter/material.dart';

class SettingMenuTile extends StatelessWidget {
  const SettingMenuTile({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
    this.onTap,
  });
  final String title, subTitle;
  final IconData icon;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        subtitle: Text(
          subTitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        leading: IconButton(onPressed: () {}, icon: Icon(icon)),
      ),
    );
  }
}
