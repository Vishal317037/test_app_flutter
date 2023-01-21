import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testproject/widgets/drawer.dart';
import 'package:testproject/models/catalog_items.dart';
import 'package:testproject/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var jsonCatalog = await rootBundle.loadString("assets/files/catalog.json");
    //print (jsonCatalog);
    //var decodedData= jsonDecode(jsonCatalog);
    //print(decodedData);
    //var encodedData= jsonEncode(jsonCatalog);
    //print(encodedData);
    //var productsData= decodedData["products"];//we directly need all the data of products from catalog.json
    //print(productsData);
    var decodedData = jsonDecode(jsonCatalog);
    var productsData = decodedData["products"];
    //List<Item> list= List.from(productsData).map<Item>((item) => Item.fromJson(item)).toList();
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromJson(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(item: CatalogModel.items[index]);
                },
              )
            : Center(child: CircularProgressIndicator()),
      ),
      drawer: MyDrawer(),
    );
  }
}
