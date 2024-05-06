import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Books {
  final id;
  final String imageName;
  final String title;
  final String bookInfo;
  final String description;

  Books({
    required this.id,
    required this.imageName,
    required this.title,
    required this.bookInfo,
    required this.description,
  });
}

class FavoritesPageWidget extends StatefulWidget {
  FavoritesPageWidget({super.key});

  @override
  State<FavoritesPageWidget> createState() => _FavoritesPageWidgetState();
}

class _FavoritesPageWidgetState extends State<FavoritesPageWidget> {
  final _books = [
    Books(
        id: 1,
        imageName: 'assets/images/p_luca_21670_3c13c611.jpeg',
        title: 'Anna Karenina by Leo Tolstoy',
        bookInfo: 'Book info',
        description:
            'Set in 19th-century Russia, this novel revolves around the life of Anna Karenina, a high-society woman who, dissatisfied with her loveless marriage, embarks on a passionate affair with a charming officer named Count Vronsky. This scandalous affair leads to her social downfall, while parallel to this, the novel also explores the rural life and struggles of Levin, a landowner who seeks the meaning of life and true happiness. The book explores themes such as love, marriage, fidelity, societal norms, and the human quest for happiness.'),
    Books(
        id: 2,
        imageName: 'assets/images/p_luca_21670_3c13c611.jpeg',
        title: 'Madame Bovary by Gustave Flaubert',
        bookInfo: 'Book info',
        description:
            'Madame Bovary is a tragic novel about a young woman, Emma Bovary, who is married to a dull, but kind-hearted doctor. Dissatisfied with her life, she embarks on a series of extramarital affairs and indulges in a luxurious lifestyle in an attempt to escape the banalities and emptiness of provincial life. Her desire for passion and excitement leads her down a path of financial ruin and despair, ultimately resulting in a tragic end.'),
    Books(
        id: 3,
        imageName: 'assets/images/p_luca_21670_3c13c611.jpeg',
        title: 'War and Peace by Leo Tolstoy',
        bookInfo: 'Book info',
        description:
            'Set in the backdrop of the Napoleonic era, the novel presents a panorama of Russian society and its descent into the chaos of war. It follows the interconnected lives of five aristocratic families, their struggles, romances, and personal journeys through the tumultuous period of history. The narrative explores themes of love, war, and the meaning of life, as it weaves together historical events with the personal stories of its characters.'),
    Books(
        id: 4,
        imageName: 'assets/images/p_luca_21670_3c13c611.jpeg',
        title: 'The Great Gatsby by F. Scott Fitzgerald',
        bookInfo: 'Book info',
        description:
            "Set in the summer of 1922, the novel follows the life of a young and mysterious millionaire, his extravagant lifestyle in Long Island, and his obsessive love for a beautiful former debutante. As the story unfolds, the millionaire/'s dark secrets and the corrupt reality of the American dream during the Jazz Age are revealed. The narrative is a critique of the hedonistic excess and moral decay of the era, ultimately leading to tragic consequences."),
    Books(
        id: 5,
        imageName: 'assets/images/p_luca_21670_3c13c611.jpeg',
        title: 'Lolita by Vladimir Nabokov',
        bookInfo: 'Book info',
        description:
            'The novel tells the story of Humbert Humbert, a man with a disturbing obsession for young girls, or "nymphets" as he calls them. His obsession leads him to engage in a manipulative and destructive relationship with his 12-year-old stepdaughter, Lolita. The narrative is a controversial exploration of manipulation, obsession, and unreliable narration, as Humbert attempts to justify his actions and feelings throughout the story.'),
  ];

  final _searchController = TextEditingController();

  var _filteredBooks = <Books>[];

  void _searchBooks() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredBooks = _books.where((Books book) {
        return book.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredBooks = _books;
    }

    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    _filteredBooks = _books;

    _searchController.addListener(() {
      _searchBooks();
    });
  }

  void _onBookTap(int index) {
    final id = _books[index].id;
    Get.toNamed('/readAndBuyPage', arguments: id);
  }

