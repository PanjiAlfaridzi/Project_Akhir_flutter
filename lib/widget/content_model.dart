class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: "pick your food from our Menu\n More than 35 times",
      image: "images/gambar7.png",
      title: 'Select from our\n Best Menu'),
  UnboardingContent(
      description: "You can pay cash on delivery and\n card payment is avaible",
      image: "images/gambar8.png",
      title: 'Easy and Online payment'),
  UnboardingContent(
      description: "Deliver you food at your\n Doorstep",
      image: "images/gambar9.png",
      title: 'Quick delivery at a your doorstep'),
];
