import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/SummerProfile.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                Text(
                  'Brenton Unger II',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                    'Software Engineer. Scholar. Hobbyist. Traveler. Believer. lorem ipsum captionist ventro milistic'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
