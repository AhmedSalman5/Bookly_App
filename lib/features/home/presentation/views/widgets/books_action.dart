
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              fontSize: 16,
            textColor: Colors.black, 
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft:  Radius.circular(16),
              bottomLeft:  Radius.circular(16),
            ), text: '19.99\$',
          )),
          Expanded(
            child: CustomButton(
              fontSize: 16,
            textColor: Colors.white, 
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.only(
              topRight:  Radius.circular(16),
              bottomRight:  Radius.circular(16),
            ), text: 'Free Preview',
          ),
          ),
        ],
      ),
    );
  }
}