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
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Column(
          children: [
            Container(
              color: Colors.purple,
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Atendimento digital',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
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
                                              onPressed: () =>
                                                  Navigator.pop(context),
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
                                        children: [
                                          Text('Cooperativa: 9805 PA: 0')
                                        ],
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
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Colors.orange,
                                                          shape:
                                                              BoxShape.circle),
                                                )
                                              ],
                                            ),
                                            backgroundColor:
                                                const Color.fromARGB(
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
                    icon: const Icon(Icons.menu),
                    color: Colors.white,
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'PLAD',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const TabBar(tabs: [
              Tab(
                child: Badge(
                  child: Text('Em andamento'),
                  value: '10',
                ),
              ),
              Tab(
                child: Text('second tab'),
              )
            ]),
            Expanded(
                child: TabBarView(
              children: [
                Container(
                    child: Center(
                  child: Column(
                    children: [
                      AssistanceItem(
                          name: 'Anderson Andrade',
                          typeAssistance: 'Ativo',
                          origin: 'coopera')
                    ],
                  ),
                )),
                Container(
                  child: const Text(''),
                ),
              ],
            )),
            Container(
                height: 104,
                color: Colors.greenAccent,
                child: const Text('bottom'))
          ],
        )));
  }
}

class AssistanceItem extends StatelessWidget {
  final String name;
  final String typeAssistance;
  final String origin;

  AssistanceItem({
    Key? key,
    required this.name,
    required this.typeAssistance,
    required this.origin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Badge(
                    child: Text(name),
                    value: '2',
                  ),
                  Spacer(),
                  SizedBox(width: 8),
                  Text(typeAssistance),
                ],
              ),
              SizedBox(height: 16),
              Text(
                origin,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Badge extends StatelessWidget {
  final Widget child;
  final String value;
  final Color color;

  const Badge(
      {Key? Key,
      required this.child,
      required this.value,
      this.color = Colors.red})
      : super(key: Key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: -16,
          top: -16,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            constraints: const BoxConstraints(minWidth: 12, minHeight: 12),
            child: Center(
              child: Text(
                value,
                style: const TextStyle(color: Colors.white, fontSize: 9),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        )
      ],
    );
  }
}
