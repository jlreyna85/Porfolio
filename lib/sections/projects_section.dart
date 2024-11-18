import 'package:flutter/material.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Proyectos',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const ProjectCard(
            title: 'MyQR',
            as: 'Android Studio',
            ktl:'Kotlin',
            rn:'',
            ts:'',
            fb:'Firebase',
            ex:'',
            description: 'Aplicación gratuita de generación y lectura de códigos QR para Institucion Educativa. Más de 200 usuarios registrados en el primer mes. Permite a estudiantes y docentes acceder a sus carnets digitales de forma rápida y segura. Desarrollada con Android Studio, Kotlin y Firebase.',
            imageUrl: 'assets/myqr.png',
          ),
          const ProjectCard(
            title: 'MiTu',
            as: 'Android Studio',
            rn: 'React Native',
            ktl:'Kotlin',
            ts:'TypeScript',
            ex:'Expo',
            fb:'Firebase',
            description: 'Aplicación multiplataforma de tutorías, con más de 100 asesorías gestionadas en el primer mes. Facilita la conexión entre estudiantes y tutores, mejorando la calidad educativa. Desarrollada con Android Studio y actualizada para una experiencia multiplataforma Con React Native.',
            imageUrl: 'assets/mitu.png',
          ),
        ],
      ),
    );
  }
}