  final urlImages = [
    'assets/images/carousel_images/9f0bbe386a.jpg',
    'assets/images/carousel_images/346824345923811.webp',
    'assets/images/carousel_images/b94740f80df563fa7443f481b3f7fab1.png',
    'assets/images/carousel_images/f79beacdef1ab0dc3d00e6c02542d89a.jpg',
    'assets/images/carousel_images/image-1.jpg',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text('Sizi gyzylandyrar'),
          const SizedBox(height: 10),
          // Image Carousel start
          SizedBox(
            child: Column(
              children: [
                CarouselSlider.builder(
                  itemCount: urlImages.length,
                  options: CarouselOptions(
                      initialPage: 0,
                      height: 200.0,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      enableInfiniteScroll: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      }),
                  itemBuilder: (
                    context,
                    index,
                    realIndex,
                  ) {
                    final urlImage = urlImages[index];
                    return _buildImage(urlImage, index);
                  },
                ),
                const SizedBox(height: 10),
                _buildIndicator(),
              ],
            ),
          ),
          // Image Carousel end
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: _FavoriteContainerWidget(
              containerName: 'Halanlarym',
              containerItemCount: '2',
              containerIcon: Icons.favorite_border,
            ),
          ),
          const SizedBox(height: 10),
          _FavoriteContainerWidget(
            containerName: 'Belki soň',
            containerItemCount: '10',
            containerIcon: Icons.access_time,
          ),
          const SizedBox(height: 10),
          _FavoriteContainerWidget(
            containerName: 'Ýüklap alanlarym',
            containerItemCount: '4',
            containerIcon: Icons.file_download_rounded,
          ),
          const SizedBox(height: 10),
          _FavoriteContainerWidget(
            containerName: 'Okanlarym',
            containerItemCount: '5',
            containerIcon: Icons.flag_circle,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildImage(String urlImage, int index) => Container(
        //margin: const EdgeInsets.symmetric(horizontal: 1),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Widget _buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImages.length,
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.mainColor,
          radius: 8,
          spacing: 10,
          dotHeight: 9,
          dotWidth: 9,
        ),
      );
}

class _FavoriteContainerWidget extends StatelessWidget {
  String containerName;
  String containerItemCount;
  IconData containerIcon;
  _FavoriteContainerWidget({
    required this.containerName,
    required this.containerItemCount,
    required this.containerIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainWhite,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 5),
            Icon(
              containerIcon,
            ),
            const SizedBox(width: 5),
            Expanded(child: Text(containerName)),
            Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.mainGrey100,
              ),
              child: Center(child: Text(containerItemCount)),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}

// Old version
// Stack(
//       children: [
//         ListView.builder(
//             physics: const BouncingScrollPhysics(),
//             padding: const EdgeInsets.only(top: 70),
//             keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
//             itemCount: _filteredBooks.length,
//             itemExtent: 163,
//             itemBuilder: (BuildContext context, int index) {
//               final book = _filteredBooks[index];
//               return Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                 child: Stack(
//                   children: [
//                     Container(
//                       clipBehavior: Clip.hardEdge,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           border: Border.all(
//                             color: Colors.black.withOpacity(0.2),
//                           ),
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(10)),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.1),
//                               blurRadius: 1,
//                               offset: const Offset(0, 2),
//                             ),
//                           ]),
//                       child: Row(
//                         children: [
//                           Image.asset(book.imageName),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   book.title,
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 const SizedBox(height: 20),
//                                 Text(
//                                   book.bookInfo,
//                                   maxLines: 1,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 const SizedBox(height: 20),
//                                 Text(
//                                   book.description,
//                                   maxLines: 2,
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                                 const SizedBox(height: 20),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     Material(
//                       color: Colors.transparent,
//                       child: InkWell(
//                         borderRadius: BorderRadius.circular(10),
//                         onTap: () => _onBookTap(index),
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }),
//         Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: SearchBoxWidget(
//             searchController: _searchController,
//           ),
//         ),
//       ],
//     );
