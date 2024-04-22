import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final matriculeController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(
            'Connexion',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/upc logo.jpg'),
          const SizedBox(
            height: 20,
          ),
          const Text('Matricule'),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: matriculeController,
            decoration: const InputDecoration(
              hintText: 'SI007210',
              alignLabelWithHint: true,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text('Mot de passe'),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                hintText: '******',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                suffixIcon: Icon(Icons.visibility_off)),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(),
              child: const Text('CONNECTEZ-VOUS')),
          const SizedBox(height: 10),
          const Text("Nom d'utilisateur ou mot de passe oublié ?",
              style: TextStyle(color: Colors.orange)),
          const Text("Vous n'avez pas un compte ?"),
          const SizedBox(height: 10),
          const Text("Créez un compte", style: TextStyle(color: Colors.orange)),
          const Text("Aide?", style: TextStyle(color: Colors.orange)),
        ],
      ),
    );
  }
}
