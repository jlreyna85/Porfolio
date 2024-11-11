import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tst/assets/icons/icons.dart';
import 'package:url_launcher/url_launcher.dart';



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
      home: PortfolioPage(),
    );
  }
}

// Función para abrir el correo en la aplicación de correo predeterminada
  void _launchEmail() async {
    // Dirección de correo electrónico para el contacto
    const email = 'mailto:jlreynaacosta@gmail.com?subject=Contacto&body=Hola, me gustaría contactar contigo.';
    if (await canLaunch(email)) {
      await launch(email);
    } else {
      throw 'No se pudo abrir el correo';
    }
  }

// Función para lanzar el URL de LinkedIn
  void _launchLinkedIn() async {
    // URL del perfil de LinkedIn
    const linkedInUrl = 'https://www.linkedin.com/in/firg28/';
    if (await canLaunch(linkedInUrl)) {
      await launch(linkedInUrl);
    } else {
      throw 'No se pudo abrir la URL: $linkedInUrl';
    }
  }  

class PortfolioPage extends StatelessWidget {
  PortfolioPage({super.key});

  // Crea el ScrollController para controlar el desplazamiento
  final ScrollController _scrollController = ScrollController();

  // Crea GlobalKeys para cada sección
  final GlobalKey _welcomeKey = GlobalKey();
  final GlobalKey _experienceKey = GlobalKey();
  final GlobalKey _projectsKey = GlobalKey();
  final GlobalKey _whoiamKey = GlobalKey();

  // Método para hacer scroll a una posición específica
  void _scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: const Color.fromARGB(10, 0, 0, 0),
          elevation: 0,
          actions: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => _scrollToSection(_experienceKey),
                    child: const Text(
                      'Experiencia',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () => _scrollToSection(_projectsKey),
                    child: const Text(
                      'Proyectos',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () => _scrollToSection(_whoiamKey),
                    child: const Text(
                      'Sobre mí',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: _launchEmail,
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
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección de Bienvenida
            WelcomeSection(key: _welcomeKey),
            // Sección de Experiencia
            ExperienceSection(key: _experienceKey),
            // Sección de Proyectos
            ProjectsSection(key: _projectsKey),
            // Sección de Sobre mí
            WhoiamSection(key: _whoiamKey),
          ],
        ),
      ),
    );
  }
}
class WelcomeSection extends StatelessWidget {
  const WelcomeSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: const Color.fromARGB(10, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            ClipOval(
            child: Image(
            image:AssetImage('assets/profile.jpg'),
            width:64,
            height: 64,
            fit: BoxFit.cover, ),),
            const SizedBox(width: 10),
            TextButton.icon(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: _launchLinkedIn,  // Llama la función para abrir LinkedIn
                label: const Text('Disponible para Trabajar', style: TextStyle(color: Colors.black87)),)
          ]),
          const Text(
            'Hey, Soy Firg28',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '+1 año de Experiencia Aprendiendo y desarrollando proyectos. Ingeniero en Sistemas Computacionales y desarrollador de software con experiencia en crear aplicaciones móviles y web.',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton.icon(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: _launchEmail, // Llama la función para abrir el correo
                icon: const Icon(Icons.email_outlined, color: Colors.black),
                label: const Text('Contactame', style: TextStyle(color: Colors.black87)),
              ),
              const SizedBox(width: 10),  // Espaciado entre botones
              TextButton.icon(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: _launchLinkedIn,  // Llama la función para abrir LinkedIn
                icon: const Icon(FontAwesome5.linkedin, color: Colors.black, size: 20),
                label: const Text('LinkedIn', style: TextStyle(color: Colors.black87)),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(10, 0, 0, 0),
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
            title: 'Principal Mobile Developer',
            company: '',
            duration: 'Septiembre 2023 - Diciembre 2023',
            description:
                'Fui responsable del desarrollo de una aplicación de generación y lectura de códigos QR, pensada para implementarse en mi universidad. La app permite mostrar el carnet de estudiantes y docentes registrados tras una lectura exitosa, mejorando la seguridad y facilitando la identificación digital en el campus. Desarrollada en Android Studio con Kotlin y Firebase.',
          ).animate().fadeIn(duration: 500.ms),
          ExperienceCard(
            title: 'Principal Mobile Developer',
            company: '',
            duration: 'Agosto 2024 - Agosto 2024',
            description:
                'Fui responsable del desarrollo una aplicación de tutorías llamada MiTu, pensada para implementarse en mi universidad. La app facilita la gestión y reserva de asesorías entre estudiantes y tutores, brindando una plataforma accesible para mejorar la experiencia educativa y optimizar la comunicación. Desarrollada en Android Studio con Kotlin y Firebase.',
          ).animate().fadeIn(duration: 500.ms),
          ExperienceCard(
            title: 'Principal Mobile Developer',
            company: '',
            duration: 'Agosto 2024 - Agosto 2024',
            description:
                'Fui el responsable de realizar la evolucion de la aplicacion MiTu hacia una solucion multiplataforma, permitiendo que estudiantes y tutores accedan desde cualquier dispositivo. Esta actualización amplió la accesibilidad y el impacto de la app, mejorando la experiencia del usuario y facilitando el aprendizaje de manera inclusiva. Se desarrollo teniendo como base la version android studio y se desarrollo en Reat Native para lograr la implementacion multiplataforma, la app responde ahora a las necesidades de un público más amplio.',
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

  const ExperienceCard({super.key, 
    required this.title,
    required this.company,
    required this.duration,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Bordes redondeados
      ),
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      color: Colors.white, // Fondo blanco para más contraste
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 22, 
                fontWeight: FontWeight.bold,
                color: Colors.black87,),
            ),
            const SizedBox(height: 4),
            Text(
              company,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,  
                color: Colors.grey[700]),
            ),
            const SizedBox(height: 2),
            Text(
              duration,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey[500]),
            ),
            const SizedBox(height: 12),
            Text(description,style: TextStyle(
              fontSize: 16,
                color: Colors.black87, // Texto principal con color oscuro
                height: 1.6, // Mejor legibilidad con mayor espacio entre líneas
                )),
          ],
        ),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(10, 0, 0, 0),
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
            as: 'Android Studio',
            ktl:'Kotlin',
            rn:'',
            ts:'',
            fb:'firebase',
            description: 'Aplicación gratuita de generación y lectura de códigos QR para Institucion Educativa. Más de 200 usuarios registrados en el primer mes. Permite a estudiantes y docentes acceder a sus carnets digitales de forma rápida y segura. Desarrollada con Android Studio, Kotlin y Firebase.',
            imageUrl: 'assets/myqr.png', // Asegúrate de agregar esta imagen en tus assets
          ),
          ProjectCard(
            title: 'MiTu',
            as: '',
            rn: 'React Native',
            ktl: '',
            ts:'TypeScript',
            fb:'firebase',
            description: 'Aplicación multiplataforma de tutorías, con más de 100 asesorías gestionadas en el primer mes. Facilita la conexión entre estudiantes y tutores, mejorando la calidad educativa. Desarrollada con Android Studio y actualizada para una experiencia multiplataforma Con React Native.',
            imageUrl: 'assets/mitu.png', // Asegúrate de agregar esta imagen en tus assets
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
  final String as;
  final String ts;
  final String fb;

  const ProjectCard({super.key, 
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.ktl,
    required this.rn,
    required this.as,
    required this.ts,
    required this.fb,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
  elevation: 6,
  shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Bordes redondeados
      ),
  margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
  color: Colors.white, // Fondo blanco para más contraste
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded( // Expande el área del contenido de texto
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  if (as.isNotEmpty) _buildIconButton(as, 'assets/icons/android.svg', const Color.fromARGB(150, 37, 116, 0), Colors.white),
                  if (ktl.isNotEmpty) _buildIconButton(ktl, 'assets/icons/kotlin.svg', const Color.fromARGB(150, 143, 74, 255), Colors.white),
                  if (rn.isNotEmpty) _buildIconButton(rn, 'assets/icons/react.svg', const Color.fromARGB(150, 88, 196, 220), Colors.white),
                  if (ts.isNotEmpty) _buildIconButton(ts, 'assets/icons/typescript.svg', const Color.fromARGB(150, 0, 63, 238), Colors.white),
                  if (fb.isNotEmpty) _buildIconButton(fb, 'assets/icons/firebase.svg', const Color.fromARGB(150, 206, 173, 63), Colors.white),
                ],
              ),
              const SizedBox(height: 8),
              Container(
              child:
              Text(
                description,
              style: TextStyle(fontSize: 16),),),
              const SizedBox(height: 10), // Añade un espaciado entre el texto y los iconos
              ClipRRect(
          borderRadius: BorderRadius.circular(10.0), // Ajusta el redondeo de la imagen
          child: Image.asset(
            imageUrl,
            width:400,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
            ],
          ),
        ),
      ],
    ),
  ),
);
  }

  Widget _buildIconButton(String label, String assetPath, Color backcolor, Color textcolor) {
  return Padding(
    padding: const EdgeInsets.all(2.0), // Espaciado alrededor del botón
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: backcolor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            assetPath,
            width: 16,
            height: 16,
          ),
          const SizedBox(width: 4), // Espacio entre el icono y el texto
          Text(
            label,
            style: TextStyle(color: textcolor, fontSize: 10),
          ),
        ],
      ),
    ),
  );
}
}

