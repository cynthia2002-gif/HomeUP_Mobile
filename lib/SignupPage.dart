import 'package:flutter/material.dart';
import 'Login_page.dart'; // Importation de la page LoginPage

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond blanc
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
                    width: 323.29, // Largeur du logo
                    height: 103.47, // Hauteur du logo
                  ),
                ),

                // Aucune espace entre le logo et la phrase (pas de SizedBox ici)
                // RichText pour colorier une partie du texte
                Padding(
                  padding: const EdgeInsets.only(top: 0), // Pas d'espace entre le logo et la phrase
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center, // Centrage du texte
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Inscrivez-vous et profitez de ',
                            style: TextStyle(
                              fontSize: 32, // Taille de police ajustée
                              fontFamily: 'Inter',
                              color: Colors.black, // Texte en noir
                              fontWeight: FontWeight.bold, // Gras
                            ),
                          ),
                          TextSpan(
                            text: 'toutes nos fonctionnalités.',
                            style: TextStyle(
                              fontSize: 32, // Taille de police ajustée
                              fontFamily: 'Inter',
                              color: Color(0xFF625DFA), // Texte en couleur personnalisée
                              fontWeight: FontWeight.bold, // Gras
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30), // Espacement après le texte

                // Champ pour l'adresse mail
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Adresse mail',
                    filled: true, // Active le fond coloré
                    fillColor: Colors.grey[200], // Fond gris clair
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Champ pour le mot de passe
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    filled: true, // Active le fond coloré
                    fillColor: Colors.grey[200], // Fond gris clair
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Champ pour le prénom
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Prénom',
                    filled: true, // Active le fond coloré
                    fillColor: Colors.grey[200], // Fond gris clair
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Champ pour le nom de famille
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Nom de famille',
                    filled: true, // Active le fond coloré
                    fillColor: Colors.grey[200], // Fond gris clair
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // Boutons de connexion (Apple, Google, Microsoft)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Bouton Apple
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
                            'assets/images/Apple.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),

                    // Bouton Google
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
                            'assets/images/Google.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),

                    // Bouton Microsoft
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
                            'assets/images/Microsoft.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Bouton d'inscription
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
                    'Inscrivez-vous',
                    style: TextStyle(color: Color(0xFF625DFA)),
                  ),
                ),

                const SizedBox(height: 20),

                // Lien vers la page de connexion
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Vous avez déjà un compte ?',
                      style: TextStyle(fontSize: 14),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Text(
                        'Connectez-vous',
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
