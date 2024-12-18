import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/colors.dart';
import 'package:flutter_application_4/data/user_data.dart';
import 'package:flutter_application_4/widgets/exercise_card.dart';
import 'package:flutter_application_4/widgets/progress_card.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formatterDay = dayFormat.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultFontSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$formattedDate $formatterDay",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: kSubtitleColre,
                  ),
                ),
                Text(
                  user.fullName,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: kMainBlackColore,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const ProgressCard(
                  progressValue: 0.4,
                  total: 100,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Today's Activity",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      title: 'Pushups',
                      image: 'assets/images/exercises/hunch_back.png',
                      description: 'See more...',
                    ),
                    ExerciseCard(
                      title: 'Pushups',
                      image: 'assets/images/exercises/hunch_back.png',
                      description: 'See more...',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      title: 'Pushups',
                      image: 'assets/images/exercises/hunch_back.png',
                      description: 'See more...',
                    ),
                    ExerciseCard(
                      title: 'Pushups',
                      image: 'assets/images/exercises/hunch_back.png',
                      description: 'See more...',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