class WhoiamCard extends StatelessWidget {
  final String des1;
  final String des2;

  const WhoiamCard({super.key,
    required this.des1,
    required this.des2,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12), // Bordes redondeados
      ),
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      color: Colors.white, // Fondo blanco para más contraste
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 14),
            Text(des1,style: TextStyle(
              fontSize: 16,
                color: Colors.black87, // Texto principal con color oscuro
                height: 1.8, // Mejor legibilidad con mayor espacio entre líneas
                )
                ),
            const SizedBox(height: 14),
            Text(des2,style: TextStyle(
              fontSize: 16,
                color: Colors.black87, // Texto principal con color oscuro
                height: 1.8, // Mejor legibilidad con mayor espacio entre líneas
                )
                ),
          ],
        ),
      ),
    );
  }
}

class WhoiamSection extends StatelessWidget{
  const WhoiamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(40),
      color: const Color.fromARGB(10, 0, 0, 0),
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
          WhoiamCard(
            des1:'¡Hola! Soy Jose Luis pero mis amigos me llaman Firg, un apasionado ingeniero en sistemas computacionales y desarrollador de software. Desde mis primeros proyectos en la universidad, descubrí mi fascinación por el desarrollo de aplicaciones móviles y web, un mundo donde la creatividad y la tecnología se fusionan para resolver problemas y mejorar la experiencia de los usuarios.',
            des2:'Mi carrera profesional me ha permitido explorar y construir soluciones innovadoras en diversas plataformas, desde aplicaciones móviles en Android hasta desarrollos multiplataforma con React Native/Flutter. A lo largo de mi camino, he trabajado en proyectos que van desde aplicaciones de tutorías hasta herramientas para gestionar la información y mejorar la interacción en entornos educativos.',
          ).animate().fadeIn(duration: 500.ms),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}