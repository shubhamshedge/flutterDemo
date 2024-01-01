import 'package:flutter/cupertino.dart';
import 'package:untitled/ApiCallWithProviders/service/provide_services.dart';

import '../model/post_model.dart';

class ProviderOpr extends ChangeNotifier {
  final service = ProvideServices();
  bool isLoading = false;
  List<Post> _post = [];

  List<Post> get posts => _post;

  getAllPost() async {
    isLoading = true;
    notifyListeners();
    var post = await service.getAll();
    _post = post;
    isLoading = false;
    notifyListeners();
  }

}
