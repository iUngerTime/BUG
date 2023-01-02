import 'package:flutter/material.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Education',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
