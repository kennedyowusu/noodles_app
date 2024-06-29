import 'package:gobe_app/constants/image.dart';

// Onboarding
const List<Map<String, String>> onboardingData = [
  {
    "image": onboarding,
    "title": "Discover Local Delicacies",
    "subtitle": "Find the nearest Hot Noodles spots with our easy-to-use app.",
  },
  {
    "image": onboarding_1,
    "title": "Free Delivery Offers",
    "subtitle": "Enjoy free delivery for new customers on your first order.",
  },
  {
    "image": onboarding_2,
    "title": "Choose Your Meal",
    "subtitle":
        "Easily find and order your favorite Noodle from a variety of local vendors.",
  },
];

// List of nav items
final List<Map<String, dynamic>> navItems = [
  {
    "id": 1,
    "icon": home,
  },
  {
    "id": 2,
    "icon": search,
  },
  {
    "id": 3,
    "icon": profile,
  },
];

List<String> productCardImages = [
  seven,
  eight,
  nine,
];

List<Map<String, dynamic>> demoMediumCardData = [
  {
    "name": "Spaghetti",
    "image": five,
    "location": "Jakarta, Indonesia",
    "rating": 4.7,
    "deliveryTime": 30,
  },
  {
    "name": "Ramen",
    "image": six,
    "location": "Kuala Lumpur, Malaysia",
    "rating": 4.9,
    "deliveryTime": 30,
  },
  {
    "name": "Fettuccine Alfredo",
    "image": seven,
    "location": "Bangkok, Thailand",
    "rating": 4.4,
    "deliveryTime": 40,
  },
  {
    "name": "Yakisoba",
    "image": eight,
    "location": "Sydney, Australia",
    "rating": 4.6,
    "deliveryTime": 55,
  },
];

List<String> moreNoodlesImages = [
  six,
  eight,
  nine,
  ten,
  eleven,
];

List<Map<String, dynamic>> moreNoodlesObject = [
  {
    "title": "Spicy Ramen",
    "description": "A Japanese soy-based soup",
    "price": 9.2,
  },
  {
    "title": "Lo Mein",
    "description": "Chinese wheat noodles sauce.",
    "price": 6.8,
  },
  {
    "title": "Pho",
    "description": "Vietnamese rice noodle soup.",
    "price": 8.5,
  },
  {
    "title": "Soba Soup",
    "description": "Hearty noodle soup.",
    "price": 8.2,
  },
  {
    "title": "Pad Thai",
    "description": "A Thai rice noodles + shrimp",
    "price": 8.3,
  },
];

final List<Map<String, dynamic>> moreNoodles = List.generate(
  moreNoodlesObject.length,
  (index) => {
    "image": moreNoodlesImages[index],
    "title": moreNoodlesObject[index]["title"],
    "description": moreNoodlesObject[index]["description"],
    "price": moreNoodlesObject[index]["price"],
  },
);

final List<Map<String, dynamic>> searchResults = [
  {
    "image": five,
    "name": "Spicy Ramen",
    "rating": 4.5,
    "numOfRating": 150,
    "deliveryTime": 20,
    "isFreeDelivery": true,
  },
  {
    "image": six,
    "name": "Pad Thai",
    "rating": 4.9,
    "numOfRating": 212,
    "deliveryTime": 20,
    "isFreeDelivery": false,
  },
  {
    "image": seven,
    "name": "Lo Mein",
    "rating": 4.8,
    "numOfRating": 250,
    "deliveryTime": 30,
    "isFreeDelivery": false,
  },
  {
    "image": eight,
    "name": "Soba Soup",
    "rating": 4.2,
    "numOfRating": 109,
    "deliveryTime": 20,
    "isFreeDelivery": false,
  },
];
