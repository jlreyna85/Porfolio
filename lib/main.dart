import 'package:flutter/material.dart';
import 'sections/welcome_section.dart';
import 'sections/experience_section.dart';
import 'sections/projects_section.dart';
//import 'sections/skills_section.dart';
import 'utils/launch_utils.dart';

void main() {
  runApp(const MyPortfolio());
}

void _launchEmail() {
  // Llama al método para enviar correos desde launch_utils
  LaunchUtils.launchEmail('jlreynaacosta@gmail.com', subject: 'Consulta desde el portafolio');
}

// Método para hacer scroll a una posición específica
void _scrollToSection(GlobalKey key) {
  Scrollable.ensureVisible(
    key.currentContext!,
    duration: const Duration(seconds: 1),
    curve: Curves.easeInOut,
  );
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    // Crea GlobalKeys para cada sección
    final GlobalKey welcomeKey = GlobalKey();
    final GlobalKey experienceKey = GlobalKey();
    final GlobalKey projectsKey = GlobalKey();
    //final GlobalKey skillsKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade50,
        elevation: 0,
        actions: [
          Expanded(
            child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () => _scrollToSection(welcomeKey),
                style: TextButton.styleFrom(),
                child: const Text(
                  'Bienvenida',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              //TextButton(onPressed: () => _scrollToSection(skillsKey),style: TextButton.styleFrom(),child: const Text('Habilidades',style: TextStyle(color: Colors.black),),),
              TextButton(
                onPressed: () => _scrollToSection(experienceKey),
                style: TextButton.styleFrom(),
                child: const Text(
                  'Experiencia',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () => _scrollToSection(projectsKey),
                style: TextButton.styleFrom(),
                child: const Text(
                  'Proyectos',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: _launchEmail,
                style: TextButton.styleFrom(
                  ),
                child: const Text(
                  'Contacto',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeSection(key: welcomeKey),
            //SkillsSection(key: skillsKey),
            ExperienceSection(key: experienceKey),
            ProjectsSection(key: projectsKey),
          ],
        ),
      ),
    );
  }
}
