import 'package:flutter/material.dart';
import '../widgets/custom_iconbutton.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String ktl;
  final String rn;
  final String as;
  final String ts;
  final String fb;
  final String ex;
  

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ktl,
    required this.rn,
    required this.as,
    required this.ts,
    required this.fb,
    required this.ex,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      color: Colors.green.shade50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Descripción
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageUrl,
                width: 200, // Establece un ancho para la imagen
                height: 200, // Establece una altura para la imagen
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
                Wrap(
                  spacing: 8.0, // Espaciado horizontal entre botones
                  runSpacing: 2.0, // Espaciado vertical entre líneas
                children: [
                  if (as.isNotEmpty)
                        CustomIconButton(
                          label: as,assetPath: 'assets/icons/android.svg',backcolor: const Color.fromARGB(150, 37, 116, 0),textcolor: Colors.white,),
                      if (ktl.isNotEmpty)
                        CustomIconButton(
                          label: ktl,assetPath: 'assets/icons/kotlin.svg',backcolor: const Color.fromARGB(150, 143, 74, 255),textcolor: Colors.white,
                        ),
                      if (rn.isNotEmpty)
                        CustomIconButton(
                          label: rn,assetPath: 'assets/icons/react.svg',backcolor: const Color.fromARGB(150, 88, 196, 220),textcolor: Colors.white,
                        ),
                      if (ts.isNotEmpty)
                        CustomIconButton(
                          label: ts,assetPath: 'assets/icons/typescript.svg',backcolor: const Color.fromARGB(150, 0, 63, 238),textcolor: Colors.white,
                        ),
                      if (ex.isNotEmpty)
                        CustomIconButton(
                          label: ex,assetPath: 'assets/icons/expo.svg',backcolor: const Color.fromARGB(149, 0, 0, 0),textcolor: Colors.white,
                        ),
                      if (fb.isNotEmpty)
                        CustomIconButton(
                          label: fb,assetPath: 'assets/icons/firebase.svg',backcolor: const Color.fromARGB(150, 206, 173, 63),textcolor: Colors.white,
                        ),
                        ],
                        ),
                ],
              ),
            ),
            const SizedBox(width: 10), // Espacio entre la descripción y la imagen
            // Imagen
          ],
        ),
      ),
    );
  }
}