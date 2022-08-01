import 'package:flutter/material.dart';
import 'msosi_theme.dart';
import 'circle_image.dart';

class AuthorCard extends StatelessWidget {
  final String authorName;
  final String title;
  final ImageProvider imageProvider;

  const AuthorCard({
    Key? key,
    required this.authorName,
    required this.title,
    required this.imageProvider,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,//hii inaweka gap between like button na profile pic content
          children: [
            Row( children:[
                CircleImage(imageProvider: imageProvider, imageRadius: 28),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    authorName,
                    style: MsosiTheme.lightTextTheme.headline2,
                  ),
                  Text(
                    title,
                    style: MsosiTheme.lightTextTheme.headline3,
                  ),
                ]),
              ]),

            IconButton(
                icon: const Icon(Icons.favorite_border),
                iconSize: 30,
                color: Colors.grey[400],
                onPressed: (){
                  const snackBar = SnackBar(content: Text('Press Favorite'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
            ),
          ],

      )
    );
  }
}