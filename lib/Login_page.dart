import 'package:flutter/material.dart';
import 'SignupPage.dart'; // Importation de la page Signup

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Met l'arrière-plan de la page en blanc
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo en haut avec un fond blanc
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  color: Colors.white, // Fond blanc autour du logo
                  child: Image.asset(
                    'assets/images/logo.png', // Chemin vers votre logo
                    height: 100, // Ajustez la hauteur du logo
                  ),
                ),

                // Espacement réduit avant le texte "Vous avez déjà un compte ? Connectez-vous."
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: RichText(
                    textAlign: TextAlign.center, // Centrer le texte
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Vous avez déjà un compte ? ',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'Inter',
                            color: Colors.black, // Texte en noir
                            fontWeight: FontWeight.bold, // Gras
                          ),
                        ),
                        TextSpan(
                          text: 'Connectez-Vous.',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'Inter',
                            color: Color(0xFF625DFA), // Texte en couleur personnalisée
                            fontWeight: FontWeight.bold, // Gras
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 30), // Espacement après le texte

                // Champ de texte pour l'adresse mail
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Adresse mail',
                    filled: true, // Active le fond coloré
                    fillColor: Colors.grey[100], // Fond gris clair
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Champ de texte pour le mot de passe
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    filled: true, // Active le fond coloré
                    fillColor: Colors.grey[100], // Fond gris clair
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                
                const SizedBox(height: 10),
                
                // Bouton "Mot de passe oublié"
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Action à définir pour le mot de passe oublié
                    },
                    child: const Text(
                      'Mot de passe oublié ?',
                      style: TextStyle (color: Color(0xFF625DFA)),
                    ),
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Remplacement des icônes par des images locales
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Remplacer l'icône Apple par une image
                    GestureDetector(
                      onTap: () {
                        print('Connexion avec Apple');
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/Apple.png', // Remplacez par le chemin vers votre image
                            width: 50, // Définissez la largeur de l'image
                            height: 50, // Définissez la hauteur de l'image
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    
                    // Remplacer l'icône Google par une image
                    GestureDetector(
                      onTap: () {
                        print('Connexion avec Google');
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/Google.png', // Remplacez par le chemin vers votre image
                            width: 50, // Définissez la largeur de l'image
                            height: 50, // Définissez la hauteur de l'image
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    
                    // Remplacer l'icône Microsoft par une image
                    GestureDetector(
                      onTap: () {
                        print('Connexion avec Microsoft');
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            'assets/images/Microsoft.png', // Remplacez par le chemin vers votre image
                            width: 50, // Définissez la largeur de l'image
                            height: 50, // Définissez la hauteur de l'image
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: 30),
                
                // Bouton de connexion
                ElevatedButton(
                  onPressed: () {
                    // Action pour la connexion
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Color(0xFF625DFA)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Connexion',
                    style: TextStyle(color: Color(0xFF625DFA)),
                  ),
                ),
                
                const SizedBox(height: 20),
                
                // Section pour rediriger vers la page d'inscription
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Vous n’avez pas encore de compte ?',
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        // Naviguer vers la page d'inscription SignupPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignupPage()), // Redirection vers SignupPage
                        );
                      },
                      child: const Text(
                        'Inscrivez-vous',
                        style: TextStyle(
                          color: Color(0xFF625DFA),
                    
                          decoration: TextDecoration.underline, // Souligner le texte
                          decorationColor: Color(0xFF625DFA), // Couleur du soulignement
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
