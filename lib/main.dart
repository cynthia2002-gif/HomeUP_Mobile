import 'package:flutter/material.dart';
import 'Login_page.dart';  // Importation de la page de connexion
import 'SignupPage.dart';  // Importation de la page d'inscription

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginPage(),  // Naviguer vers la page Login
        '/signup': (context) => const SignupPage(), // Naviguer vers la page Signup
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<double> _explodeAnimation;

  @override
  void initState() {
    super.initState();

    // Création du contrôleur d'animation
    _controller = AnimationController(
      duration: const Duration(seconds: 3), // Durée d'animation plus longue
      vsync: this,
    );

    // Animation de fondu (opacité)
    _fadeAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Animation de mise à l'échelle pour simuler l'explosion (agrandissement puis réduction)
    _scaleAnimation = Tween(begin: 0.5, end: 1.8).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Animation d'explosion (simuler une explosion par zoom avant)
    _explodeAnimation = Tween(begin: 0.0, end: 2.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    // Démarre l'animation
    _controller.forward();

    // Naviguer vers LoginPage après 2 secondes
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');  // Navigue vers la page Login
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Libère le contrôleur d'animation lorsque l'écran est détruit
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  // Fond blanc
      body: Center(
        child: FadeTransition( // Utilisation de FadeTransition pour l'effet de fondu
          opacity: _fadeAnimation,
          child: ScaleTransition( // Mise à l'échelle explosive du logo
            scale: _scaleAnimation,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.scale(
                  scale: _explodeAnimation.value,  // Effet d'explosion du logo
                  child: child,
                );
              },
              child: Image.asset(
                'assets/images/logo.png', // Affichage du logo
                width: 250,  // Taille ajustée
                height: 250,  // Taille ajustée
              ),
            ),
          ),
        ),
      ),
    );
  }
}
