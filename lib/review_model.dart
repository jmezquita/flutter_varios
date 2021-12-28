class ReviewModel {
  
   int paisId ;
   String pathImage;
   String userName;
   String userInfo;
   String comments;
   double starCant;

  ReviewModel(
      {
      this.paisId =0,
      this.pathImage="",
      this.userName ="",
      this.userInfo="",
      this.comments="",
      this.starCant=0.0}
      );
}
