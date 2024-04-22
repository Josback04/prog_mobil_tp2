import 'package:flutter/material.dart';

class EtudiantPage extends StatefulWidget {
  const EtudiantPage({super.key});

  @override
  State<EtudiantPage> createState() => _EtudiantPageState();
}

class _EtudiantPageState extends State<EtudiantPage> {
  final matriculeController = TextEditingController();
  final passwordController = TextEditingController();
  final nomController = TextEditingController();
  final prenomController = TextEditingController();
  final adresseController = TextEditingController();
  final contactController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Enregistrement Etudiant',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/upc logo.jpg'),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              const Text('Matricule'),
            ]),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: matriculeController,
              decoration: const InputDecoration(
                // hintText: 'example@gmail.com',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(children: [const Text('Nom')]),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                // hintText: 'Nom',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(children: [Text('Prenom')]),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(children: [Text('Promotion')]),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                // hintText: 'Promotion',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(children: [Text('Adresse')]),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                // hintText: 'Adresse',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(children: [Text('contact')]),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                // hintText: 'contact',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Row(children: [Text('Email')]),
            const SizedBox(
              height: 5,
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                // hintText: 'example@gmail.com',
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor),
                  child: const Text("S'inscrire",
                      style: TextStyle(color: Colors.black))),
            ),
            // const SizedBox(height: 20),
            // Text("Nom d'utilisateur ou mot de passe oublié ?",
            //     style: TextStyle(color: Theme.of(context).primaryColor)),
            // const Text("Vous n'avez pas un compte ?"),
            // const SizedBox(height: 10),
            // Text("Créez un compte",
            //     style: TextStyle(color: Theme.of(context).primaryColor)),
            // Text("Aide?",
            //     style: TextStyle(color: Theme.of(context).primaryColor)),
          ],
        ),
      ),
    ));
  }
}
