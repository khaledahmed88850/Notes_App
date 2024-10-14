import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isloading = false});
  final void Function()? onTap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        height: 45,
        child: Center(
            child: isloading
                ? const CircularProgressIndicator(color: Colors.black,
                strokeAlign: -3, 
                backgroundColor: Colors.white,
                )
                : const Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  )),
      ),
    );
  }
}
