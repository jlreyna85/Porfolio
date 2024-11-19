import 'package:flutter/material.dart';
import '../widgets/experience_card.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Experiencia',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const ExperienceCard(
            title: 'Principal Desarrollador Movil',
            company: 'Proyecto Académico',
            duration: 'Septiembre 2024 - Diciembre 2024',
            description: 'Fui el responsable de realizar la evolucion de la aplicacion MiTu hacia una solucion multiplataforma, permitiendo que estudiantes y tutores accedan desde cualquier dispositivo. Esta actualización amplió la accesibilidad y el impacto de la app, mejorando la experiencia del usuario y facilitando el aprendizaje de manera inclusiva. Se desarrollo teniendo como base la version android studio y se desarrollo en Reat Native para lograr la implementacion multiplataforma, la app responde ahora a las necesidades de un público más amplio.',
          ),
          const ExperienceCard(
            title: 'Principal Desarrollador Movil',
            company: 'Proyecto Académico',
            duration: 'Agosto 2024 - Agosto 2024',
            description: 'Fui responsable del desarrollo una aplicación de tutorías llamada MiTu, pensada para implementarse en mi universidad. La app facilita la gestión y reserva de asesorías entre estudiantes y tutores, brindando una plataforma accesible para mejorar la experiencia educativa y optimizar la comunicación. Desarrollada en Android Studio con Kotlin y Firebase.',
          ),
          const ExperienceCard(
            title: 'Principal Desarrollador Movil',
            company: 'Proyecto Académico',
            duration: 'Septiembre 2023 - Diciembre 2023',
            description: 'Aplicación gratuita de generación y lectura de códigos QR para Institucion Educativa. Más de 200 usuarios registrados en el primer mes. Permite a estudiantes y docentes acceder a sus carnets digitales de forma rápida y segura. Desarrollada con Android Studio, Kotlin y Firebase.',
          ),
        ],
      ),
    );
  }
}
