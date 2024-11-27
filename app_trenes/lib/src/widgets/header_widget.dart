import 'package:flutter/material.dart';

class Headerwidget extends StatelessWidget {
  const Headerwidget({super.key});

  static const tituloTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 26,
  );

  static const subtituloTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(30.0),
      height: 160.0,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 41, 40, 39)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Formacion Señalera",
                style: tituloTextStyle,
              ),
              const SizedBox(height: 8),
              Text(
                "Cursos y Capacitaciones",
                style: subtituloTextStyle,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black.withOpacity(0.1),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Acción del botón
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
