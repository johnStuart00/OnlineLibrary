import 'package:flutter/material.dart';

class MainDatailsWidget extends StatefulWidget {
  MainDatailsWidget({super.key});

  @override
  State<MainDatailsWidget> createState() => _MainDatailsWidgetState();
}

class _MainDatailsWidgetState extends State<MainDatailsWidget> {
  List<String> items = [
    'All',
    'Novel',
    'Self-love',
    'Science',
    'Romance',
    'Old-books'
  ];

  List<IconData> icons = [
    Icons.home,
    Icons.abc,
    Icons.abc_rounded,
    Icons.ac_unit,
    Icons.access_alarm_rounded
  ];

  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      width: double.infinity,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 80,
                            height: 45,
                            decoration: BoxDecoration(
                                color: current == index
                                    ? Colors.white70
                                    : Colors.white54,
                                borderRadius: current == index
                                    ? BorderRadius.circular(15)
                                    : BorderRadius.circular(10),
                                border: current == index
                                    ? Border.all(
                                        color: Color.fromRGBO(13, 57, 52, 1),
                                        width: 2)
                                    : null),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(13, 57, 52, 1)),
                            ))
                      ],
                    );
                  }),
            ),
            //MAIN BODY,
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('The Best'),
            ),
            const SizedBox(height: 5),

            SizedBox(
              height: 290,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (contx, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                            width: 150,
                            height: 250,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(13, 57, 52, 1),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Text(items[current])),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('New'),
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 350,
              width: double.infinity,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (contx, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                            width: 150,
                            height: 250,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(13, 57, 52, 1),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Text(items[current])),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
