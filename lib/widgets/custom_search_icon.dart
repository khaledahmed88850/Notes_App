
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.035),
        borderRadius: BorderRadius.circular(20)
      ),
      height: 55, 
      width: 55,
      child: IconButton(onPressed: () {},
      icon: const Icon(Icons.search_outlined , size: 35),),
    );
  }
}