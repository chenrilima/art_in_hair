import 'package:flutter/material.dart';

import 'hair_home.dart';

class HomePage extends StatefulWidget {
  static const String route = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Art in Hair'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('Next page'),
              onPressed: () => Navigator.of(context).pushNamed(HairHome.route),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RotationTransition(
                turns: const AlwaysStoppedAnimation(75 / 300),
                child: Container(
                  height: 130,
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                        30,
                      ),
                      bottomRight: Radius.circular(
                        30,
                      ),
                    ),
                    border: Border(
                      left: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      right: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      top: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  child: Center(
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(225 / 300),
                      child: Text(
                        'Quem Somos'.toUpperCase(),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 45,
              ),
              Container(
                height: 50,
                width: 130,
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 1,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                    right: BorderSide(
                      width: 1,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                    top: BorderSide(
                      width: 1,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                    bottom: BorderSide(
                      width: 1,
                      color: Colors.black,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                child: Center(
                  child: Text('Carreiras'.toUpperCase()),
                ),
              ),
              const SizedBox(
                width: 45,
              ),
              RotationTransition(
                turns: const AlwaysStoppedAnimation(75 / 300),
                child: Container(
                  height: 130,
                  width: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        30,
                      ),
                      topRight: Radius.circular(
                        30,
                      ),
                    ),
                    border: Border(
                      left: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      right: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      top: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.black,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  child: Center(
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(225 / 300),
                      child: Text(
                        'Valores'.toUpperCase(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
