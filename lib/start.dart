import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Start extends StatelessWidget {
  const Start(this.callback, {super.key});

  final void Function() callback;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 10, 8, 28),
            Color.fromARGB(255, 31, 33, 45),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.8,
              child: Image.asset(
                "lib/assets/logo.png",
                width: 250,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Learn Flutter the fun way!",
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252),
                fontSize: 24
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            OutlinedButton.icon(
              onPressed: callback,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Start quiz"),
            )
          ],
        )
      )
    );
  }
}