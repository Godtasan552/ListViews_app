import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:list_view_app/ListGallery.dart';
import 'package:list_view_app/main.dart';
import 'package:list_view_app/gallery.dart';


class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Gallery'),
            onTap: () {
              Navigator.pop(context);
              Get.to(Gallery());
            },
          ),
          ListTile(
            title: const Text('Products'),
            onTap: () {
              Navigator.pop(context);
              Get.to(const Listgallery());
            },
          ),
        ],
      ),
    );
  }
}
