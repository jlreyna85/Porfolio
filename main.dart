import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60), // Tamaño de la barra
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
            // Sección de Contacto
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
      padding: EdgeInsets.all(40),
      child: Column(
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
            imageUrl: '', // Asegúrate de agregar esta imagen en tus assets
            
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

  ProjectCard({
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
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),

            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.start,
          children:[
                TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white
                ),
                onPressed: (){
                },
                icon: const Icon(Icons.link_off, color: Colors.tealAccent),
                label: Text(
                  ktl,
                  style: TextStyle(color: Colors.black)
                )),
          TextButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white
                ),
                onPressed: (){
                },
                icon: const Icon(Icons.link_off, color: Colors.tealAccent),
                label: Text(
                  rn,
                  style: TextStyle(color: Colors.black)
                )),
              ],
            ),
                SizedBox(height: 10),
                Text(description),
          ],
        ),
          ],
        ),
      ),
    );
  }
}






class WhoiamSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
