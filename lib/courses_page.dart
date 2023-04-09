import 'package:flutter/material.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  _CoursesPageState createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  int _selectedCourseIndex = 0;
  bool _isDarkModeEnabled = false;

  final List<String> _courses = [ ' ', 'React Native', 'Android', 'iOS', 'Web', ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: const Text('CipherSchools'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  _isDarkModeEnabled ? Icons.nightlight_round : Icons.wb_sunny,
                ),
                onPressed: () {
                  setState(() {
                    _isDarkModeEnabled = !_isDarkModeEnabled;
                  });
                },
              ),
            ],
          ),
          body: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Stack(
                    children: [
                      //code for the top section with pageview
                      Container(
                        color: Colors.blueGrey,
                        child: const Center(
                          child: Text(
                            'flutter',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: PageView.builder(
                          itemCount: _courses.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              color: Colors.blue[index * 100],
                              child: Center(
                                child: Text(
                                  _courses[index],
                                  style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            );
                          },
                          onPageChanged: (int index) {
                            setState(() {
                              _selectedCourseIndex = index;
                            });
                          },
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        bottom: 0,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            if (_selectedCourseIndex > 0) {
                              setState(() {
                                _selectedCourseIndex -= 1;
                              });
                            }
                          },
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        bottom: 0,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            if (_selectedCourseIndex < _courses.length - 1) {
                              setState(() {
                                _selectedCourseIndex += 1;
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Recommended Courses',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    DropdownButton<String>(
                      value: 'Popular ',
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? newValue) {},
                      items: <String>[
                        'Popular ',
                        'Course 1',
                        'Course 2',
                        'Course 3',
                        'Course 4',
                        'Course 5',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                              value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                        );
                      }).toList(),
                    ),
                  ],

                ),


                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(

                    height: 400,
                    child: Stack(
                      children: [
                        //code for the bottom section with pageview
                        Container(
                          color: Colors.blueGrey,
                        ),

                        Positioned.fill(
                          child: PageView.builder(
                            itemCount: _courses.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                color: Colors.blue[index * 100],
                                child: Center(
                                  child: Text(
                                    _courses[index],
                                    style: const TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              );
                            },
                            onPageChanged: (int index) {
                              setState(() {
                                _selectedCourseIndex = index;
                              });
                            },
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          bottom: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              if (_selectedCourseIndex > 0) {
                                setState(() {
                                  _selectedCourseIndex -= 1;
                                });
                              }
                            },
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          bottom: 0,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_forward_ios),
                            onPressed: () {
                              if (_selectedCourseIndex < _courses.length - 1) {
                                setState(() {
                                  _selectedCourseIndex += 1;
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


              ]),

          bottomNavigationBar: BottomAppBar(

            color: Colors.blueGrey[900],
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
                  ]

              ),
            ),
          ),
        ),
      ),

    );

  }
}



