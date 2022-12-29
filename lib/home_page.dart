import 'package:basketball/emotes.dart';
import 'package:basketball/exercises.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Adarsh',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '27 Dec, 2022',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[300]),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue[600]),
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.notifications,
                          color: CupertinoColors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  //SEARCH BAR
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[300],
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
// how do you feel Tocay ///
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel today?',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(Icons.more_horiz_sharp, color: Colors.white),
                    ],
                  ),
                  // Emojis///
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //GOOD
                      Column(
                        children: [
                          Emojis(emoticonFace: '😃'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                      //FINE
                      Column(
                        children: [
                          Emojis(emoticonFace: '😅'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      //SAD
                      Column(
                        children: [
                          Emojis(emoticonFace: '😐'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      // Not Good
                      Column(
                        children: [
                          Emojis(emoticonFace: '🥺'),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Expanded starts here white portion
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz_sharp,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // List of exercises//
                      Expanded(
                        child: ListView(
                          children: [
                            Exercises(
                              logoColor: Colors.orange,
                              icon: Icons.favorite_rounded,
                              ExerciseName: 'Speaking Skills',
                              NumberOfExercises: '15 Exercises',
                            ),
                            Exercises(
                              logoColor: Colors.deepPurple,
                              icon: Icons.person_sharp,
                              ExerciseName: 'Reading Speed',
                              NumberOfExercises: '6 Exercises',
                            ),
                            Exercises(
                              logoColor: Colors.teal,
                              icon: Icons.star,
                              ExerciseName: 'Writing Skills',
                              NumberOfExercises: '20 Exercises',
                            ),
                            Exercises(
                              logoColor: Colors.redAccent,
                              icon: Icons.sports_esports,
                              ExerciseName: 'Gaming Skills',
                              NumberOfExercises: '15 Exercises',
                            ),
                            Exercises(
                              logoColor: Colors.pink,
                              icon: Icons.sports_soccer_outlined,
                              ExerciseName: 'Football Skills',
                              NumberOfExercises: '15 Exercises',
                            ),
                            Exercises(
                              logoColor: Colors.cyanAccent,
                              icon: Icons.sports_basketball_rounded,
                              ExerciseName: 'Basketball Skills',
                              NumberOfExercises: '15 Exercises',
                            ),
                            Exercises(
                              logoColor: Colors.green,
                              icon: Icons.sports_cricket_sharp,
                              ExerciseName: 'Cricket Skills',
                              NumberOfExercises: '15 Exercises',
                            ),
                            Exercises(
                              logoColor: Colors.indigo[300],
                              icon: Icons.computer_rounded,
                              ExerciseName: 'Computer Skills',
                              NumberOfExercises: '15 Exercises',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey.shade300,
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.message_rounded),
            label: 'Chat',
          ),
          CurvedNavigationBarItem(
            child: Icon(Icons.person_sharp),
            label: 'You',
          ),
        ],
      ),
    );
  }
}
