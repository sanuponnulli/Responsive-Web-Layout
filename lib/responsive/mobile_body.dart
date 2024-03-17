import 'package:flutter/material.dart';
import 'package:responsiveweb/responsive/sidemenu.dart';

class MyMobileBody extends StatefulWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  State<MyMobileBody> createState() => _MyMobileBodyState();
}

class _MyMobileBodyState extends State<MyMobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 79, 79, 79),
      appBar: AppBar(
        title: const Text('M O B I L E'),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Scaffold.of(context).openDrawer();
        //         Scaffold.of(context).openEndDrawer();
        //       },
        //       icon: const Icon(Icons.menu))
        // ],
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // youtube video
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: const Color.fromARGB(255, 57, 50, 70),
                ),
              ),
            ),

            // comment section & recommended videos
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: const Color.fromARGB(255, 46, 43, 50),
                      height: 120,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
