class OnBoarding {
  final String title;
  final String image;

  OnBoarding({
    required this.title,
    required this.image,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
    title:
        "Don't own any wearables? No Problem!\nCustomized meal plans to your preference.",
    image: 'assets/images/Onboarding_Image1.png',
  ),
  OnBoarding(
    title: "Meal planning made simple.\nOnly eat what you are supposed to eat!",
    image: 'assets/images/Onboarding_Image2.png',
  ),
  OnBoarding(
    title:
        "Quick and reliable meal plans with recipes!\nLet us help you take your first step to leading a healthy life!",
    image: 'assets/images/Onboarding_Image3.png',
  ),
  OnBoarding(
    title:
        "Your journey to a healthy lifestyle begins here!\nEvaluate and keep track of your eating patterns.",
    image: 'assets/images/Onboarding_Image4.png',
  ),
];
