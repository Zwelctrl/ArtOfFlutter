import 'package:flutter/material.dart';
import 'package:learn_flutter/image_search/service/apiService.dart';
import 'dart:convert';

enum Dogresult { loading, success, error, none }

class ImageSearchHomePage extends StatefulWidget {
  ImageSearchHomePage({Key? key}) : super(key: key);

  @override
  State<ImageSearchHomePage> createState() => _ImageSearchHomePageState();
}

class _ImageSearchHomePageState extends State<ImageSearchHomePage> {
  List<String> resultData = [];
  TextEditingController _controller = TextEditingController();

  Dogresult result = Dogresult.none;

  void searchData() {
    Future.delayed(Duration(seconds: 3), () {
      // result = Dogresult.success;
      try {
        APIservice.instance().aval?.DogName.firstWhere((element) {
          return element == _controller.text;
        });
        print(_controller.text);
        result = Dogresult.success;
      } catch (e) {
        result = Dogresult.error;
      }
    });
  }

  void setData(String text) {
    _controller.text = text;
    _focusNode.unfocus();
    resultData.clear();
    setState(() {});
  }

  bool searchState = false;

  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // print("Home Data is ${APIservice.instance().aval?.DogName}");
    return Scaffold(
      appBar: AppBar(
        title: searchState
            ? TextField(
                onEditingComplete: () {
                  resultData.clear();
                  _focusNode.unfocus();
                  searchData();
                  result = Dogresult.loading;

                  setState(() {});
                },
                focusNode: _focusNode,
                controller: _controller,
                onChanged: ((value) {
                  final List<String>? modelData =
                      APIservice.instance().aval?.DogName;

                  if (result != Dogresult.none) {
                    result = Dogresult.none;
                  }

                  resultData.clear();
                  if (value.isEmpty) {
                    setState(() {});
                    return;
                  }
                  if (modelData != null) {
                    resultData.addAll(modelData
                        .where((element) => element.contains(value))
                        .toList());
                  }
                  setState(() {});
                }))
            : null,
        actions: [
          if (!searchState)
            IconButton(
                onPressed: () {
                  print(searchState);
                  searchState = !searchState;
                  _focusNode.requestFocus();
                  setState(() {});
                },
                icon: Icon(Icons.search))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (result == Dogresult.loading) ...[
              Center(
                child: CircularProgressIndicator(),
              )
            ] else if (result == Dogresult.none) ...[
              if (resultData.isNotEmpty)
                Expanded(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      child: ListView.builder(
                          itemCount: resultData.length,
                          itemBuilder: (context, index) => InkWell(
                                onTap: () {
                                  //Todo
                                  setData(resultData[index]);
                                },
                                child: Container(
                                  // color: Colors.red,
                                  margin: EdgeInsets.only(top: 10),
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(resultData[index]),
                                  width: MediaQuery.of(context).size.width,
                                  height: 45,
                                ),
                              ))),
                ),
              // Center(
              //   child: ElevatedButton(
              //       onPressed: () {
              //         searchState = !searchState;
              //         setState(() {});
              //       },
              //       child: Text('Switch')),
              // )
            ] else if (result == Dogresult.success) ...[
              Center(child: Text('Success')),
            ] else if (result == Dogresult.error) ...[
              Center(
                child: Text('Error'),
              )
            ]
            // TextField(
            //     onEditingComplete: () {
            //       resultData.clear();
            //       _focusNode.unfocus();
            //       setState(() {});
            //     },
            //     focusNode: _focusNode,
            //     controller: _controller,
            //     onChanged: ((value) {
            //       final List<String>? modelData =
            //           APIservice.instance().aval?.DogName;

            //       resultData.clear();
            //       if (value.isEmpty) {
            //         setState(() {});
            //         return;
            //       }
            //       if (modelData != null) {
            //         resultData.addAll(modelData
            //             .where((element) => element.contains(value))
            //             .toList());
            //       }
            //       setState(() {});
            //     })),
            // ElevatedButton(onPressed: setData, child: Text('Set')),
          ],
        ),
      ),
    );
  }
}
