import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Work',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
