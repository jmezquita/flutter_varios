import 'profile_model.dart';

class ReviewModel {
  int paisId;
  ProfileModel profile;
  String userInfo;
  String comments;
  double starCant;



  ReviewModel(
     this.profile ,
      {this.paisId = 0,
      this.userInfo = "",
      this.comments = "",
      this.starCant = 0.0});
}
