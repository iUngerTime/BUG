import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 100,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/SummerProfile.jpg'),
                  radius: 99,
                ),
              ),
              Text(
                'Brenton Unger II',
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Flexible(
                    child: Text(
                      'Software Engineer. Scholar. Hobbyist. Traveler. Believer.',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Column(
                children: [
                  Text(
                    'About Me',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Born and raised in Texas, my family moved to Washington at age 11. I cannot be classified into a single stereotype. Simultaneously I am a geek, engineer, athlete, carpenter, musician, snowboarder, rock-climber, reader, and more!',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Growth: spiritually, professionally, and personally is my highest priority.Wisdom is understanding when your knowledge is insufficient, gone through a process of retrospection on past experiences, and applied the lessons available to be learned. I aim to try everything, fail, and then learn from those failures.',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'I have a vision for my life, something I want to achieve. Life is always taking you somewhere, and if you aren'
                    't going somewhere with purpose, then it doesn'
                    't matter what vehicle you drive and anywhere is good. I will serve as many people in this life as I can. The world will forget my name, but God willing, will never forget the impact I leave.',
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Text(
                        '"If something is important enough, you should try. Even if you know the probable outcome is failure."',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Elon Musk',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Text(
                        '"Do not conform to the pattern of this world, but be transformed by the renewing of your mind. Then you will be able to test and approve what God'
                        's will is -- his good, please, and perfect will." Romans 12:2',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Romans 12:2',
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
