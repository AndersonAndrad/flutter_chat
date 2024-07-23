import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atendimento digital'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                          height: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(28),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Row(
                                  children: [
                                    const Text(
                                      'Anderson Andrade Silva',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () => Navigator.pop(context),
                                        icon: const Icon(Icons.close))
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(Icons.star_rate_outlined),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '(2 avaliações)',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w300),
                                      )
                                    ]),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      'anderson_andrade_@outlook.com',
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                const Row(
                                  children: [Text('Cooperativa: 9805 PA: 0')],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Chip(
                                      label: Row(
                                        children: [
                                          const Text(
                                            'Indisponível',
                                            style: TextStyle(
                                                color: Colors.deepOrange),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            width: 10,
                                            height: 10,
                                            decoration: const BoxDecoration(
                                                color: Colors.orange,
                                                shape: BoxShape.circle),
                                          )
                                        ],
                                      ),
                                      backgroundColor: const Color.fromARGB(
                                          255, 253, 227, 187),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          side: const BorderSide(
                                              color: Colors.transparent)),
                                    ),
                                    const Spacer(),
                                    const Text(
                                      '6 de jul. 28m 35s',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w200),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ));
                    });
              },
              icon: const Icon(Icons.menu))
        ],
      ),
      body: Container(),
    );
  }
}
