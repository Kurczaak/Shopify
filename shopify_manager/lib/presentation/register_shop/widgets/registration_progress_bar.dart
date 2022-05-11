import 'package:flutter/material.dart';

class RegistrationProgressRow extends StatelessWidget {
  const RegistrationProgressRow({
    Key? key,
    required this.pageNum,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final int pageNum;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const Spacer(),
            Text('$pageNum/5'),
          ],
        ),
        Text(subtitle, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
