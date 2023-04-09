import 'package:flutter/material.dart';
import 'courses_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.white, // changing the background color to black
        title: const Text(
        'cipherschool',
        style: TextStyle(
        color: Colors.black, // changing the color to white
    ),
    ),
    actions: [
    IconButton(
    icon: const Icon(
    Icons.menu,
    color: Colors.black, // changing the color to white
    ),
    onPressed: () {
    //TODO: add sliding option functionality
    },
    ),
    ],
    ),
    body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Text(
    'Welcome to the future of learning!',
    style: TextStyle(
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: Colors.black, // changing the color to black
    ),
    textAlign: TextAlign.center,
    ),
    const SizedBox(height: 38),
    const Text(
    'Start learning by best creators for absolutely free',
    style: TextStyle(
    fontSize: 28,
    ),
    textAlign: TextAlign.center,
    ),
    const SizedBox(height: 16),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Icon(
    Icons.circle,
    size: 30,
    color: Colors.black,
    ),
    const SizedBox(width: 2),
    const Icon(
    Icons.circle,
    size: 30,
    color: Colors.black,
    ),
    const SizedBox(width: 2),
    const Icon(
    Icons.circle,
    size: 30,
    color: Colors.black,
    ),
    const SizedBox(width: 13),
    Column(
    children: const [
    Text(
    '50+',
    style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    ),
    ),
    Text(
    'mentors',
    style: TextStyle(
    fontSize: 14,
    color: Colors.black54,
    ),
    ),
    ],
    ),
    const SizedBox(width: 8),
    Column(
    children: [
    Row(
    children: const [
    Icon(
    Icons.star,
    color: Colors.yellow,
    size: 24,
    ),
    Icon(
    Icons.star,
    color: Colors.yellow,
    size: 24,
    ),
    Icon(
    Icons.star,
    color: Colors.yellow,
    size: 24,
    ),
    Icon(
    Icons.star,
    color: Colors.yellow,
    size: 24,
    ),
    Icon(
    Icons.star_half,
    color: Colors.yellow,
    size: 24,
    ),
    ],
    ),
    const Text(
    '4.8/5',
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    ),
    ),
    ],
    ),
    ],
    ),
      const SizedBox(height: 32),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CoursesPage()),
          );
        },

    child: ElevatedButton(
    onPressed: null,
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orange,
    textStyle: const TextStyle(
    color: Colors.black,
    ),
    ),
    child: const Text('Start learning now -->'),
    ),
      ),
    ]),

        bottomNavigationBar: BottomAppBar(

color: Colors.white,
elevation: 0,
shape: const CircularNotchedRectangle(),
child: SizedBox(
height: 56,
child: Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: const [
IconButton(
icon: Icon(Icons.home),
onPressed: null,
tooltip: 'Home',
),
IconButton(
icon: Icon(Icons.book_online),
onPressed: null,
tooltip: 'Courses',
),
SizedBox(width: 40),
IconButton(
icon: Icon(Icons.compass_calibration),
onPressed: null,
tooltip: 'Trending',
),
IconButton(
icon: Icon(Icons.person),
onPressed: null,
tooltip: 'My Profile',
),
],
),
),
),
);
}
}
