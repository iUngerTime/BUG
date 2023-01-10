import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Skills',
              style: Theme.of(context).textTheme.headline4,
            ),
            Card(
              child: Placeholder(
                color: Colors.blue,
              ),
            ),
            Card(
              child: Container(
                child: Column(
                  children: [
                    Text(
                      'Education',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      'We all know on-the-job skills are more important but here you go...',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '<Degree Earned> - <degree name>',
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              Text(
                                '<Date attended>',
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Chip(
                                  label: Text(
                                    '<School Name>',
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                              ),
                              Chip(
                                label: Text(
                                  '<Location>',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Extra',
              style: Theme.of(context).textTheme.headline4,
            ),
            Placeholder(color: Colors.red),
          ],
        ),
      ),
    );
  }
}
