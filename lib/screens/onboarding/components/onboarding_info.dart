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
    title: 'Welcome to EatRight',
    image: 'assets/images/Onboarding_Image1.png',
  ),
  OnBoarding(
    title: 'Maintain your ideal weight',
    image: 'assets/images/Onboarding_Image2.png',
  ),
  OnBoarding(
    title: 'Keep track of your progress',
    image: 'assets/images/Onboarding_Image3.png',
  ),
  OnBoarding(
    title: 'Let us be your guide!',
    image: 'assets/images/Onboarding_Image4.png',
  ),
];