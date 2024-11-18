import 'package:flutter/material.dart';
import 'package:online_library/features/read_and_buy_page/presentation/read_and_buy_page.dart';
import 'package:online_library/widgets/category_widget.dart';

class SectionsWidget extends StatelessWidget {
  const SectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            'Sections Books',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 170,
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
                  child: const CategoryWidget(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
