import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('Wallapix',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child:
                  const Center(child: Text('1250', style: TextStyle(fontSize: 18))),
            ),
            const SizedBox(height: 10),
            const Text(
              'New Release',
              style: TextStyle(fontSize: 24),
            ),
            const Text('Give your screen a makeover!'),
            const SizedBox(height: 10),
            // Catergory chips for All, Free, Pro, and filter icon
            Wrap(
              spacing: 10,
              children: [
                Chip(
                  side: BorderSide.none,
                  label: const Text('All'),
                  backgroundColor: Colors.deepPurple.shade50,
                ),
                Chip(
                  side: BorderSide.none,
                  label: const Text('Free'),
                  backgroundColor: Colors.deepPurple.shade50,
                ),
                Chip(
                  side: BorderSide.none,
                  label: const Text('Pro'),
                  backgroundColor: Colors.deepPurple.shade50,
                ),
                Chip(
                  side: BorderSide.none,
                  label: const Icon(Icons.filter_alt_outlined),
                  backgroundColor: Colors.deepPurple.shade50,
                ),
              ],
            ),
            const SizedBox(height: 30),

            // Scrollable GridView for images in 2 columns
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/wallpapers${index + 1}.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton with text
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text('Upload'),
        icon: const Icon(Icons.add),
        elevation: 0,
      ),
    );
  }
}
