import 'package:flutter/material.dart';
import 'package:online_library/pages/read_and_buy_page/presentation/read_and_buy_page.dart';
import 'package:online_library/tools/colors/onlinelibrary_colors.dart';
import 'package:online_library/widgets/book_widget.dart';
import 'package:online_library/widgets/search_box_widget.dart';

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

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: items.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          elevation: 0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Hello, Lover Books',
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                const Text(
                  'What do you want to read today?',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w100),
                ),
                const SizedBox(height: 10),
                SearchBoxWidget(searchController: _searchController),
              ],
            ),
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: TabBar(
              dividerHeight: 0.0,
              isScrollable: true,
              labelColor: AppColors.mainColor,
              unselectedLabelColor: AppColors.mainGrey,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: AppColors.mainColor,
                  width: 2,
                ),
              ),
              labelPadding: const EdgeInsets.symmetric(horizontal: 5),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 5),
              tabs: items
                  .map((category) => Tab(
                        child: Container(
                          height: 45,
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Center(
                            child: Text(
                              category,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
        body: TabBarView(
          children: items.map((category) {
            return _buildCategoryContent(category);
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildCategoryContent(String category) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            category == 'Hemmesi' ? 'The Best' : '$category Books',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 320,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ReadAndBuyPage(),
                      ),
                    );
                  },
                  child: const BookWidget(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
