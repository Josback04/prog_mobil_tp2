import 'package:flutter/material.dart';
import 'package:prog_mobile_tp2/etudiant_page.dart';

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
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
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
          Row(children: [
            const Text('Email'),
          ]),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            controller: matriculeController,
            decoration: const InputDecoration(
              hintText: 'example@gmail.com',
              alignLabelWithHint: true,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(children: [const Text('Mot de passe')]),
          const SizedBox(
            height: 5,
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
          SizedBox(
            width: 250,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor),
                child: const Text('CONNECTEZ-VOUS',
                    style: TextStyle(color: Colors.black))),
          ),
          const SizedBox(height: 20),
          Text("Nom d'utilisateur ou mot de passe oublié ?",
              style: TextStyle(color: Theme.of(context).primaryColor)),
          const Text("Vous n'avez pas un compte ?"),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EtudiantPage()));
              },
              title: Text("Créez un compte",
                  style: TextStyle(color: Theme.of(context).primaryColor)),
            ),
          ),
          Text("Aide?",
              style: TextStyle(color: Theme.of(context).primaryColor)),
        ],
      ),
    ));
  }
}
