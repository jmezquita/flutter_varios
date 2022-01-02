import 'country_model.dart';
import 'profile_model.dart';
import 'review_model.dart';


abstract class IData {
  List<CountryModel> get countryList;
  List<ReviewModel> get  reviewList;
  List<ProfileModel> get profilelist;
  void load();
}
