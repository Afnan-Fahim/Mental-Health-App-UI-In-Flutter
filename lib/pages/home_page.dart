import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 38, 126, 189),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Hi, Jared!
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Jared',
                            style: TextStyle(
                              color: Color.fromARGB(255, 254, 253, 249),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            '23 Jan, 2021',
                            style: TextStyle(
                              color: Colors.blue[200],
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),

                      //Notification
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 104, 160, 202),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: const Icon(Icons.notifications,
                            color: Color.fromARGB(255, 254, 253, 249)),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  // search bar
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 104, 160, 202),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 254, 253, 249),
                          size: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Color.fromARGB(255, 254, 253, 249),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),

                  //How do you feel?
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 254, 253, 249),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Color.fromARGB(255, 254, 253, 249),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),

                  //4 different faces
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //badly
                      Column(
                        children: [
                          EmoticonFace(
                            emoticanFace: '😔',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Badly',
                            style: TextStyle(
                              color: Color.fromARGB(255, 254, 253, 249),
                            ),
                          )
                        ],
                      ),

                      //fine

                      Column(
                        children: [
                          EmoticonFace(
                            emoticanFace: '😊',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(
                              color: Color.fromARGB(255, 254, 253, 249),
                            ),
                          )
                        ],
                      ),

                      //well

                      Column(
                        children: [
                          EmoticonFace(
                            emoticanFace: '😃',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(
                              color: Color.fromARGB(255, 254, 253, 249),
                            ),
                          )
                        ],
                      ),

                      //excellent

                      Column(
                        children: [
                          EmoticonFace(
                            emoticanFace: '😃',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(
                              color: Color.fromARGB(255, 254, 253, 249),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    )),
                child: Center(
                  child: Column(
                    children: [
                      //Exercise heading
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      //listview of exercises
                      Expanded(
                        child: ListView(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const ExerciseTile(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberofExercise: 16,
                              color: Color.fromARGB(255, 247, 133, 86),
                            ),
                            const ExerciseTile(
                              icon: Icons.person,
                              exerciseName: 'Writing Skills',
                              numberofExercise: 20,
                              color: Color.fromARGB(255, 42, 128, 190),
                            ),
                            const ExerciseTile(
                              icon: Icons.star,
                              exerciseName: 'Writing Skills',
                              numberofExercise: 20,
                              color: Colors.pink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
