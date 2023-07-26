class OnboardingModel {
  String image;
  String title;
  String body;

  OnboardingModel(this.image, this.title, this.body);

  static List<OnboardingModel> boardingdata=[
    OnboardingModel("assets/images/img_2.png"  , "", ""),
    OnboardingModel("assets/images/img_3.png", "Find your Comfort Food here", "Here You Can find a chef or dish for every taste and color. Enjoy!"),
    OnboardingModel("assets/images/img_4.png", "Food Ninja is Where Your Comfort Food Lives", "Enjoy a fast and smooth food delivery at your doorstep"),

  ];
}