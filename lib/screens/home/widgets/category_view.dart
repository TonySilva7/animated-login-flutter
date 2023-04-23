import 'package:flutter/material.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final List<String> categories = ['Trabalho', 'Estudos', 'Casa'];
  int indexCat = 0;

  void handleClick(String direction) {
    if (direction == 'left') {
      setState(() {
        indexCat == 0 ? indexCat : indexCat--;
      });
    } else {
      setState(() {
        indexCat == categories.length - 1 ? indexCat : indexCat++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print(indexCat);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.white,
          disabledColor: Colors.white54,
          onPressed: indexCat > 0 ? () => handleClick('left') : null,
        ),
        Text(
          categories[indexCat],
          style: const TextStyle(
            fontSize: 18.0,
            letterSpacing: 1.2,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          color: Colors.white,
          disabledColor: Colors.white54,
          onPressed: indexCat < (categories.length - 1) ? () => handleClick('right') : null,
        )
      ],
    );
  }
}
