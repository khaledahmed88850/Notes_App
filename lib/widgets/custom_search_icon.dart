
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;
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
      icon:  Icon( icon , size: 35),),
    );
  }
}