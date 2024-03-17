import 'package:flutter/material.dart';
import 'package:responsiveweb/responsive/sidemenu.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 53, 63),
      appBar: AppBar(
        title: const Text('D E S K T O P'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            // First column
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // youtube video
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          color: const Color.fromARGB(255, 70, 63, 82),
                        ),
                      ),
                    ),

                    // comment section & recommended videos
                    ...List<Widget>.generate(
                      8,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: const Color.fromARGB(255, 34, 31, 39),
                            height: 120,
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),

            // second column
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SideMenu(),
            )
          ],
        ),
      ),
    );
  }
}
