import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Choose what you want to display',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: 4,
            itemBuilder: (context, index) => CustomerCartWidget(
              icon: cardModel[index].icon,
              text: cardModel[index].text,
            ),
          )
        ],
      ),
    );
  }
}

class CustomerCartWidget extends StatelessWidget {
  const CustomerCartWidget({
    super.key,
    required this.icon,
    required this.text,
  });
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 100,
            color: Colors.red.shade600,
          ),
          Text(
            text.toUpperCase(),
            style: TextStyle(
                color: Colors.red.shade600,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          )
        ],
      ),
    );
  }
}

class CardModel {
  final IconData icon;
  final String text;

  CardModel({
    required this.icon,
    required this.text,
  });
}

List<CardModel> cardModel = [
  CardModel(icon: Icons.person_outline, text: 'personal info'),
  CardModel(icon: Icons.cast_for_education, text: 'education'),
  CardModel(icon: Icons.psychology_alt_outlined, text: 'skills'),
  CardModel(icon: Icons.language_outlined, text: 'personal info'),
];
