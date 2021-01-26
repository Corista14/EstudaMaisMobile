import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String cardTitle;
  final String cardDescription;
  final String cardButtonText;
  final Color cardButtonColor;
  final Function handleButtonClick;

  MyCard(
      {this.cardTitle,
      this.cardButtonText,
      this.cardDescription,
      this.cardButtonColor,
      this.handleButtonClick});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 340,
      child: Card(
        color: Colors.white,
        elevation: 6,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                cardTitle,
                style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              indent: 70,
              endIndent: 70,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                cardDescription,
                style:
                    TextStyle(color: Colors.grey[900], fontSize: 18, height: 1.6, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: handleButtonClick,
                child: Text(
                  cardButtonText,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary:
                      cardButtonColor == null ? Colors.teal : cardButtonColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
