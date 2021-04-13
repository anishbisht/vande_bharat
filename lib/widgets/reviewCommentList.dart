import 'package:moblie_ui/image_path.dart';
import 'package:moblie_ui/models/reviewCommentModel.dart';
import 'package:moblie_ui/models/wishlistModel.dart';
import 'package:moblie_ui/pages/profilePage.dart';

class ReviewCommentList {
  static List<ReviewComment> review = <ReviewComment>[
    ReviewComment(
      customerName: "Ashish",
      imageName: ProfileImage,
      comment: 'Awesome',
      description:
          'Product is nice and i use it for 1 week did not find any cons but packaging is not good',
      initialRating: 5,
    ),
    ReviewComment(
      customerName: "Ashish",
      imageName: ProfileImage,
      comment: 'Awesome',
      description:
          'Product is nice and i use it for 1 week did not find any cons but packaging is not good',
      initialRating: 4,
    ),
  ];
}
