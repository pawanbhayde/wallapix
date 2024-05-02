import 'package:flutter/material.dart';
import 'package:wallapix/pages/collectionpage.dart';
import 'package:wallapix/pages/communitypage.dart';
import 'package:wallapix/pages/favouritepage.dart';
import 'package:wallapix/pages/homepage.dart';

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.public),
            label: 'Community',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.collections),
            label: 'Collection',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'favorites',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        const CommunityPage(),

        /// Notifications page
        const HomePage(),

        /// Messages page
        const CollectionPage(),

        ///Favorites page
        const FavouritePage(),
      ][currentPageIndex],
    );
  }
}
