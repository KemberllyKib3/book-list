import 'package:book_list_app/app/book_list_theme.dart';
import 'package:flutter/material.dart';

class ModalWidget extends StatelessWidget {
  final String title;
  final String description;

  const ModalWidget({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
        maxHeight: MediaQuery.of(context).size.height * 0.4,
      ),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                title,
                style: BookListTS.font16.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: BookListTS.font14,
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: TextButton(
              child: Text(
                "Voltar",
                style: BookListTS.font14.copyWith(
                  color: BookListColors.hBlue,
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
