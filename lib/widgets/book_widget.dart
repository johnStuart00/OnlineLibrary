import 'package:flutter/material.dart';

class BookWidget extends StatelessWidget {
  const BookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
