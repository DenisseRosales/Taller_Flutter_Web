import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 184, 231, 255), // Color pastel
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoSlabTextTheme(), // Fuente formal
      ),
      home: Scaffold(
        body: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                botton(Icons.folder_open, 'Proyectos', () {}),
                botton(Icons.note_alt, 'Borradores', () {}),
                botton(Icons.share, 'Compartido conmigo', () {}),
                const Spacer(),
                botton(Icons.settings, 'Configuración', () {}),
                botton(Icons.group, 'Invitar miembros', () {}),
                botton(Icons.add_circle_outline, 'Nuevo borrador', () {}),
                botton(Icons.add_circle_outline, 'Nuevo proyecto', () {}),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'PROYECTO EN GENERAL',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 35,
                        ),
                        Spacer(),
                        Icon(Icons.link),
                        SizedBox(width: 20),
                        Text('Share'),
                        SizedBox(width: 20),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        nota(),
                        const SizedBox(width: 45),
                        nota(),
                        const SizedBox(width: 45),
                        nota(),
                        const SizedBox(width: 45),
                        nota(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nota() {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 228, 225), // Color pastel
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 182, 193), // Color pastel
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'TITULO',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'En este apartado puedes agregar informacion brindada por el usuario',
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 204, 229, 255), // Color pastel
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Editar',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 33, 33, 33),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              icon,
              color: const Color.fromARGB(255, 135, 206, 235), // Color pastel
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
