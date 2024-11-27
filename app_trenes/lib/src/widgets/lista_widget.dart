import 'package:flutter/material.dart';

class Listacursos extends StatefulWidget {
  const Listacursos({super.key});

  @override
  State<Listacursos> createState() => _ListacursosState();
}

class _ListacursosState extends State<Listacursos> {
  double widthpantalla = 0;
  final tituloStyletext = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    widthpantalla = MediaQuery.of(context).size.width - 50;

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          Text(
            "Cursos Disponibles",
            style: tituloStyletext,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              bloquesPortada("p1.jpg", "titulo"),
              SizedBox(
                width: widthpantalla * 0.03,
              ),
              bloquesPortada("p2.jpg", "titulo"),
              SizedBox(
                width: widthpantalla * 0.03,
              ),
              bloquesPortada("p3.jpg", "titulo"),
            ],
          )
        ],
      ),
    );
  }

  Column bloquesPortada(String image, String titulo) {
    return Column(children: [
      ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$image",
            width: widthpantalla * 0.31,
            height: 110,
            fit: BoxFit.cover,
          )),
      const SizedBox(
        height: 2,
      ),
    ]);
  }
}

class ListaCursosConCheckbox extends StatefulWidget {
  const ListaCursosConCheckbox({super.key});

  @override
  State<ListaCursosConCheckbox> createState() => _ListaCursosConCheckboxState();
}

class _ListaCursosConCheckboxState extends State<ListaCursosConCheckbox> {
  // Lista de cursos con su estado de checkbox
  List<Map<String, dynamic>> cursos = [
    {'nombre': 'Curso de Infraestructura Ferroviaria', 'isChecked': false},
    {'nombre': 'Curso de Vías', 'isChecked': false},
    {'nombre': 'Curso de Control de Tráfico Ferroviario', 'isChecked': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // Título de los cursos completados
          const Padding(
            padding: EdgeInsets.all(4),
            child: Text(
              'Cursos Completados',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

          // Lista de cursos con checkbox
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(25),
              itemCount: cursos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Checkbox(
                    value: cursos[index]['isChecked'],
                    onChanged: (bool? value) {
                      setState(() {
                        cursos[index]['isChecked'] = value!;
                      });
                    },
                  ),
                  title: Text(
                    cursos[index]['nombre'],
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
