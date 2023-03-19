import 'package:meta/meta.dart';
import 'package:primeiro_app/app/data/providers/api.dart';

class MovieRepository {
  final MovieApiClient? apiClient;

  MovieRepository({@required this.apiClient}) : assert(apiClient != null);

  Future getAll() {
    return apiClient!.getAll();
  }

  Future likedEdit(int index) {
    return apiClient!.likedEdit(index);
  }

  Future getLike(int index) {
    return apiClient!.getLike(index);
  }

}
