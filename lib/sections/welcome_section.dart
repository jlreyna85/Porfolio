import 'package:flutter/material.dart';
import 'package:tst/assets/icons/icons.dart';
import '../utils/launch_utils.dart';

class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
            ClipOval(
                child: Image(
                  image:AssetImage('assets/profile.jpg'),
                  width:64,
                  height: 64,
                  fit: BoxFit.cover, ),),
            const SizedBox(width: 10),
            TextButton.icon(
                onPressed: _launchLinkedIn,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade50,
                  foregroundColor: Colors.green,
                  ),
                label: const Text('Disponible para trabajar'),
              ),
            ]
          ),
          const Text(
            'Hey, Soy Firg28',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            '+1 año de Experiencia Aprendiendo y desarrollando proyectos moviles . Soy un profesional que busca crear soluciones eficientes y personalizadas segun las necesidades del proyecto .'
            ,style: TextStyle(fontSize: 20)
            ),
          const SizedBox(height: 20),
          Wrap(
            runSpacing: 8.0,
            children: [
              TextButton.icon(
                onPressed: _launchEmail,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade50,
                  foregroundColor: Colors.green,
                  ),
                icon: const Icon(Icons.email),
                label: const Text('Contáctame'),
              ),
              const SizedBox(width: 16), // Espaciado entre botones
              TextButton.icon(
                onPressed: _launchLinkedIn,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade50,
                  foregroundColor: Colors.green,
                  ),
                icon: const Icon(FontAwesome.linkedin),
                label: const Text('LinkedIn'),
              ),
              const SizedBox(width: 16), // Espaciado entre botones
              TextButton.icon(
                onPressed: _launchGithub,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue.shade50,
                  foregroundColor: Colors.green,
                  ),
                icon: const Icon(FontAwesome.github),
                label: const Text('Github'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void _launchEmail() {
  // Llama al método para enviar correos desde launch_utils
  LaunchUtils.launchEmail('jlreynaacosta@gmail.com', subject: 'Consulta desde el portafolio');
}

void _launchLinkedIn() {
  // Llama al método para abrir LinkedIn desde launch_utils
  LaunchUtils.launchURL('https://www.linkedin.com/in/firg28/');
}

void _launchGithub(){
  LaunchUtils.launchURL('https://github.com/jlreyna85');
}
