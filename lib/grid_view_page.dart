import 'package:flutter/material.dart';
import 'package:untitled88/page_view.dart';

class GridViewPage extends StatefulWidget {
  static const String id = "grid_view";

  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, MyPageView.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          _itemsGridView("assets/images/11.jpeg", "Aziz"),
          _itemsGridView("assets/images/22.jpeg", "Muhri"),
          _itemsGridView("assets/images/33.jpeg", "Sultonov"),
          _itemsGridView("assets/images/44.jpeg", "Ruhiddin"),
          _itemsGridView("assets/images/11.jpeg", "Abdusattor"),
          _itemsGridView("assets/images/22.jpeg", "Zamon"),
          _itemsGridView("assets/images/33.jpeg", "Diyor"),
          _itemsGridView("assets/images/44.jpeg", "Karim"),
          _itemsGridView("assets/images/11.jpeg", "Xushnur"),
          _itemsGridView("assets/images/22.jpeg", "Sardor"),
        ],
      ),
    );
  }

  Widget _itemsGridView(picture, name) {
    return Container(
      color: Colors.green,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(picture),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
