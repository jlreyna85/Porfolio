import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60), // Tamaño de la barra
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centrado de los botones
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Experiencia',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Proyectos',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sobre mí',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Contacto',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección de Bienvenida
            WelcomeSection(),
            // Sección de Experiencia
            ExperienceSection(),
            // Sección de Proyectos
            ProjectsSection(),
            // seccion de Sobre mí
            WhoiamSection(),
          ],
        ),
      ),
    );
  }
}

class WelcomeSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '¡Hola! Soy Jose Luis',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Ingeniero en Sistemas Computacionales y desarrollador de software con experiencia en crear aplicaciones móviles y web.',
            style: TextStyle(fontSize: 20),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start,
          children:[
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                ),
                onPressed: (){
                  print('here email');
                },
                icon: const Icon(Icons.email_outlined, color: Colors.tealAccent),
                label: const Text('Contactame', style:TextStyle(color: Colors.black)), ),
            TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white
                ),
                onPressed: (){
                  print('here LinkedIn');
                },
                icon: const Icon(Icons.link_off, color: Colors.tealAccent),
                label: const Text('LinkedIn', style: TextStyle(color: Colors.black)),
          ),
          ],)
          ],
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experiencia',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ExperienceCard(
            title: 'Desarrollador Movil',
            company: '',
            duration: 'Abril 2024 - Actualidad',
            description:
                'Trabajo en proyectos móviles y web utilizando Flutter/React Native',
          ).animate().fadeIn(duration: 500.ms),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final String title;
  final String company;
  final String duration;
  final String description;

  ExperienceCard({
    required this.title,
    required this.company,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              company,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            Text(
              duration,
              style: TextStyle(fontSize: 16, color: Colors.grey[500]),
            ),
            SizedBox(height: 10),
            Text(description),
          ],
        ),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Proyectos',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          ProjectCard(
            title: 'MyQR',
            ktl: 'Kotlin',
            rn:'',
            description: 'Aplicación móvil hecha en Kotlin.',
            imageUrl: 'assets/myqr.png', // Asegúrate de agregar esta imagen en tus assets
          ),
          ProjectCard(
            title: 'MiTu',
            rn: 'React Native',
            ktl: '',
            description: 'App de Asesorias.',
            imageUrl: '', // Asegúrate de agregar esta imagen en tus assets
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String ktl;
  final String rn;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ktl,
    required this.rn,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Text(description),
                Row(mainAxisAlignment: MainAxisAlignment.start,
          children:[
            if (ktl.isNotEmpty) _buildIconButton(ktl, Icons.code, const Color.fromARGB(255, 143, 74, 255),Colors.white, Colors.white),
            if (rn.isNotEmpty) _buildIconButton(rn, Icons.code, const Color.fromARGB(255,88, 196, 220), Colors.white, Colors.white),
              ],
            ),
          ],
        ),
        ClipRRect(borderRadius: BorderRadius.circular(20.0), // Ajusta el valor para más o menos redondeo
            child: Image.asset(
              imageUrl,
              width: 250,
              height: 250,
              fit: BoxFit.cover,
              ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(String label, IconData icon, Color backcolor, Color textcolor, Color iconcolor){
    return TextButton.icon(
      style: TextButton.styleFrom(backgroundColor: backcolor),
      onPressed: () {},
      icon: Icon(icon, color: iconcolor),
      label: Text(label, style: TextStyle(color: textcolor)),
    );
  }
}

class WhoiamSection extends StatelessWidget{
  const WhoiamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Sobre mí',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text('Me llamo Jose Luis, he creado algunos proyectos para mi universidad'),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}