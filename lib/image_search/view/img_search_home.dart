import 'package:flutter/material.dart';
import 'package:learn_flutter/image_search/service/apiService.dart';

class ImageSearchHomePage extends StatefulWidget {
  ImageSearchHomePage({Key? key}) : super(key: key);

  @override
  State<ImageSearchHomePage> createState() => _ImageSearchHomePageState();
}

class _ImageSearchHomePageState extends State<ImageSearchHomePage> {
  List<String> resultData = [];
  @override
  Widget build(BuildContext context) {
    // print("Home Data is ${APIservice.instance().aval}"); > null
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (e) {
                final List<String>? fromServer =
                    APIservice.instance().aval?.DogName;
                final List<String>? displayData = fromServer
                    ?.where((element) => element
                        .toLowerCase()
                        .replaceAll(' ', '')
                        .contains(e.toLowerCase().replaceAll(' ', '')))
                    .toList();
                resultData.clear();
                if (displayData?.isNotEmpty == true) {
                  resultData.addAll(displayData!);
                  setState(() {});
                }
              },
            ),
            for (String a in resultData) Text(a),
          ],
        ),
      ),
    );
  }
}
