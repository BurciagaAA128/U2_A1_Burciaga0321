import 'package:flutter/material.dart';
import 'package:burciaga0321/pantallas0321/panel0321/item_menu0321.dart';

class PanelPantalla0321 extends StatelessWidget {
  const PanelPantalla0321({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff921515),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/BurciagaAA128/Img_IOS/main/pocketsIcono.jpg"),
            ),
          )
        ],
        title: const Text('Pockets Burciaga 0321',
            style: TextStyle(color: Color(0xffffffff))),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5)
                ]),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Buscar...",
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff921515),
                ),
              ),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://raw.githubusercontent.com/BurciagaAA128/Img_IOS/main/eslogan.jpg"),
              ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          ListTile(
            title: Text("Menú"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
              child: GridView.count(
            padding: EdgeInsets.all(15),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 15,
            children: [for (int i = 1; i <= 10; i++) const ItemMenu()],
          ))
        ],
      ),
    );
  }
}
