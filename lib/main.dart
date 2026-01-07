import 'package:flutter/material.dart';

class MonApp extends StatelessWidget {
  const MonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magazine Infos",
      home: const PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 243, 57, 178),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/images/f1.jpg'),
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          PartieTitre(),
          PartieTexte(),
          PartieIcon(),
          PartieRubrique()
        ],
      )
    );
  }
}

class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(
            "Bienvenue au magazine formula1",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "Formule1, vitesse, technologie et pilotes d’exception.",
            style: TextStyle(
              fontSize: 15,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "La Formule 1 est le championnat automobile le plus prestigieux, "
        "combinant vitesse spectaculaire, technologie de pointe et pilotes d’exception. "
        "Chaque course demande stratégie, précision et courage, captivant des millions de fans "
        "sur des circuits célèbres à travers le monde.",
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class PartieIcon extends StatelessWidget {
  const PartieIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.pink,),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "TEL",
                  style: TextStyle(color: Colors.pink,),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.pink,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "E-MAIL",
                  style: TextStyle(color: Colors.pink,),
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.pink,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "PARTAGE",
                  style: TextStyle(color: Colors.pink,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/f1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/f1.jpg',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MonApp());
}
