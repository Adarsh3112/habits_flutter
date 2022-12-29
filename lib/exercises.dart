import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercises extends StatelessWidget {
  final icon;
  final String ExerciseName;
  final String NumberOfExercises;
  final logoColor;
  const Exercises(
      {Key? key,
      required this.icon,
      required this.ExerciseName,
      required this.NumberOfExercises,
      required this.logoColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      color: logoColor,
                      child: Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ExerciseName,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        NumberOfExercises,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz_sharp),
            ],
          ),
        ),
      ),
    );
  }
}
