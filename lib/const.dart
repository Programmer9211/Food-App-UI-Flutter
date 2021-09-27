import 'package:flutter/material.dart';

const Color darkGreen = Color.fromRGBO(53, 98, 80, 1);
const Color lightGreen = Color.fromRGBO(141, 211, 183, 1);
const Color green = Color.fromRGBO(90, 142, 122, 1);
const Color orange = Color.fromRGBO(255, 138, 0, 1);

List<GridViewBuilderData> data = [
  GridViewBuilderData(
    itemName: "Cheese Salad",
    description: "Salad with lattuce, shrimp, tomatoes & creamy cheese",
    rating: "4.5",
    imagePath: "assets/salad.jpg",
  ),
  GridViewBuilderData(
    itemName: "Soy and Tomate'",
    description: "Soyabean, is a great source of protien, add in your diet now",
    rating: "3.9",
    imagePath: "assets/tomato.jpg",
  ),
  GridViewBuilderData(
    itemName: "Spanish Ensalada",
    description:
        "Spanish Salad with chedder cheese and veggies are heaven in mouth",
    rating: "4.1",
    imagePath: "assets/spanish.jpg",
  ),
  GridViewBuilderData(
    itemName: "Radish Delight",
    description:
        "Delicious raddish is possible with us. Eat Healthy and stay healthy",
    rating: "3.7",
    imagePath: "assets/raddish.jpg",
  ),
];

class GridViewBuilderData {
  final String imagePath, itemName, description, rating;

  GridViewBuilderData(
      {required this.description,
      required this.imagePath,
      required this.itemName,
      required this.rating});
}
