import 'package:flutter/material.dart';

class Books {
  final String imageName;
  final String title;
  final String bookInfo;
  final String description;

  Books(
      {required this.imageName,
      required this.title,
      required this.bookInfo,
      required this.description});
}

class FavoritesListWidget extends StatelessWidget {
  FavoritesListWidget({super.key});

  final _books = [
    Books(
        imageName: 'assets/images/p_luca_21670_3c13c611.jpeg',
        title: 'Book name',
        bookInfo: 'Book info',
        description: 'description'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _books.length,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index) {
          final books = _books[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Stack(
              children: [
                Container(
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 1,
                          offset: const Offset(0, 2),
                        ),
                      ]),
                  child: Row(
                    children: [
                      Image.asset(books.imageName),
                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Book name',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Book info',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Book description',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      print('1');
                    },
                  ),
                )
              ],
            ),
          );
        });
  }
}
