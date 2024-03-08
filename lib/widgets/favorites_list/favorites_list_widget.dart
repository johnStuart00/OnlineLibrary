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
    return Stack(
      children: [
        ListView.builder(
            padding: const EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _books.length,
            itemExtent: 163,
            itemBuilder: (BuildContext context, int index) {
              final book = _books[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black.withOpacity(0.2),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 1,
                              offset: const Offset(0, 2),
                            ),
                          ]),
                      child: Row(
                        children: [
                          Image.asset(book.imageName),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  book.title,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  book.bookInfo,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  book.description,
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
            }),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: "Search",
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
