import 'package:untitled/getX/services/provider.dart';

import '../controllers/store_controller.dart';
import '../models/reviews.dart';
import '../widgets/rounded_input.dart';

class ReviewRepository {
  StoreProvider storeProvider;
  ReviewRepository({required this.storeProvider});

  List<StoreReviews> readReviews() => storeProvider.readReviews();
  void writeReviews(List<StoreReviews> reviews) =>
      storeProvider.writeReview(reviews);
}
