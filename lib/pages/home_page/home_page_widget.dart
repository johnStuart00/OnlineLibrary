import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'package:online_library/widgets/search_box_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPageWidget extends StatefulWidget {
  const MainPageWidget({super.key});

  @override
  State<MainPageWidget> createState() => _MainPageWidgetState();
}

class _MainPageWidgetState extends State<MainPageWidget> {
  List<String> items = [
    'Bölümler',
    'Hemmesi',
    'Novel',
    'Self-love',
    'Science',
    'Romance',
    'Old-books'
  ];

  List<Widget> icons = [];

  int activeIndex = 0;

  int current = 1;

  final _searchController = TextEditingController();

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
            //Hi to User part start
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, John',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'What do you want to read today?',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),

            //Hi to User part end
            const SizedBox(height: 10),
            //Search box start
            SearchBoxWidget(
              searchController: _searchController,
            ),
            //Search box end
            const SizedBox(height: 10),
            //Categories box start
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
                                        color:
                                            const Color.fromRGBO(13, 57, 52, 1),
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
            //Categories box end
            const SizedBox(height: 10),
            //MAIN BODY Start,
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text('The Best'),
            ),
            SizedBox(
              height: 320,
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
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Theme.of(context).shadowColor,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30)),
                                child: Image.asset(
                                  'assets/images/tagamly_sozler001.png',
                                  width: 300,
                                  height: 200,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text('Book Name',
                                  style:
                                      Theme.of(context).textTheme.titleLarge),
                              const SizedBox(height: 5),
                              Text(
                                'Author Name',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
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
          ],
        ),
      ),
    );
  }

  Widget _buildImage(String urlImage, int index) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
}
