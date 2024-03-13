import 'package:flutter/material.dart';

class Menu_items extends StatelessWidget {
  const Menu_items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      RoundedContainer(
                        imagePath: 'assets/Design sans titre.jpg',
                        text: 'ALL',
                        onPressed: () {
                          Navigator.pushNamed(context, '/Menu');
                        },
                      ),
                      RoundedContainer(
                        imagePath: 'assets/1.jpg',
                        text: 'Robe',
                        onPressed: () {},
                      ),
                      RoundedContainer(
                        imagePath: 'assets/2.jpg',
                        text: 'lunette',
                        onPressed: () {},
                      ),
                      RoundedContainer(
                        imagePath: 'assets/5.jpg',
                        text: 'Talon',
                        onPressed: () {},
                      ),
                      RoundedContainer(
                        imagePath: 'assets/4.jpg',
                        text: 'Sac a mains',
                        onPressed: () {},
                      ),
                      RoundedContainer(
                        imagePath: 'assets/6.jpg',
                        text: 'T-shirt',
                        onPressed: () {},
                      ),
                      // Ajoutez d'autres instances de RoundedContainer ici si nécessaire
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              RectangleContainer(
                imagePath: 'assets/1.jpg',
                text: '45% DE OFF /n on All article',
                onPressed: () {
                  // Action à effectuer lorsque le bouton est pressé
                },
              ),
              SizedBox(height: 20,),
              Text(
                'A la une ',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(height: 20),
                    RectangleContainerItems(
                      imagePath: 'assets/10.jpg',
                      text: ' Pantalon prix: 500€',
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    RectangleContainerItems(
                      imagePath: 'assets/9.jpg',
                      text: 'Prix: 500€',
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    RectangleContainerItems(
                      imagePath: 'assets/8.jpg',
                      text: 'Prix: 500€',
                      onPressed: () {},
                    ),
                    SizedBox(height: 20),
                    RectangleContainerItems(
                      imagePath: 'assets/7.jpg',
                      text: 'Prix: 500€',
                      onPressed: () {},
                    ),
                                        SizedBox(height: 20),

                    RectangleContainerItems(
                      imagePath: 'assets/7.jpg',
                      text: 'Prix: 500€',
                      onPressed: () {},
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Accueil',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'Panier',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profil',
      ),
    ],
    onTap: (int index){
     if (index== 1){
      Navigator.pushNamed(context, '/Panier');
     }
    },
    // Vous pouvez ajouter d'autres propriétés ici selon vos besoins
  ),
);
    
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Rechercher...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}

class RoundedContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const RoundedContainer({Key? key, required this.imagePath, this.text = '', required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Utilisez la fonction de rappel fournie lorsque le RoundedContainer est cliqué
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imagePath),
            ),
            SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RectangleContainer extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const RectangleContainer({Key? key, required this.imagePath, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}

class RectangleContainerItems extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback onPressed;

  const RectangleContainerItems({Key? key, required this.imagePath, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
