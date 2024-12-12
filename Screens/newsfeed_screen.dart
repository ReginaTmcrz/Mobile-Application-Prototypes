import 'package:facebook_starter/widgets/newsfeed.dart';
import 'package:flutter/material.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
            userName: 'Jennifer Pandacan',
            postContent: 'LF: Paskulayan date ASAP!',
            Date: 'Dec. 5, 2024',
            postImage: 'assets/images/profile.jpg',
            numberOfLikes: 12),
        NewsfeedCard(
            userName: 'Bianca Rosales',
            postContent: 'LF: Paskulayan date ng kaibigan ko',
            Date: 'Dec. 5, 2024',
            postImage: '',
            numberOfLikes: 12),
        NewsfeedCard(
            userName: 'Regina Tomacruz',
            postContent: 'U left your sweater here',
            Date: 'Dec. 5, 2024',
            postImage: '',
            numberOfLikes: 12),
      ],
    );
  }
}
