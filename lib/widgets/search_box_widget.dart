import 'package:flutter/material.dart';

class SearchBoxWidget extends StatefulWidget {
  final TextEditingController searchController;
  const SearchBoxWidget({
    required this.searchController,
    super.key,
  });

  @override
  State<SearchBoxWidget> createState() => _SearchBoxWidgetState();
}

class _SearchBoxWidgetState extends State<SearchBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: widget.searchController,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            prefixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            suffix: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_voice_outlined,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.sort),
                ),
              ],
            ),
            // suffixIcon: IconButton(
            //   onPressed: () {},
            //   icon: const Icon(Icons.keyboard_voice_rounded),
            // ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    widget.searchController.dispose();
    super.dispose();
  }
}
