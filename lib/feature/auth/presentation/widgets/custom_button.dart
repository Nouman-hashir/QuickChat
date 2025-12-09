import 'package:flutter/material.dart';

class CustomLoginButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  final String text;
  final IconData icon; 

  const CustomLoginButton({
    super.key,
    required this.onPressed,
    this.width,
    this.height = 45,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
    this.text = 'Login',
    this.icon = Icons.arrow_forward,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 132, 57, 238), 
          foregroundColor: Colors.white, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), 
          ),
          padding: padding,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 26),
            const SizedBox(width: 4),
            Text(text,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )
            ),
          ],
        ),
      ),
    );
  }
}