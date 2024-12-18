import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants/colors.dart';

class ProgressCard extends StatefulWidget {
  final double progressValue;
  final int total;

  const ProgressCard({
    super.key,
    required this.progressValue,
    required this.total,
  });

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int done = (widget.progressValue * widget.total).toInt();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kMainColore,
            kMainDarkBlueColore,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Protean, Carbohydrate & \nFats",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: kMainWhiteColore,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: widget.progressValue,
              backgroundColor: kMainWhiteColore,
              valueColor: const AlwaysStoppedAnimation(
                kMainWhiteColore,
              ),
              minHeight: 12,
              borderRadius: BorderRadius.circular(100),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTag(
                  "Done",
                  done.toString(),
                ),
                _buildTag(
                  "Total",
                  widget.total.toString(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTag(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kMainWhiteColore,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: kMainWhiteColore,
          ),
        ),
      ],
    );
  }
}