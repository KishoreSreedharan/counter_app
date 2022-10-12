import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int currentIndex = 0;

  final pages = [
    const MyCounterPage1(),
    const MyCounterPage2(),
    const MyCounterPage3()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedFontSize: 28,
          unselectedFontSize: 20,
          unselectedItemColor: Colors.blueGrey,
          showUnselectedLabels: true,
          iconSize: 0,
          onTap: (index) => setState(() {
                currentIndex = index;
              }),
          items: const [
            BottomNavigationBarItem(
                label: "Counter 1",
                backgroundColor: Colors.greenAccent,
                icon: Icon(
                  Icons.countertops,
                )),
            BottomNavigationBarItem(
                label: "Counter 2",
                backgroundColor: Colors.redAccent,
                icon: Icon(
                  Icons.countertops,
                )),
            BottomNavigationBarItem(
                label: "Counter 3",
                backgroundColor: Colors.yellow,
                icon: Icon(
                  Icons.countertops,
                )),
          ]),
    );
  }
}

class MyCounterPage1 extends StatefulWidget {
  const MyCounterPage1({super.key});

  @override
  State<MyCounterPage1> createState() => _MyCounterPage1State();
}

class _MyCounterPage1State extends State<MyCounterPage1> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "COUNTER APP",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  count = 1;
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          height: he,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Counter $count',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              label: const Center(child: Text('Increment me!')),
              backgroundColor: Colors.greenAccent,
            )
          ]),
        ),
      ),
    );
  }
}

class MyCounterPage2 extends StatefulWidget {
  const MyCounterPage2({super.key});

  @override
  State<MyCounterPage2> createState() => _MyCounterPage2State();
}

class _MyCounterPage2State extends State<MyCounterPage2> {
  int count = 2;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          "COUNTER APP",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  count = 2;
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          height: he,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Counter $count',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              label: const Center(child: Text('Increment me!')),
              backgroundColor: Colors.redAccent,
            )
          ]),
        ),
      ),
    );
  }
}

class MyCounterPage3 extends StatefulWidget {
  const MyCounterPage3({super.key});

  @override
  State<MyCounterPage3> createState() => _MyCounterPage3State();
}

class _MyCounterPage3State extends State<MyCounterPage3> {
  int count = 3;
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          "COUNTER APP",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  count = 3;
                });
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          height: he,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              'Counter $count',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton.extended(
              onPressed: () {
                setState(() {
                  count = count + 1;
                });
              },
              label: const Center(child: Text('Increment me!')),
              backgroundColor: Colors.yellow,
            )
          ]),
        ),
      ),
    );
  }
}
